<?php

use Phalcon\Events\Manager as EventsManager;
use Phalcon\Flash\Session as FlashSession;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Mvc\Model\Metadata\Memory as MetaDataAdapter;
use Phalcon\Mvc\Url as UrlResolver;
use Phalcon\Mvc\View;
use Phalcon\Mvc\View\Engine\Php as PhpEngine;
use Phalcon\Mvc\View\Engine\Volt as VoltEngine;
use Phalcon\Session\Adapter\Files as SessionAdapter;
use Phalcon\Crypt;
use Phalcon\Http\Response\Cookies;
use Phalcon\Http\Request;
use Phalcon\Cache\Backend\Apc as ApcCache;
use Phalcon\Cache\Frontend\Data as DataFrontend;
use Phalcon\Mvc\Model\Manager as ModelsManager;
use Phalcon\Escaper;
use Phalcon\Db\Column;
use Phalcon\Security\Random;


$di->setShared('config', function () {
    return include APP_PATH . "/config/config.php";
});

$di->setShared('router', function () {
    return require APP_PATH . "/config/routes.php";
});

$di->setShared('url', function () {
    $config = $this->getConfig();

    $url = new UrlResolver();
    $url->setBaseUri($config->application->baseUri);

    return $url;
});


$di->setShared('view', function () {
    $config = $this->getConfig();

    $view = new View();
    $view->setDI($this);
    $view->setViewsDir($config->application->viewsDir);
    if ($this->get("user") !== false) $view->user = $this->get("user");
    $view->winners = $this->get("winners");
    $view->registerEngines([
        '.volt' => function ($view) {
            $config = $this->getConfig();

            $volt = new VoltEngine($view, $this);

            $volt->setOptions([
                'compiledPath' => $config->application->cacheDir,
                'compiledSeparator' => '_'
            ]);

            $compiler = $volt->getCompiler();

            $compiler->addFunction("explode", "explode");
            $compiler->addFunction('in_array', 'in_array');
            $compiler->addFunction('round', 'round');
            return $volt;
        },
        '.phtml' => PhpEngine::class

    ]);

    return $view;
});


$di->setShared('redis', function () {

    $redis = new Redis();
    $redis->connect('127.0.0.1', 6379);
    return $redis;
});


$di->setShared('db', function () {
    $config = $this->getConfig();

    $class = 'Phalcon\Db\Adapter\Pdo\\' . $config->database->adapter;
    $connection = new $class([
        'host' => $config->database->host,
        'username' => $config->database->username,
        'password' => $config->database->password,
        'dbname' => $config->database->dbname,
        'charset' => $config->database->charset
    ]);

    return $connection;
});


$di->setShared('modelsManager', function () {
    return new ModelsManager();
});


$di->setShared('modelsMetadata', function () {
    return new MetaDataAdapter();
});


$di->setShared('session', function () {
    $session = new SessionAdapter();
    $session->start();
    return $session;
});


$di->set(
    "crypt",
    function () {
        $crypt = new Crypt();
        $config = $this->getConfig();
        // Устанавливаем глобальный ключ шифрования
        $crypt->setKey(
            $config->database->dbname . $config->secret. $config->database->username
        );

        return $crypt;
    },
    true
);

$di->set(
    'dispatcher',
    function () use ($di) {

        $eventsManager = new EventsManager();

        $eventsManager->attach(
            "dispatch:beforeExecuteRoute",
            new SecurityPlugin()
        );

        $eventsManager->attach(
            "dispatch:beforeException",
            new NotFoundPlugin()
        );



        $dispatcher = new Dispatcher();
        $dispatcher->setEventsManager($eventsManager);
        return $dispatcher;
    },
    true
);


$di->set(
    "flashSession",
    function () {
        return new FlashSession();
    }
);

$di->setShared(
    "cookies",
    function () {
        $cookies = new Cookies();

        $cookies->useEncryption(true);

        return $cookies;
    }
);

$di->setShared(
    "cache",
    function () {
        return new ApcCache(
            new DataFrontend(["lifetime" => 172800]),
            [
                "prefix" => "cache",
            ]
        );
    }
);

$di->setShared(
    "request",
    function () {
        return new Request();
    }
);

$di->setShared(
    "cfg",
    function () {
        return Cfg::findFirst();
    }
);

$di->setShared(
    "xss",
    function () {
        return new Escaper();
    }
);



$di->setShared(
    "random",
    function () {
        return new Random();
    }
);


$di->setShared(
    "winners",
    function () {
        $modelsManager = $this->get('modelsManager');
        $cache = $this->get("cache");
        $winners = $cache->get('winners');
        if ($winners === null) {
            $winners = $modelsManager->createBuilder()->from("Games")->join("Casegame", 'Casegame.id = Games.caseid')->join("Items", 'Items.id = Games.item')->join('Users', 'Users.id = Games.userid')
                ->columns(['Items.name_ru', 'Items.rar', 'Items.classid', 'Casegame.images', 'Users.avatar', 'Users.username', 'Users.userid'])->orderBy("Games.id DESC")->limit(25)->getQuery()->execute();
            $cache->save('winners', $winners);
        }
        return $winners;
    }
);


$di->setShared(
    "user",
    function () {
        $cookies = $this->get("cookies");
        if ($cookies->has('remember_token')) {
            try {
                $user = Users::findFirst(['remember_token = :remember_token:', 'bind' => ['remember_token' => $cookies->get('remember_token')->getValue()], 'bindTypes' => ['remember_token' => Column::BIND_PARAM_STR]]);
                if ($user !== false) {
                    return $user;
                } else {
                    $cookies->get("remember_token")->delete();
                }
            } catch (\Exception $e) {
                $cookies->get("remember_token")->delete();
            }
        }
        return false;
    }
);