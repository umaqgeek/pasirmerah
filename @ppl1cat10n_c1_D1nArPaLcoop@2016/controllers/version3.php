<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Version3 extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->helper('form');
        $this->load->helper('url');
        
        
    }

    function index() {
        $this->home();
    }
    
    /*public function shopping() {
        $this->load->view("newdesign/shopping.php", true);
//        $this->load->view("newdesign/footer.php", true);
    }*/

    public function home() {
        
        $data = array();


        $this->load->view("newdesign/index.php", $data);
        $this->load->view("newdesign/footer.php", true);
    }

}

?>