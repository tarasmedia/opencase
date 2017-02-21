<?php

use SteamInfo as SteamInfo;

class SteamAuth extends \Phalcon\Mvc\Controller
{

    /**
     * @var integer|null
     */
    public $steamId = null;
    /**
     * @var SteamInfo
     */
    public $steamInfo = null;
    /**
     * @var string
     */
    public $authUrl;

    /**
     * @var string
     */
    const OPENID_URL = 'https://steamcommunity.com/openid/login';
    /**
     * @var string
     */
    const STEAM_INFO_URL = 'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=%s&steamids=%s';

    public function onConstruct()
    {

        $this->authUrl = $this->buildUrl('http://' . $this->request->getHttpHost() . '/login/steam');


    }

    /**
     * Validates if the request object has required stream attributes.
     *
     * @return bool
     */
    private function requestIsValid()
    {
        return $this->request->isGet('openid_assoc_handle') && $this->request->isGet('openid_signed') && $this->request->isGet('openid_sig');
    }

    /**
     * Checks the steam login
     *
     * @return bool
     */
    public function validate()
    {
        if (!$this->requestIsValid()) {
            return false;
        }
        try {

            $get = $this->request->getQuery();
            $params = [
                'openid.assoc_handle' => $get['openid_assoc_handle'],
                'openid.signed' => $get['openid_signed'],
                'openid.sig' => $get['openid_sig'],
                'openid.ns' => 'http://specs.openid.net/auth/2.0',
            ];
            $signed = explode(',', $get['openid_signed']);
            foreach ($signed as $item) {
                $val = $get['openid_' . str_replace('.', '_', $item)];
                $params['openid.' . $item] = get_magic_quotes_gpc() ? stripslashes($val) : $val;
            }
            $params['openid.mode'] = 'check_authentication';
            $data = http_build_query($params);
            $context = stream_context_create(array(
                'http' => array(
                    'method' => 'POST',
                    'header' =>
                        "Accept-language: en\r\n" .
                        "Content-type: application/x-www-form-urlencoded\r\n" .
                        "Content-Length: " . strlen($data) . "\r\n",
                    'content' => $data,
                ),
            ));
            $result = file_get_contents(self::OPENID_URL, false, $context);
            preg_match("#^http://steamcommunity.com/openid/id/([0-9]{17,25})#", $get['openid_claimed_id'], $matches);
            $this->steamId = is_numeric($matches[1]) ? $matches[1] : 0;
            return (preg_match("#is_valid\s*:\s*true#i", $result) == 1 ? true : false);
        } catch (\Exception $e) {
            app('log')->error($e);
        }
    }

    /**
     * Validates a given URL, ensuring it contains the http or https URI Scheme
     *
     * @param string $url
     *
     * @return bool
     */
    private function validateUrl($url)
    {
        if (!filter_var($url, FILTER_VALIDATE_URL)) {
            return false;
        }
        return true;
    }

    /**
     * Build the Steam login URL
     *
     * @param string $return A custom return to URL
     *
     * @return string
     */
    private function buildUrl($return)
    {

        if (!is_null($return) && !$this->validateUrl($return)) {
            throw new Exception('The return URL must be a valid URL with a URI Scheme or http or https.');
        }
        $params = array(
            'openid.ns' => 'http://specs.openid.net/auth/2.0',
            'openid.mode' => 'checkid_setup',
            'openid.return_to' => $return,
            'openid.realm' => 'http://' . $this->request->getServer('HTTP_HOST'),
            'openid.identity' => 'http://specs.openid.net/auth/2.0/identifier_select',
            'openid.claimed_id' => 'http://specs.openid.net/auth/2.0/identifier_select',
        );
        return self::OPENID_URL . '?' . http_build_query($params, '', '&');
    }

    /**
     * Returns the redirect response to login
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function redirect()
    {
        return $this->response->redirect($this->getAuthUrl());
    }

    /**
     * Returns the login url
     *
     * @return string
     */
    public function getAuthUrl()
    {
        return $this->authUrl;
    }

    /**
     * Returns the SteamUser info
     *
     * @return SteamInfo
     */
    public function getUserInfo()
    {
        if (!is_null($this->steamId)) {
            $json = file_get_contents(sprintf(self::STEAM_INFO_URL, $this->cfg->steam, $this->steamId));
            $json = json_decode($json, true);
            $this->steamInfo = $json["response"]["players"][0];
        }
        return $this->steamInfo;
    }

    /**
     * Returns the steam id
     *
     * @return bool|string
     */
    public function getSteamId()
    {
        return $this->steamId;
    }


}