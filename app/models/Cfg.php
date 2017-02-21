<?php

class Cfg extends \Phalcon\Mvc\Model
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
     * @Column(type="string", nullable=false)
     */
    public $title;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $description;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $steam;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $client_id;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $client_secret;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $curs;

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
     * @return Cfg[]|Cfg
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Cfg
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
        return 'cfg';
    }

}
