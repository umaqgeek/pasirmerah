<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Logout extends CI_Controller{
	
	public function __construct(){
		parent::__construct();	
                
                if ($this->my_func->getMaintenance() == true) {
                    redirect(site_url('maintenance'));
                }
	}
	
	function index()
	{
		$this->session->sess_destroy();
		redirect('logout/confirm');
	}
	
	function confirm()
	{
		$this->load->view('logout/v_logout');
	}
}