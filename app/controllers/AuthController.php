<?php


class AuthController extends \Phalcon\Mvc\Controller
{

    public function onConstruct()
    {
        $this->steam = new SteamAuth();
    }

    public function logoutAction()
    {
        $this->session->destroy();
        $this->cookies->get("remember_token")->delete();
        return $this->response->redirect($this->request->getHTTPReferer());
    }


    public function vkAction()
    {
        if (is_null($this->request->get('code'))) return $this->response->redirect('https://oauth.vk.com/authorize?client_id=' . $this->cfg->client_id . '&display=page&redirect_uri=http://' . $this->request->getHttpHost() . '/login/vk&scope=friends,photos,status,offline,&response_type=code&v=5.62');
        $obj = json_decode($this->curl('https://oauth.vk.com/access_token?client_id=' . $this->cfg->client_id . '&client_secret=' . $this->cfg->client_secret . '&redirect_uri=http://' . $this->request->getHttpHost() . '/login/vk&code=' . $this->request->get('code')));
        if (isset($obj->error)) return $this->response->redirect('/login/vk');
        if (isset($obj->access_token)) {

            $info = json_decode($this->curl('https://api.vk.com/method/users.get?user_ids=' . $obj->user_id . '&fields=photo_200&access_token=' . $obj->access_token . '&v=5.62'));
            $user = Users::findFirst("userid = " . $info->response[0]->id);
            $remember_token =  $this->security->hash($this->random->hex(10).$info->response[0]->id);

            if ($user !== false) {

                $user->save(['username' => $info->response[0]->first_name . ' ' . $info->response[0]->last_name, 'avatar' => "/files/" . basename($info->response[0]->photo_200), 'remember_token' => $remember_token]);


            } else {

                $user = new Users();

                $user->save([
                    'username' => $info->response[0]->first_name . ' ' . $info->response[0]->last_name, 'avatar' => "/files/" . basename($info->response[0]->photo_200),
                    'userid' => $info->response[0]->id, 'remember_token' => $remember_token
                ]);
                $this->redis->set('stats', json_encode(['users' => Users::count(), 'games' => Games::count()]));
            }

            file_put_contents("files/" . basename($info->response[0]->photo_200), file_get_contents($info->response[0]->photo_200));
            $this->cookies->set("remember_token", $remember_token, time() + 15 * 3650000);
            $this->cache->delete('user_' . $user->userid);
            return $this->response->redirect($this->request->getHTTPReferer());
        }


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

    public function steamAction()
    {

        if ($this->steam->validate()) {
            $info = $this->steam->getUserInfo();
            $user = Users::findFirst("userid = " . $info["steamid"]);
            $remember_token =  $this->security->hash($this->random->hex(10).$info["steamid"]);

            if ($user !== false) {

                $user->save(['username' => $this->xss->escapeHtml($this->link_filter($info["personaname"]))
                    , 'avatar' => "/files/" . basename($info["avatarfull"]), 'remember_token' => $remember_token]);


            } else {

                $user = new Users();

                $user->save([
                    'username' => $this->xss->escapeHtml($this->link_filter($info["personaname"])),
                    'avatar' => "/files/" . basename($info["avatarfull"]),
                    'userid' => $info["steamid"], 'remember_token' => $remember_token

                ]);
                $this->redis->set('stats', json_encode(['users' => Users::count(), 'games' => Games::count()]));
            }

            file_put_contents("files/" . basename($info["avatarfull"]), file_get_contents($info["avatarfull"]));
            $this->cookies->set("remember_token", $remember_token, time() + 15 * 3650000);
            $this->cache->delete('user_' . $user->userid);
            return $this->response->redirect($this->request->getHTTPReferer());
        }
        return $this->steam->redirect();


    }

    public function link_filter($str)
    {
        $str = preg_replace('/cs(.*)(?!\ )(.*)(\.|\:)(com|ua|ru|org|net|one|us|biz)/Usi', ' ' . strtoupper($_SERVER['HTTP_HOST']), $str);
        return htmlspecialchars($str);
    }

    public function save_linkAction()
    {
        if ($token = $this->_parseTradeLink($link = $this->request->getPost('trade_link'))) {
            $this->user->trade = $link;
            $this->user->token = $token[0];
            $this->user->partner = $token[1];
            $this->cache->delete('user_' . $this->user->userid);
            if ($this->user->save() !== false) return $this->response->setJsonContent((['msg' => '<div><div><strong>Ссылка успешно сохранена.</strong><br>Не забудьте открыть свой инвентарь в настройках steam!</div></div>', 'status' => 'success']));
        }
        return $this->response->setJsonContent((['msg' => '<div><div><strong>Ошибка</strong><br>Введите корректную ссылку обмена!</div></div>', 'status' => 'error']));
    }

    private function _parseTradeLink($tradeLink)
    {
        $query_str = parse_url($tradeLink, PHP_URL_QUERY);
        parse_str($query_str, $query_params);
        return isset($query_params['token'], $query_params['partner']) ? [$query_params['token'], $query_params['partner']] : false;
    }


}

