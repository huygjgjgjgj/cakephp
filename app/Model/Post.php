<?php
/**
 * Created by PhpStorm.
 * User: Staff
 * Date: 26/06/2018
 * Time: 10:55
 */

class Post extends AppModel
{
    public $name = 'Post';
    public $useTable = "contacts";
    public $actsAs = array(
        'Translate' => array(
            'title' => 'titleTranslation'
        )
    );
}