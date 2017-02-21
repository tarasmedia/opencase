<?php



use Phalcon\Db\Column;

class PagesController extends \Phalcon\Mvc\Controller
{


    public function indexAction()
    {
        $case = $this->cache->get('case');
        if ($case === null) {
            $case = Casegame::find();
            $this->cache->save('case', $case);
        }
        $this->view->setVars(['case' => $case]);
        $this->view->pick('pages/index');
    }


    public function caseAction($url)
    {
        $case = $this->cache->get('case_' . $url);
        if ($case === null) {
            $case = Casegame::findfirst(['url = :url:', 'bind' => ['url' => $url], 'bindTypes' => ['url' => Column::BIND_PARAM_STR]]);
            if($case === false ) return  $this->route404Action();
            $items = [];
            foreach (json_decode($case->items) as $key => $i) {
                $item = Items::findfirst($i);
                $item->sort = $this->getItemRarity($item->rar);
                $items[] = $item;
                $param[$key] = $i->sort;
            }
            array_multisort($param, SORT_STRING, SORT_ASC, $items);
            $case->items = json_encode($items);
            $this->cache->save('case_' . $url, $case);
        }
        $winner = $this->cache->get('winner_' . $url);
        if ($winner === null) {
            $winner = $this->modelsManager->createBuilder()->from("Games")->where('Games.caseid = ' . $case->id)->join("Items", 'Items.id = Games.item')->join('Users', 'Users.id = Games.userid')
                ->columns(['Items.name_ru', 'Items.rar', 'Items.classid', 'Users.avatar', 'Users.username', 'Users.userid'])->orderBy("Games.id DESC")->limit(25)->getQuery()->execute();
            $this->cache->save('winner_' . $url, $winner);
        }
        $this->view->setVars(['case' => $case, 'case_winner' => $winner]);
        $this->view->pick('pages/case');
    }

    public function getItemRarity($info)
    {
        switch ($info) {
            case 'milspec':
                return 1;
            case 'restricted':
                return 2;
            case 'classified':
                return 3;
            case 'covert':
                return 4;
            case 'rare':
                return 6;
            default:
                return 0;
        }
    }

    public function userAction($id)
    {
        $profile = $this->cache->get('user_' . $id);
        if ($profile === null) {
            $profile = Users::findfirst(['userid = :id:', 'bind' => ['id' => $id], 'bindTypes' => ['id' => Column::BIND_PARAM_INT]]);
            if($profile === false ) return  $this->route404Action();
            $profile->items = $this->modelsManager->createBuilder()->from("Games")->join("Casegame", 'Casegame.id = Games.caseid')->where('Games.userid = ' . $profile->id)->join("Items", 'Items.id = Games.item')
                ->columns(['Items.name_ru', 'Items.rar', 'Items.classid', 'Games.price', 'Casegame.images', 'Games.status', 'Games.id'])->orderBy("Games.id DESC")->getQuery()->execute();
            $profile->sum = 0;
            foreach ($profile->items as $i) {
                $profile->sum += $i->price;
            }
            $this->cache->save('user_' . $id, json_encode([$profile, $profile->items, $profile->sum]));
        } else {
            $cache = json_decode($profile);
            $profile = $cache[0];
            $profile->items = $cache[1];
            $profile->sum = $cache[2];
        }
        $this->view->setVars(['profile' => $profile]);
        if ($profile->id == $this->user->id) $this->view->pick('pages/profile');
        else $this->view->pick('pages/user');
    }

    public function topAction()
    {
        $users = $this->cache->get('top');
        if ($users === null) {
            $sql = $this->modelsManager->createBuilder()->from("Users")->join('Games', 'Users.id = Games.userid')->join("Items", 'Items.id = Games.item')
                ->columns(['SUM(Games.price) as win', 'COUNT(Games.id) as games', 'Items.name_ru', 'Items.rar', 'Items.classid', 'Users.avatar', 'Users.username', 'Users.userid'])->groupBy("Users.userid")->orderBy("win DESC")->limit(15)->getQuery()->execute();
            $users = [];
            $place = 0;
            foreach ($sql as $i) {
                $place++;
                $i->place = $place;
                $users[] = $i;
            }
            $this->cache->save('top', $users);
        }
        $this->view->setVars(['users' => $users]);
        $this->view->pick('pages/top');
    }

    public function reviewsAction()
    {
        $this->view->pick('pages/reviews');
    }

    public function faqAction()
    {
        $this->view->pick('pages/faq');
    }

    public function route404Action()
    {

        $this->response->setStatusCode(404, 'Not Found');
        $this->view->pick('errors/404');
    }

}

