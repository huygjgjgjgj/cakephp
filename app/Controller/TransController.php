<?php
/**
 * Created by PhpStorm.
 * User: Staff
 * Date: 28/06/2018
 * Time: 09:45
 */

class TransController extends AppController
{
    var $name = 'Trans';
    var $uses = null;
    var $components = array('Trans');
    function change($lang = null) {
        $this->Trans->change($lang);
        $this->redirect($this->referer(null, true));
    }
    function shuntRequest() {
        $this->Trans->change($this->params['lang']);
        $args = func_get_args();
        $this->redirect("/" . implode("/", $args));
    }
}