<?php
/**
 * Created by PhpStorm.
 * User: Staff
 * Date: 28/06/2018
 * Time: 09:44
 */

class TransComponent extends Component
{
    var $components = array('Session', 'Cookie');
    function startup(Controller $controller) {
        if (!$this->Session->check('Config.language')) {
            $this->change(($this->Cookie->read('lang') ? $this->Cookie->read('lang') : DEFAULT_LANGUAGE));
        }
    }
    function change($lang = null) {
        if (!empty($lang)) {
            $this->Session->write('Config.language', $lang);
            $this->Cookie->write('lang', $lang, null, '+350 day');
        }
    }
}