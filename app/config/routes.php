<?php

use Phalcon\Mvc\Router;
use Phalcon\Mvc\Router\Group as RouterGroup;

$router = new Router();
$router->setDefaultController("Pages");
$router->add("/login/vk", ["controller" => "Auth", "action" => "vk"]);
$router->add("/login/steam", ["controller" => "Auth", "action" => "steam"]);
$router->add("/logout", ["controller" => "Auth", "action" => "logout"]);
$router->addPost("/play", ["controller" => "Play","action" => "play"]);
$router->addPost("/promo", ["controller" => "Play","action" => "promo"]);
$router->addPost("/save_link", ["controller" => "Auth", "action" => "save_link"]);
$router->add("/admin", ["controller" => "Admin","action" => "index"]);

$router->add("/", ["action" => "index"]);
$router->add("/reviews", ["action" => "reviews"]);
$router->add("/faq", ["action" => "faq"]);
$router->add("/top", ["action" => "top"]);
$router->add("/case/{url}", ["action" => "case"]);
$router->add("/user/{id}", ["action" => "user"]);


$admin = new RouterGroup(["controller" => "Admin"]);
$admin->setPrefix("/admin");

$admin->add("/case", ["action" => "case"]);
$admin->add("/caseurl/{id}", ["action" => "caseurl"]);
$admin->add("/users", ["action" => "users"]);
$admin->add("/user/{id}", ["action" => "user"]);
$admin->add("/items", ["action" => "items"]);
$admin->add("/promo", ["action" => "promo"]);



$router->mount($admin);
$router->removeExtraSlashes(true);

return $router;