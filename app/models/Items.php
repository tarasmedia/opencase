<?php

class Items extends \Phalcon\Mvc\Model
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
    public $name_ru;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $name_en;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $classid;

    /**
     *
     * @var string
     * @Column(type="string", length=60, nullable=false)
     */
    public $price;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $rar;

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
     * @return Items[]|Items
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Items
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
        return 'items';
    }

}
