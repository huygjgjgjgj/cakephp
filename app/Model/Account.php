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
        return $this->find('all',array('conditions' => array('username'=>$username, 'password'=>$password)));
    }

    public $validate = array(
        'username' => array(
            'rule1' => array(
                'rule'=>'/^[a-z0-9]{8,20}$/i',
                'message' => 'Tên đăng nhập không được có ký tự đặc biệt và phải có nhiều hơn 8 ký tự',
            ),
            'rule2' => array(
                'rule' => 'notBlank',
                'message'  =>  'ko được để rỗng'
            ),
            "rule3" =>array(
              "rule" => "checkUsername", // call function check Username
              "message" => "Username đã có người đăng ký",
           ),
        ),
        'password' => array(
            'rule1' => array(
                'rule' => 'notBlank',
                'message' => 'Chưa nhập mật khẩu',
            ),
//            'rule2' => array(
//                'rule' => '/^[a-z0-9]{8,20}$/i',
//                'message' => 'Mật khẩu không được có ký tự đặc biệt và phải có nhiều hơn 8 ký tự',
//            ),
            'password_confirm'=>array(
                'rule'=>array('password_confirm'),
                'message'=>'Không khớp với Mật khẩu',
            ),
        ),
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

    public function password_confirm(){
        if ($this->data['Account']['password'] !== $this->data['Account']['password_confirm']){
            return false;
        }
        return true;
    }
}






















