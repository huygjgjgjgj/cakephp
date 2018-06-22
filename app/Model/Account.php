<?php
/**
 * Created by PhpStorm.
 * User: Staff
 * Date: 20/06/2018
 * Time: 14:24
 */
App::uses('Model','AppModel');
class Account extends AppModel
{
    var $useTable = "accounts";
    function checkLogin($username,$password){
        $sql = array('conditions' => array('username'=>$username, 'password'=>$password));
        $data = $this->find('all',$sql);
        if($this->getNumRows()==0){
            return false;
        }else{
            return true;
        }
    }

    public $validate = array(
        'username' => array(
            'rule1' => array(
                'rule'=>'/^[a-z0-9]{9,13}$/i',
                'message' => 'Tên đăng nhập phải là số nguyên và chữ cái, trong khoảng từ 4 đến 10 ký tự',
            ),
            'rule2' => array(
                'rule' => 'notBlank',
                'message'  =>  'ko được để rỗng'
            ),
            "rule3" =>array(
              "rule" => "checkUsername", // call function check Username
              "message" => "Username đã có người đăng ký",
           ),
        )

    );
    function checkUsername(){
        if(isset($this->data['Account']['id'])){
            $where = array(
                "id !=" => $this->data['Account']['id'],
                "username" => $this->data['Account']['username'],
            );
        }else{
            $where = array(
                "username" => $this->data['Account']['username'],
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