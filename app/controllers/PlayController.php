<?php

use Phalcon\Db\Column;

class PlayController extends \Phalcon\Mvc\Controller
{

    public function playAction()
    {
        $this->cache->delete('top');
        $this->cache->delete('user_' . $this->user->userid);
        if ($this->request->getPost('type') == 'sell') {
            $game = Games::findfirst(['id = :id:', 'bind' => ['id' => $this->request->getPost('order_id')], 'bindTypes' => ['id' => Column::BIND_PARAM_INT]]);
            if ($game->userid == $this->user->id and $game->status == 0) {
                $game->save(['status' => 1]);
                $this->user->save(['money' => $this->user->money + $game->price]);
                $case = Casegame::findfirst($game->caseid);
                $case->save(['profit' => $case->profit + $game->price]);
                return $this->response->setJsonContent(['status' => 'success', 'msg' => '<div><div><strong>Предмет продан</strong><br>На ваш счёт зачислено ' . $game->price . 'Р!</div></div>', 'balance' => $this->user->money]);
            }
            return $this->response->setJsonContent(['status' => 'error', 'msg' => 'Error']);
        }
        $case = Casegame::findfirst(['id = :id:', 'bind' => ['id' => $this->request->getPost('case')], 'bindTypes' => ['id' => Column::BIND_PARAM_INT]]);
        if ($this->user->money < $case->price) return $this->response->setJsonContent(['status' => 'error', 'msg' => '<div><div><strong>Ошибка</strong><br>Недостаточно средств!</div></div>']);
        if (is_null($this->user->trade)) return $this->response->setJsonContent(['status' => 'error', 'msg' => '<div><div><strong>Ошибка</strong><br>Введите ссылку на трейд!</div></div>']);
        $items = [];
        foreach (json_decode($case->items) as $i) {
            $item = Items::findfirst($i);
            if ($item->price == 0) continue;
            if (($case->price * 5 > $case->profit and $item->price > $case->price) || ($item->price > $case->price * 3 and $item->price < $case->price)) continue;
            $items[] = $item;
        }
        if(empty($itmes)) return $this->response->setJsonContent(['status' => 'error', 'msg' => '<div><div><strong>Ошибка</strong><br>В данный момент на ботах нет вещей для выбранного кейса. Попробуйте позже.</div></div>']);
        shuffle($items);
        $item = $items[0];
        $game = new Games();
        $game->save(['item' => $item->id, 'price' => $item->price, 'userid' => $this->user->id, 'caseid' => $case->id]);
        $this->user->save(['money' => $this->user->money - $case->price]);
        if ($case->price * 5 < $case->profit) $case->save(['profit' => 0]);
        $case->save(['profit' => $case->profit + $case->price]);
        $this->cache->delete('winner_' . $case->url);
        $this->cache->delete('winners');
        $this->redis->publish('winners', json_encode(['userid' => $this->user->userid, 'caseid' => $case->id, 'name' => $item->name_ru, 'images' => $case->images, 'rar' => $item->rar, 'price' => $item->price, 'classid' => $item->classid]));
        $this->redis->set('stats', json_encode(['users' => Users::count(), 'games' => Games::count()]));
        return $this->response->setJsonContent(['status' => 'success', 'id' => $game->id, 'balance' => $this->user->money, 'name' => $item->name_ru, 'rar' => $item->rar, 'price' => $item->price, 'classid' => $item->classid]);
    }


    public function promoAction()
    {
        $promo = Promo::findfirst(['name = :name:', 'bind' => ['name' => $this->request->getPost('name')], 'bindTypes' => ['name' => Column::BIND_PARAM_STR]]);
        if ($promo === false) return $this->response->setJsonContent(['status' => 'error', 'msg' => '<div><div><strong>Ошибка</strong><br>Код недействителен или уже был использован!</div></div>']);
        $this->user->save(['money' => $this->user->money + $promo->price]);
        $promo->delete();
        return $this->response->setJsonContent(['status' => 'success', 'msg' => '<div><div><strong>Код активирован</strong><br>На ваш счёт зачислено ' . $promo->price . 'Р!</div></div>', 'balance' => $this->user->money, 'price' => $promo->price]);
    }

}

