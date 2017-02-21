<?php

class Users extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(type="integer", length=11, nullable=false)
     */
    public $id;

    /**
     *
     * @var string
     * @Column(type="string", length=800, nullable=false)
     */
    public $userid;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $avatar;

    /**
     *
     * @var string
     * @Column(type="string", nullable=true)
     */
    public $trade;

    /**
     *
     * @var string
     * @Column(type="string", nullable=true)
     */
    public $token;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=true)
     */
    public $partner;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=true)
     */
    public $money;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $group;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $username;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $remember_token;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("csgo");
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Users[]|Users
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Users
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'users';
    }

}
