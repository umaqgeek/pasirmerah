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
    
    public function login() {
        $this->load->view("newdesign/profile", true);
    }
    
    public function menu() {
        $this->load->view("newdesign/profile", true);
    }
    
    public function menuAdmin() {
        $this->load->view("newdesign/admin", true);
    }
    
    public function profile() {
        $this->load->view("newdesign/myprofile", true);
    }
    
    public function payment() {
        $this->load->view("newdesign/payment", true);
    }
    
    public function managepayment() {
        $this->load->view("newdesign/managepayment", true);
    }
    
    public function adminProfile() {
        $this->load->view("newdesign/adminProfile", true);
    }
    
    public function manageMember() {
        $this->load->view("newdesign/manageMember", true);
    }
    
    public function faq() {
        $this->load->view("newdesign/faq", true);
    }
    
    public function share() {
        $this->load->view("newdesign/share", true);
    }
    
    public function addmember() {
        $this->load->view("newdesign/addmember", true);
    }
    
    public function manageProfile() {
        $this->load->view("newdesign/manageProfile", true);
    }
    
    public function manageShare() {
        $this->load->view("newdesign/manageShare", true);
    }
    
    public function manageDividen() {
        $this->load->view("newdesign/manageDividen", true);
    }
    
    public function memberShare() {
        $this->load->view("newdesign/memberShare", true);
    }
    
    public function document() {
        $this->load->view("newdesign/document", true);
    }
    
    public function config() {
        $this->load->view("newdesign/config", true);
    }

}

?>