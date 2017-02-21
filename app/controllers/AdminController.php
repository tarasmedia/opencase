<?php

use Phalcon\Mvc\View;


class AdminController extends \Phalcon\Mvc\Controller
{

    public function initialize()
    {
        $this->view->setRenderLevel(View::LEVEL_LAYOUT)->setLayout('admin');
    }


    public function indexAction()
    {
        if ($this->request->get('type') === 'clearcache') {
            $keys = $this->cache->queryKeys();
            foreach ($keys as $key) {
                $this->cache->delete(str_replace('cache', '', $key));
            }
            $this->flashSession->success('Кэш очищен!');
            return $this->response->redirect('/admin');
        }
        $this->view->pick('admin/index');
    }

    public function usersAction()
    {
        $users = Users::find();
        $this->view->setVars(['users' => $users]);
        $this->view->pick('admin/users/index');
    }

    public function userAction($id)
    {
        $user = Users::findfirst($id);
        if ($this->request->isPost()) {

            $user->save(['group' => $this->request->getPost('group'), 'money' => $this->request->getPost('money')]);

            $this->flashSession->success('Пользователь '.$user->username.' сохранён!');
            return $this->response->redirect('/admin/users');
        }
        $this->view->setVars(['profile' => $user]);
        $this->view->pick('admin/users/user');
    }

    public function caseAction()
    {
        $case = Casegame::find();
        $this->view->setVars(['case' => $case]);
        $this->view->pick('admin/case/index');
    }

    public function caseurlAction($id)
    {
        if ($this->request->isPost()) {
            if ($id != 0) {
                $case = Casegame::findFirst($id);
                $flname = $case->images;
            } else $case = new Casegame();

            // Проверяем что файл загрузился
            if ($this->request->hasFiles()) {
                $files = $this->request->getUploadedFiles();

                // Выводим имя и размер файла
                foreach ($files as $file) {
                    // Выводим детали

                    if (!empty($file->getName())) {

                        $flname = "/files/" . $file->getName();

                        // Перемещаем в приложение
                        $file->moveTo(
                            "files/" . $file->getName()
                        );
                    }

                }
            }


            $case->save(['price' => $this->request->getPost('price'), 'percent' => $this->request->getPost('url'), 'url' => $this->request->getPost('url'),
                'name' => $this->request->getPost('name'), 'images' => $flname, 'type' => $this->request->getPost('type'), 'items' => json_encode($this->request->getPost('items'))]);

            if ($case->id === null) {
                $messages = $case->getMessages();
                foreach ($messages as $message) {
                    $this->flashSession->error('Вы не заполнили поле ' . str_replace('is required', '', $message));
                }
                return $this->response->redirect('/admin/case');
            }

            $this->cache->delete('case_' . $case->url);
            $this->cache->delete('case');
            $this->flashSession->success("Кейс сохранён!");
            return $this->response->redirect('/admin/case');
        }
        $case = Casegame::findfirst($id);

        $items = Items::find(['order' => 'rar']);
        $this->view->setVars(['case' => $case, 'items' => $items]);
        $this->view->pick('admin/case/case');
    }


    public function promoAction()
    {
        if ($this->request->get('s') === 'del') {
            $promo = Promo::findfirst($this->request->get('id'));
            $promo->delete();
            $this->flashSession->success('Промо-код ' . $promo->name . ' на сумму ' . $promo->price . 'Р удалён!');
            return $this->response->redirect('/admin/promo');
        }
        if ($this->request->isPost()) {
            $chars = '12345ABCDEFGHIJKLMNOPQRSTUVWXYZ67890';
            $hashpromo = '';
            for ($i = 0; $i < 20; ++$i) {
                $random = str_shuffle($chars);
                $hashpromo .= $random[0];
                if ($i == 4 || $i == 9 || $i == 14 || $i == 20) $hashpromo .= '-';
            }
            $promo = new Promo();
            $promo->name = $hashpromo;
            $promo->price = $this->request->getPost('price');
            $promo->save();
            if ($promo->id === null) {
                $messages = $promo->getMessages();
                foreach ($messages as $message) {
                    $this->flashSession->error('Вы не заполнили поле ' . str_replace('is required', '', $message));
                }
            } else {
                $this->flashSession->success('Промо-код ' . $hashpromo . ' на сумму ' . $promo->price . 'Р добавлен!');
            }
        }
        $promo = Promo::find();
        $this->view->setVars(['promo' => $promo]);
        $this->view->pick('admin/promo');
    }

