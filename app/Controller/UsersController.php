<?php
/**
 * Created by PhpStorm.
 * User: Staff
 * Date: 19/06/2018
 * Time: 16:35
 */

class UsersController extends AppController
{
    var $name = "Users";
    var $helpers = array("Html");
    var $component = array("Session");
    public $uses = array('Account','Contact');
//    public $viewClass = 'Smarty';

    function login(){
//        $this->Session->write('Config.language',  $this->lang);
        $username = "";
        $error = "";
//        if($this->request->is('post')){
//            $data = $this->request->data;
//        }

        if($this->request->is('post')){

            $username = $this->request->data('username');
            $password = $this->request->data('password');
            $password = md5($password);


            if($this->Account->checkLogin($username,$password)) {
//                $this->Session->write("session", $username); //ghi session
                //die('aaaa');
                $this->redirect("info");
            }else{
                $error = "Tên đăng nhập và mật khẩu không đúng";
            }

        }
        $this->set('data',$username);
        $this->set("error",$error);
    }

    function info(){
        $this->paginate = array(
            'fields' => array('Contact.fullname', 'Account.username','Contact.email','Contact.address','Contact.city','Contact.cmt'),
            'limit' => 4,
            'order' => array('Contact.id' => 'desc'),
            'paramType' => 'querystring'
        );
        $data = $this->paginate('Contact');
        //echo "<pre>"; pr($data);die;
        $this->set("data",$data);
    }
    function logout(){
//        $this->Session->delete('session'); //xóa session
        $this->redirect("login"); //chuyển trang login
    }

    function userRegister(){
        $data = array();
        $errors = array();
        if($this->request->is('post')){
            $data = $this->request->data;
            $data['Account']['password'] = md5($data['Account']['password']);
            $data['Account']['password_confirm'] = md5($data['Account']['password_confirm']);
            //return $data;
//            echo "<pre>" ; pr($data); die;
            $this->Account->set($data['Account']);
            if(!$this->Account->validates()){
                $errors['Account'] = $this->Account->validationErrors;
            }
            $this->Contact->set($data['Contact']);
            if(!$this->Contact->validates()){
                $errors['Contact'] = $this->Contact->validationErrors;
            }

            if(empty($errors)){
                $this->Contact->save($data['Contact']);
                $contact = $this->Contact->find('first',array('order' => array('Contact.id' => 'desc')));
                $data['Account']['contact_id'] = $contact['Contact']['id'];

                $this->Account->save($data['Account']);

                return $this->redirect('info');
            }else{

            }
//                if ($this->Contact->save($data['Contact'])) {
//                    if ($this->Account->save($data['Account'])) {
////                        $this->Flash->success(__('The user has been saved'));
//                        return $this->redirect('info');
//                    }else{
//                        $this->Flash->error(
//                            __('The user could not be saved. Please, try again.')
//                        );
//                    }
//
//                }else{
//                    $this->Flash->error(
//                        __('The user could not be saved Account. Please, try again.')
//                    );
//                }
//            }else{
//            }
        }
        $this->set(compact('data','errors'));

    }

    function userTest(){

        $this->viewClass->setTemplateDir('Layouts');

        $this->viewClass->assign('title', 'List user');
        $this->viewClass->display('default.tpl');


        $this->paginate = array(
            'limit' => 4,
            'order' => array('id' => 'desc')
        );
        $data = $this->paginate('Contact');
        $this->set("data",$data);
    }


}









































