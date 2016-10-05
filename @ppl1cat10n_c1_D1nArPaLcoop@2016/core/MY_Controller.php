<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

    function __construct() {
//        die("haha");
        parent::__construct();
        $unlocked = array('main', 'login', 'staff', 'member', 'pisang', 'testcon');

        if (!$this->simpleloginsecure->is_logged_in() OR ! in_array(strtolower(get_class($this)), $unlocked)) {
            redirect('login');
        }/* elseif($this->simpleloginsecure->is_logged_in() AND  in_array(strtolower(get_class($this)), $unlocked)){
          redirect('admin/');
          } */

        //$this->output->cache(5);

        if ($this->my_func->getMaintenance() == true) {
            redirect(site_url('maintenance'));
        }
    }

}
