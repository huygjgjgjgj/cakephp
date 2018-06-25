<?php
/**
 * Created by PhpStorm.
 * User: Staff
 * Date: 20/06/2018
 * Time: 17:08
 */
App::uses('Model','AppModel');
App::uses('SimplePasswordHasher', 'Controller/Component/Auth');
class Contact extends AppModel
{
    var $useTable = "contacts";
    public $hasOne = array(
        'Account' => array(
            'className' => 'Account',
            'dependent' => 'true',
            'foreignKey' => 'id',
        )
    );
//    public $primaryKey = 'id';

    public $validate = array(
        "cmt" => array(
            'rule' => '/^[a-z0-9]{9,13}$/i',
            'message' => 'Chứng minh thư phải là số nguyên, trong khoảng từ 9 đến 13 ký tự',
        ),
        "fullname" => array(
            'rule' => 'notBlank',
            'message' => 'Lỗi rồi ku',
        ),
        "email" =>array(
            'rule' => 'checkEmail',
            'massage' => 'Email đã được sử dụng'
        )
    );

    function checkEmail(){
        if(isset($this->data['Contact']['id'])){
            $where = array(
                "id !=" => $this->data['Contact']['id'],
                "email" => $this->data['Contact']['email'],
            );
        }else{
            $where = array(
                "email" => $this->data['Contact']['email'],
            );
        }
        $this->find("first", array(
            'conditions' => $where
        ));
        $count = $this->getNumRows();
        if($count!=0){
            return false;
        }else{
            return true;
        }
    }
}