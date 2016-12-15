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
        //echo "hdwihde";
       $data = array();

        $this->load->view("newdesign/homepage.php", $data);
       // $this->load->view("newdesign/footer.php", true);
    }
    
    
    public function corporateOverview() {
        $this->load->view("newdesign/corporateOverview", true);
    }
    
    public function bOc() {
        $this->load->view("newdesign/bOc", true);
    }
    
    public function auditTeam() {
        $this->load->view("newdesign/auditTeam", true);
    }
    
    public function syariah() {
        $this->load->view("newdesign/syariah", true);
    }
    
    public function awards() {
        $this->load->view("newdesign/awards", true);
    }
    
    public function faq() {
        $this->load->view("newdesign/faq", true);
    }
    
    public function ip() {
        $this->load->view("newdesign/ip", true);
    }
    
    public function compliances() {
        $this->load->view("newdesign/compliances", true);
    }
    
    public function support() {
        $this->load->view("newdesign/support", true);
    }

}

?>