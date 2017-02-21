<?php
use Phalcon\Acl;
use Phalcon\Acl\Adapter\Memory as AclList;
use Phalcon\Acl\Resource;
use Phalcon\Acl\Role;
use Phalcon\Events\Event;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Mvc\User\Plugin;

/**
 * SecurityPlugin
 *
 * This is the security plugin which controls that users only have access to the modules they're assigned to
 */
class SecurityPlugin extends Plugin
{

    public function beforeExecuteRoute(Event $event, Dispatcher $dispatcher)
    {

        if ($this->user->group) {
            $role = 'Admin';
        } else{
            $role = "Users";
        }

        // Получаем активный контроллер/действие от диспетчера
        $controller = $dispatcher->getControllerName();
        $action = $dispatcher->getActionName();

        // Получаем список ACL
        $acl = $this->getAcl();

        // Проверяем, имеет ли данная роль доступ к контроллеру (ресурсу)
        $allowed = $acl->isAllowed($role, $controller, $action);

        if (!$allowed) {
            // Если доступа нет, перенаправляем его на контроллер "route404".

            $this->flash->error(
                "У вас нет доступа к данному модулю" . json_encode($acl)
            );

            $dispatcher->forward(
                [
                    'controller' => 'Pages',
                    'action' => 'route404',
                ]
            );

            // Возвращая "false" мы приказываем диспетчеру прервать текущую операцию
            return false;
        }

    }

    /**
     * Returns an existing or new access control list
     *
     * @returns AclList
     */
    public function getAcl()
    {

        $acl = new AclList();
        $acl->setDefaultAction(Acl::ALLOW);
        // Register roles
        $roles = [
            'users' => new Role('Users'),
            'admin' => new Role('Admin')
        ];
        foreach ($roles as $role) {
            $acl->addRole($role);
        }


        $privateResources = [
            'Admin' => ['*']
        ];

        foreach ($privateResources as $resourceName => $actions) {
            $acl->addResource(
                new Resource($resourceName),
                $actions
            );
        }

        foreach ($privateResources as $resource => $actions) {
                $acl->deny('Users', $resource, '*');
        }



        return $acl;
    }
}