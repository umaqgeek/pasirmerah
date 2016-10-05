<?php if ( ! defined('BASEPATH')) die();
class Maintenance extends CI_Controller {

	var $parent_page = "maintenance";

 	function __construct()
        {
                parent::__construct();
                
                if ($this->my_func->getMaintenance() == false) {
                    redirect(site_url('version3'));
                }
        }
        
        function index()
        {
            if ($this->input->get('tukang')) {
                if ($this->input->get('tukang') == 'on') {
                    $this->config->set_item('maintenance', true);
                } else if ($this->input->get('tukang') == 'off') {
                    $dc_id = 1;
                    $data_dc = array(
                        'dc_maintenance' => 0
                    );
                    $this->m_dinarpal_config->edit($dc_id, $data_dc);
                    $this->config->set_item('maintenance', false);
                }
                redirect(site_url('version3'));
            }
            
            echo $this->load->view($this->parent_page . '/v_mainpage', '', true);
        }
        
        function isMaintenance()
        {
            $dc = $this->m_dinarpal_config->getAll();
            if (isset($dc) && !empty($dc)) {
//                print_r($dc[0]->dc_maintenance); die();
                $dc_maintenance = $dc[0]->dc_maintenance;
                if ($dc_maintenance == 1) {
                    die('-1');
                } else {
                    die('1');
                }
            } else {
                die('-1');
            }
        }
}