    public function itemsAction()
    {
        $this->redis->set('price', $this->curl('https://api.csgofast.com/price/all'));
        if ($this->request->isPost()) {
            if ($this->request->get('s') === 'del') {
                //$item->delete();
                return $this->response->redirect('/admin/items');
            }
            if(empty($this->request->getPost('classid'))){
                $this->flashSession->error('Steam не доступен, или данной вещи нету в базе данных Steam!');
                return $this->response->redirect('/admin/items');
            }
            $item = new Items();
            $homepage = $this->curl('https://api.steampowered.com/ISteamEconomy/GetAssetClassInfo/v0001?key=' . $this->cfg->steam . '&language=ru&appid=730&class_count=1&classid0=' . $this->request->getPost('classid'));
            $json = json_decode($homepage)->result->{$this->request->getPost('classid')};
            if (Items::findfirst(["name_ru = :name:", "bind" => ['name' => $json->name]]) !== false) {
                $this->flashSession->error('Предмет '.$json->name.' уже в базе! Пожалуйста, остерегайтесь дубликатов!');
                return $this->response->redirect('/admin/items');
            }
            $item->rar = $this->getItemRarity($json->type);
            $item->classid = $this->request->getPost('classid');
            $item->name_ru = $json->name;
            $item->name_en = preg_replace('/\(.+?\)/', '', $json->market_hash_name);
            $item->price = $this->getbestprice($item->name_en);
            $item->save();
            if ($item->id === null) {
                $messages = $item->getMessages();
                foreach ($messages as $message) {
                    $this->flashSession->error('Вы не заполнили поле ' . str_replace('is required', '', $message));
                }
            } else {
                $this->flashSession->success('Предмет ' . $item->name_ru . ' на сумму ' . $item->price . 'Р добавлен!');
            }

        }
        $items = Items::find();
        $this->view->setVars(['items' => $items]);
        $this->view->pick('admin/items/index');
    }


    public function getbestprice($name)
    {
        $pricelist = json_decode($this->redis->get('price'));
        $price = 1000000;
        foreach ($pricelist as $key => $i) {
            if (strpos($key, $name) !== false and $i < $price) $price = $i;
        }
        return $price == 1000000 ? 0 : $price * $this->cfg->curs;
    }


    public function getItemRarity($info)
    {

        $type = $info;
        $rarity = '';
        $arr = explode(',', $type);
        if (count($arr) == 2) $type = trim($arr[1]);
        if (count($arr) == 3) $type = trim($arr[2]);
        if (count($arr) && $arr[0] == 'Нож') $type = '★';
        if (count($arr) && $arr[0] == 'Наклейка') $type = 'sticker';
        switch ($type) {
            case 'Армейское качество':
                $rarity = 'milspec';
                break;
            case 'Запрещенное':
                $rarity = 'restricted';
                break;
            case 'Засекреченное':
                $rarity = 'classified';
                break;
            case 'Тайное':
                $rarity = 'covert';
                break;
            case 'Ширпотреб':
                $rarity = 'common';
                break;
            case 'Промышленное качество':
                $rarity = 'common';
                break;
            case '★':
                $rarity = 'rare';
                break;
            case 'sticker':
                $rarity = 'sticker';
                break;
        }

        return $rarity;
    }


    public function curl($url)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        $output = curl_exec($ch);
        curl_close($ch);
        return $output;
    }


}

