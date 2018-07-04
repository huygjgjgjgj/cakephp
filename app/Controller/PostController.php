<?php
/**
 * Created by PhpStorm.
 * User: Staff
 * Date: 26/06/2018
 * Time: 10:55
 */

class PostController extends AppController
{
    public function post(){
        $data = $this->Post->find('all', array('recursive' => 1));
        echo "<pre>";print_r($data);die;
    }
}