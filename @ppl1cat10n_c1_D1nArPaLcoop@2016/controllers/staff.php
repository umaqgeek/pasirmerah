<?php

if (!defined('BASEPATH'))
    die();

class Staff extends MY_Controller {

    var $parent_page = "staff";
    var $file_users = "./assets/uploads/chatrooms/users.txt";
    var $delimeter = "\\";

    function __construct() {
        parent::__construct();

    }
    
    public function admin()
    {
        $data['a'] = 'haha';
        $data['b'] = 'hehe';
        $this->_viewpage('admin/admin', $data);
    }
    
    function _viewpage($page = 'admin', $data = '') {
        // check for the flashdata
        if ($this->session->flashdata('error') != "")
            $data['error'] = $this->session->flashdata('error');
        if ($this->session->flashdata('sucess') != "")
            $data['sucess'] = $this->session->flashdata('sucess');
        if ($this->session->flashdata('info') != "")
            $data['info'] = $this->session->flashdata('info');

        $this->load->view($this->parent_page . '/header');
        $this->load->view($this->parent_page . '/nav');
        $this->load->view($this->parent_page . '/' . $page, $data);
        $this->load->view($this->parent_page . '/footer');
    }
    
    function staff_menu(){
        $this->load->view("staff/header");
        $this->load->view("staff/nav");
        $this->load->view("staff/admin/admin", true);
        $this->load->view("staff/footer");
    }
    
    function staff_profile() {
        $this->load->view("staff/header");
        $this->load->view("staff/nav");
        $this->load->view("staff/admin/adminProfile", true);
        $this->load->view("staff/footer");
    }
    
    function manage_member() {
        $this->load->view("staff/header");
        $this->load->view("staff/nav");
        $this->load->view("staff/menu/manageMember", true);
        $this->load->view("staff/footer");
    }
    
    function add_member() {
        $this->load->view("staff/header");
        $this->load->view("staff/nav");
        $this->load->view("staff/manageMember/addmember", true);
        $this->load->view("staff/footer");
    }
    
    function manage_member_() {
        $this->load->view("staff/header");
        $this->load->view("staff/nav");
        $this->load->view("staff/manageMember/manageMember", true);
        $this->load->view("staff/footer");
    }

    function manage_payment() {
        $this->load->view("staff/header");
        $this->load->view("staff/nav");
        $this->load->view("staff/managePayment/payment", true);
        $this->load->view("staff/footer");
    }
    
    function menu() {
        $this->load->view("staff/header");
        $this->load->view("staff/nav");
        $this->load->view("staff/menu/share", true);
        $this->load->view("staff/footer");
    }
    
    function manageShare() {
        $this->load->view("staff/header");
        $this->load->view("staff/nav");
        $this->load->view("staff/manageShare/manageShare", true);
        $this->load->view("staff/footer");
    }
    
    function manageDividen() {
        $this->load->view("staff/header");
        $this->load->view("staff/nav");
        $this->load->view("staff/manageShare/manageDividen", true);
        $this->load->view("staff/footer");
    }
    
    function manageConfig() {
        $this->load->view("staff/header");
        $this->load->view("staff/nav");
        $this->load->view("staff/manageConfig/config", true);
        $this->load->view("staff/footer");
    }

    public function _papartable($data = '', $output = 'dashboard', $menu1 = '11', $title = 'Dashboard') {
        $this->load->view($this->parent_page . '/header');
        $this->load->view($this->parent_page . '/nav');

        // check for the flashdata
        if ($this->session->flashdata('error') != "")
            $data['error'] = $this->session->flashdata('error');
        if ($this->session->flashdata('sucess') != "")
            $data['sucess'] = $this->session->flashdata('sucess');
        if ($this->session->flashdata('info') != "")
            $data['info'] = $this->session->flashdata('info');

        $menux['menu1'] = $menu1;
        $menux['title1'] = $title;
        $this->load->view($this->parent_page . '/menu', $menux);

        $this->load->view($this->parent_page . '/' . $output . '/table', $data);
        $this->load->view($this->parent_page . '/footer_table');
    }

    

    function gomaintenance() {
        $dc_id = 1;
        $data_dc = array(
            'dc_maintenance' => 1
        );
        $this->m_dinarpal_config->edit($dc_id, $data_dc);
    }

    
    public function advertisingAndPromotions($output = 'dashboard', $menu1 = '11') {
        $data = array();
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                //echo 'lalala';
                case 'ee': $title = 'Unique Link';
                    break;

                case 'ff':
                    $title = 'Banner';
                    $crud = new grocery_CRUD();
                    $crud->set_theme('twitter-bootstrap');
                    $crud->unset_export();
                    $crud->unset_print();
                    $crud->set_table('banners');
                    $crud->display_as('ban_name', 'Name')
                            ->display_as('ban_image', 'Banner Picture')
                            ->display_as('ban_date', 'Date')
                            ->display_as('bty_id', 'Banner Type');
                    $crud->set_relation('bty_id', 'banners_type', 'bty_desc');
                    $crud->set_field_upload('ban_image', 'assets/uploads/banners/');
                    //$crud->callback_after_upload(array($this,'callback_after_upload2'));
                    $data = $crud->render();
                    break;

                case 'gg':
                    $title = 'Download Materials';
                    $crud = new grocery_CRUD();
                    $crud->set_theme('twitter-bootstrap');
                    $crud->unset_export();
                    $crud->unset_print();
                    $crud->set_table('geneology_material');
                    $crud->set_relation('gmt_id', 'geneology_material_type', 'gmt_desc');
                    $crud->display_as('gm_name', 'File Name')
                            ->display_as('gmt_id', 'File Type')
                            ->display_as('gm_desc', 'Description')
                            ->display_as('gm_link', 'Upload');
                    $crud->field_type('gm_status', 'hidden');
                    $crud->set_field_upload('gm_link', './assets/uploads/materials/');
                    $crud->columns('gm_name', 'gm_desc', 'gmt_id', 'gm_link');
                    $data = $crud->render();
                    break;
            }
            $this->_papar($data, 'advertisingAndPromotions/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

   
    public function setPaymentAff($gac_idx, $gac_status) {
        $gac_id = $this->my_func->dinarpal_decrypt($gac_idx);
        if ($gac_status == 3) {
            $data_gac = array(
                'gac_status' => 3
            );
            $this->m_geneology_aff_child->edit($gac_id, $data_gac);
        } else if ($gac_status == 2) {
            $gac = $this->m_geneology_aff_child->get($gac_id, 1);
            if (isset($gac) && !empty($gac)) {
//                    print_r($gac); die();
                $me_id_parent = $gac[0]->me_id_parent;
                $me_parent = $this->m_members->get($me_id_parent);
                if (isset($gac) && !empty($gac)) {
                    $amount = $gac[0]->gac_amount;
                    $at_id = 1;
                    $me_id_hq = $this->my_func->getMeAdminHQ();

                    $sess = $this->session->all_userdata();
                    $me_id_admin = $sess['me_id'];

                    $tr_datetime = date('Y-m-d H:i:s');
                    // deduct from admin hq
//                        $isDeduct = $this->debit_kredit($me_id_hq, $amount, $at_id, 2);
                    $isDeduct = $this->debit_kredit_fund($me_id_hq, $amount, 'ITTIHAD', 2);
                    if ($isDeduct) {
                        // pay to user upline
                        $isPaid = $this->debit_kredit($me_id_parent, $amount, $at_id, 1);
                        if ($isPaid) {
                            $data_gac = array(
                                'gac_status' => 2,
                                'gac_paymentdate' => $tr_datetime
                            );
                            $this->m_geneology_aff_child->edit($gac_id, $data_gac);
                            $data_tr = array(
                                'me_id_from' => $me_id_hq,
                                'me_id_to' => $me_id_parent,
                                'tr_amount' => $amount,
                                'at_id' => 10,
                                'tr_notes' => 'Commission affiliate from HQ',
                                'tr_datetime' => $tr_datetime,
                                'tt_id' => 28, // affiliate
                                'ts_id' => 1, // complete
                                'me_id_staff' => $me_id_admin
                            );
                            $this->m_transaction->add($data_tr);
                        } else {
                            $this->session->set_flashdata('error', 'Invalid commission!');
                        }
                    }
                } else {
                    $this->session->set_flashdata('error', 'Invalid commission!');
                }
            } else {
                $this->session->set_flashdata('error', 'Invalid commission!');
            }
        }
        if ($gac_status == 2) {
            $this->session->set_flashdata('sucess', 'Paid success ..');
        } else if ($gac_status == 3) {
            $this->session->set_flashdata('sucess', 'Decline success ..');
        }
    }

    public function paymentAffiliate($gac_idx, $gac_status) {
        $this->setPaymentAff($gac_idx, $gac_status);
        redirect(site_url('staff/commissions/affiliatePaymentManagement/d3'));
    }

    public function affiiliate($output = 'dashboard', $menu1 = '11') {
        $data = array();
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                case 'a':
                    $title = 'Overview';
                    $gac = $this->m_geneology_aff_child->getAll();
                    if (isset($gac) && !empty($gac)) {
                        $total_aff = 0.00;
                        $total = 0;
                        $total_complete = 0;
                        $total_pending = 0;
                        $total_cancelled = 0;
                        foreach ($gac as $g) {
                            $total_aff += $g->gac_amount;
                            switch ($g->gac_status) {
                                case 1:
                                    $total += 1;
                                    $total_pending += 1;
                                    break;
                                case 2:
                                    $total += 1;
                                    $total_complete += 1;
                                    break;
                                case 3:
                                    $total += 1;
                                    $total_cancelled += 1;
                                    break;
                            }
                        }
                        $aff_rate = $this->my_func->getGeneologyRate();
                        $total_fee = (1 / $aff_rate) * $total_aff;

                        $data['total_fee'] = $total_fee;
                        $data['total'] = $total;
                        $data['total_complete'] = $total_complete;
                        $data['total_pending'] = $total_pending;
                        $data['total_cancelled'] = $total_cancelled;
                    } else {
                        $this->session->set_flashdata('error', 'Opss! Error while opening that page.');
                        redirect(site_url('staff/newMenu/affiiliate/025'));
                    }
                    break;
                case 'b': $title = 'Geneology';
                    $me_id_hq = $this->my_func->getMeAdminHQ();
                    $data['tree_aff'] = $this->m_geneology_aff->getAll($me_id_hq);
                    if ($this->input->get('d')) {
                        $me_idx = $this->input->get('d');
                        $me_id = $this->my_func->dinarpal_decrypt($me_idx);
                        $data['tree_aff'] = $this->m_geneology_aff->getAll($me_id);
                    }
                    break;
                case 'c': $title = 'Commissions';
                    break;
                case 'cc': $title = 'Commissions Details';
                    break;
                case 'd': $title = 'Advertising And Promotions';
                    break;
                case 'e':
                    $title = 'Manage Ittihad Members';
                    $data['tree_aff'] = $this->m_geneology_aff->getAll();
                    break;
            }
            $this->_papar($data, 'affiiliate/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    function isMemberExist() {
        $username = $this->input->post('username');
        $me = $this->m_members->getByName($username, 3);
        if (isset($me) && !empty($me)) {
            die("1");
        } else {
            die("2");
        }
    }

    public function changeIntroducer() {
        $arr = $this->input->post();
//            print_r($arr); die();

        $cu = $arr['cu'];
        $username = $arr['username_new_parent'];

        $me_parent = $this->m_members->getByName($username, 3);
        $me_id_hq = $this->my_func->getMeAdminHQ();
        $me_id_parent = (isset($me_parent) && !empty($me_parent)) ? ($me_parent[0]->me_id) : ($me_id_hq);
        $me_id_child = $this->my_func->dinarpal_decrypt($cu);

        $data_ga = array(
            'me_id_parent' => $me_id_parent
        );
        $this->m_geneology_aff->editParent($me_id_child, $data_ga);

        redirect(site_url('staff/affiiliate/manageIttihadMembers/e'));
    }

    public function dinarpalAccount($output = 'dashboard', $menu1 = '11') {
        if ($output != 'dashboard') {
            $crud = new grocery_CRUD();
            $crud->set_theme('twitter-bootstrap');
            $crud->unset_export();
            $crud->unset_print();
            $data = array();

            $title = 'Dashboard';
            switch ($menu1) {
                case 'testy1':

                    $this->session->set_flashdata('sucess', 'Approval Success ..');
                    redirect(site_url('staff/dinarpalAccount/overview/y11'));
                case 'y11':
                    $title = 'Overview';
                    $crud->set_table("dinarpal_admin_account");
                    $crud->set_subject("Dinarpal Admin Account");
                    $crud->fields('daa_account_dinar', 'daa_account_dinar_gram', 'daa_account_dirham', 'daa_account_dirham_gram');
                    $crud->display_as('daa_account_dinar', 'Dinar Balance')
                            ->display_as('daa_account_dinar_gram', 'Gold Balance')
                            ->display_as('daa_account_dirham', 'Dirham Balance')
                            ->display_as('daa_account_dirham_gram', 'Silver Balance');
                    $crud->unset_add();
                    $crud->unset_delete();
                    $data = $crud->render();
                    break;
                case 'y121':
                    $data['payment_temp'] = $this->session->userdata('payment_temp');
                case 'y12':
//                                    $data['construction_dinarpal'] = 1;
                    $title = 'Inject Cash';
                    $data['payment_type'] = $this->m_payment_type->getAll();
                    $data['account_type'] = $this->m_account_type->getAll();
                    break;
                case 'y13':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Inject Gram';
                    break;
                case 'y14':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Cash Fund Injection Summary';
//                                        $crud->set_table("transaction");
//                                        $crud->set_subject("Transaction");
//                                        $crud->where('(transaction.at_id = 1 OR transaction.at_id = 3)');
//                                        $crud->where('(transaction.me_id_from = 0)');
//                                        $crud->fields('me_id_to', 'tr_amount', 'tr_notes', 'tr_datetime', 'at_id', 'ts_id');
//                                        $crud->columns('me_id_to', 'tr_amount', 'tr_notes', 'tr_datetime', 'at_id', 'ts_id');
//                                        $crud->set_relation('me_id_to','members','me_username');
//                                        $crud->set_relation('at_id','account_type','at_desc');
//                                        $crud->set_relation('ts_id','transaction_status','ts_desc');
//                                        $crud->display_as('me_id_to', 'Receiver Username')
//                                                ->display_as('tr_amount', 'Amount')
//                                                ->display_as('tr_notes', 'Notes/Remarks')
//                                                ->display_as('tr_datetime', 'Date - Time')
//                                                ->display_as('at_id', 'Account Type')
//                                                ->display_as('ts_id' ,'Transaction Status');
//                                        $crud->unset_add();
//                                        $crud->unset_delete();
//                                        $crud->unset_edit();
//                                        $data = $crud->render();
                    break;
                case 'y15':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Gold &amp; Silver Injection Summary';
                    break;
                case 'y16':
                    $title = 'Account Adjustment';
                    break;
                case 'y161':
                    $title = 'Account Adjustment Confirmation';
                    $payment_temp = $this->session->userdata('payment_temp');
                    $data['payment_temp'] = $payment_temp;
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function dinarpalClientKeep($output = 'dashboard', $menu1 = '11') {
        $crud = new grocery_CRUD();
        $crud->set_theme('twitter-bootstrap');
        $crud->unset_export();
        $crud->unset_print();
        $data = array();
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                case 'y21':
                    $title = 'Overview';
                    break;
                case 'y22code':
                    $title = 'Vaucher Item Code Generator';
                    $v_id = "";
                    $v_cert = "";
                    $image_voucher = "Untitled-1-Recovered.jpg";
                    if ($this->input->post('vid')) {
                        $v_id1 = $this->input->post('vid');
                        $v_id_pecah = explode("V", $v_id1);
                        $v_id = (isset($v_id_pecah[1]) && !empty($v_id_pecah[1])) ? ($v_id_pecah[1]) : (0);
                        $vault = $this->m_vault->get($v_id);
                        $it_id = (isset($vault) && !empty($vault)) ? ($vault[0]->it_id) : (0);
                        $v_weight = (isset($vault) && !empty($vault)) ? ($vault[0]->v_weight) : (0);
                        if ($it_id == 1 && $v_weight == 0.1) {
                            $image_voucher = "Untitled-1-Recoveredg.jpg";
                        } else if ($it_id == 2 && $v_weight == 0.1) {
                            $image_voucher = "Untitled-1-Recoveredh.jpg";
                        }
                        $v_id = 'V' . $v_id;
                        $v_cert = $this->input->post('vcert');
                        $str = $v_id . '|' . $v_cert;
                        $str = $this->my_func->dinarpal_encrypt($str);
                        $qrcode = $this->my_func->QRCode2($str);
                        $data['qrcode'] = $qrcode;
                    }
                    if ($this->input->get('vid') && $this->input->get('vcert')) {
                        $vidx = $this->input->get('vid');
                        $vcertx = $this->input->get('vcert');
                        $v_id = $this->my_func->dinarpal_decrypt($vidx);
                        $vault = $this->m_vault->get($v_id);
                        $it_id = (isset($vault) && !empty($vault)) ? ($vault[0]->it_id) : (0);
                        $v_weight = (isset($vault) && !empty($vault)) ? ($vault[0]->v_weight) : (0);
                        if ($it_id == 1 && $v_weight == 0.1) {
                            $image_voucher = "Untitled-1-Recoveredg.jpg";
                        } else if ($it_id == 2 && $v_weight == 0.1) {
                            $image_voucher = "Untitled-1-Recoveredh.jpg";
                        }
                        $v_id = 'V' . $v_id;
                        $v_cert = $this->my_func->dinarpal_decrypt($vcertx);
                        $str = $v_id . '|' . $v_cert;
                        $str = $this->my_func->dinarpal_encrypt($str);
                        $qrcode = $this->my_func->QRCode2($str);
                        $data['qrcode'] = $qrcode;
                    }
                    $data['v_id'] = $v_id;
                    $data['v_cert'] = $v_cert;
                    $data['image_voucher'] = $image_voucher;
                    break;
                case 'y22parent':
                    $title = 'Manage Parent Vault Item';
                    $crud->set_table('vault_parent');
                    $crud->set_relation('vt_id', 'vault_type', 'vt_name');
                    $crud->set_relation('br_id', 'brands', 'br_name');
                    $crud->set_relation('me_id', 'members', 'me_username');
                    $crud->set_relation('itc_id', 'item_type_child', 'itc_name');
                    $crud->set_relation('isc_id', 'item_status_courier', 'isc_name');
                    $crud->set_relation('vt_id', 'vault_type', 'vt_name');
                    $crud->set_relation('ivt_id', 'item_vault_type', 'ivt_desc');
                    $crud->set_relation('ivmt_id', 'item_vault_mining_type', 'ivmt_desc');
//                                        $crud->set_relation('v_id','vault','V{v_id}');
                    //$crud->set_relation_n_n('Brands', 'brands_itc', 'brands', 'bi_id', 'br_id', 'br_name','bi_id');
                    //$crud->set_url_field('itct_image');
                    //$crud->set_image_path(base_url().'assets/uploads/items/');
//                                        $crud->unset_add();
//                                        $crud->unset_delete();

                    $crud->set_field_upload('vp_image', 'assets/uploads/items/');
                    $crud->set_field_upload('vp_image2', 'assets/uploads/items/');
                    $crud->set_field_upload('vp_image3', 'assets/uploads/items/');
                    $crud->set_field_upload('vp_image4', 'assets/uploads/items/');
                    $crud->set_field_upload('vp_image5', 'assets/uploads/items/');
                    $crud->display_as('vp_id', 'Item ID');
                    $crud->display_as('vp_image', 'Front Image');
                    $crud->display_as('vp_image2', 'Side Image ');
                    $crud->display_as('vp_image3', 'Back Image');
                    $crud->display_as('vp_image4', 'Other Image 1');
                    $crud->display_as('vp_image5', 'Other Image 2');
                    $crud->display_as('vp_desc', 'Description');
                    $crud->display_as('vp_name', 'Name');
                    $crud->display_as('vp_price_rate', 'Price (' . $this->my_func->getCurrency() . ')');
                    $crud->display_as('vp_weight', 'Weight');
                    $crud->display_as('vp_cert', 'Cert. No.');
                    $crud->display_as('br_id', 'Brands');
                    $crud->display_as('vt_id', 'Vault');
                    $crud->display_as('me_id', 'Owner');
                    $crud->display_as('itc_id', 'Item');
                    $crud->display_as('isc_id', 'Item Status');
                    $crud->display_as('ivt_id', 'Item Vault Type');
                    $crud->display_as('ivmt_id', 'Minting Type');
                    $crud->display_as('vp_regdate', 'Date Registered');

                    $crud->columns('vp_id', 'vp_image', 'vp_image2', 'vp_image3', 'vp_name', 'vp_cert', 'vp_weight', 'vp_price_rate', 'me_id', 'vt_id', 'ivt_id', 'ivmt_id');

                    $crud->fields('vp_image', 'vp_image2', 'vp_image3', 'vp_image4', 'vp_image5', 'vp_name', 'vp_desc', 'vp_weight', 'vp_cert', 'itc_id', 'vp_price_rate', 'br_id', 'isc_id', 'me_id', 'vt_id', 'ivt_id', 'ivmt_id');

                    $crud->required_fields('vp_image', 'vp_name', 'vp_weight', 'vp_cert', 'itc_id', 'vp_price_rate', 'br_id', 'isc_id', 'me_id', 'vt_id', 'ivt_id', 'ivmt_id');

//					$crud->required_fields('itct_image','itct_image2','itct_image3','itct_name', 'itct_price_rate', 'itct_weight', 'pu_id');
                    //$crud->callback_after_upload(array($this,'callback_after_upload1'));
                    $data = $crud->render();
//                                        $data['construction_dinarpal'] = 1;
                    break;
                case 'y22':
                    $title = 'Manage Vault';
                    $crud->set_table('vault');
                    $crud->set_relation('vt_id', 'vault_type', 'vt_name');
                    $crud->set_relation('br_id', 'brands', 'br_name');
                    $crud->set_relation('me_id', 'members', 'me_username');
                    $crud->set_relation('itc_id', 'item_type_child', 'itc_name');
                    $crud->set_relation('isc_id', 'item_status_courier', 'isc_name');
                    $crud->set_relation('vt_id', 'vault_type', 'vt_name');
                    $crud->set_relation('ivt_id', 'item_vault_type', 'ivt_desc');
                    $crud->set_relation('ivmt_id', 'item_vault_mining_type', 'ivmt_desc');
                    $crud->set_relation('v_id_parent', 'vault_parent', '{vp_cert} - {vp_name}');
//                                        $crud->set_relation('v_id','vault','V{v_id}');
                    //$crud->set_relation_n_n('Brands', 'brands_itc', 'brands', 'bi_id', 'br_id', 'br_name','bi_id');
                    //$crud->set_url_field('itct_image');
                    //$crud->set_image_path(base_url().'assets/uploads/items/');
//                                        $crud->unset_add();
//                                        $crud->unset_delete();

                    $crud->set_field_upload('v_image', 'assets/uploads/items/');
                    $crud->set_field_upload('v_image2', 'assets/uploads/items/');
                    $crud->set_field_upload('v_image3', 'assets/uploads/items/');
                    $crud->set_field_upload('v_image4', 'assets/uploads/items/');
                    $crud->set_field_upload('v_image5', 'assets/uploads/items/');
                    $crud->display_as('v_id', 'Item ID');
                    $crud->display_as('v_image', 'Front Image');
                    $crud->display_as('v_image2', 'Side Image ');
                    $crud->display_as('v_image3', 'Back Image');
                    $crud->display_as('v_image4', 'Other Image 1');
                    $crud->display_as('v_image5', 'Other Image 2');
                    $crud->display_as('v_desc', 'Description');
                    $crud->display_as('v_name', 'Name');
                    $crud->display_as('v_price_rate', 'Price (' . $this->my_func->getCurrency() . ')');
                    $crud->display_as('v_weight', 'Weight');
                    $crud->display_as('v_cert', 'Cert. No.');
                    $crud->display_as('br_id', 'Brands');
                    $crud->display_as('vt_id', 'Vault');
                    $crud->display_as('me_id', 'Owner');
                    $crud->display_as('itc_id', 'Item');
                    $crud->display_as('isc_id', 'Item Status');
                    $crud->display_as('ivt_id', 'Item Vault Type');
                    $crud->display_as('ivmt_id', 'Minting Type');
                    $crud->display_as('v_regdate', 'Date Registered');
                    $crud->display_as('v_id_parent', 'Parent Item (if choose minting)');

                    $crud->add_action('Go to QR Code Generator', base_url() . 'assets/images/icon_generator.gif" width="30" height="30', 's', '', array($this, 'go_to_code'));

                    $crud->columns('v_id', 'v_image', 'v_image2', 'v_image3', 'v_image4', 'v_image5', 'v_name', 'v_cert', 'v_weight', 'v_price_rate', 'me_id', 'vt_id', 'ivt_id', 'ivmt_id', 'v_id_parent');
                    $crud->fields('v_image', 'v_image2', 'v_image3', 'v_image4', 'v_image5', 'v_name', 'v_desc', 'v_weight', 'v_cert', 'itc_id', 'v_price_rate', 'br_id', 'isc_id', 'me_id', 'vt_id', 'ivt_id', 'ivmt_id', 'v_id_parent');
                    $crud->required_fields('v_image', 'v_name', 'v_weight', 'v_cert', 'itc_id', 'v_price_rate', 'br_id', 'isc_id', 'me_id', 'vt_id', 'ivt_id', 'ivmt_id');

//					$crud->required_fields('itct_image','itct_image2','itct_image3','itct_name', 'itct_price_rate', 'itct_weight', 'pu_id');
                    //$crud->callback_after_upload(array($this,'callback_after_upload1'));
                    $data = $crud->render();
//                                        $data['construction_dinarpal'] = 1;
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function manageStaff($output = 'dashboard', $menu1 = '11') {
        $data = array();
        $sess = $this->session->all_userdata();
        $me_id = $sess['me_id'];
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                case 'x11':
                    $title = 'Manage Master License';
                    break;
                case 'x12':
                    $title = 'Manage Sub License';
                    break;
                case 'x13':
                    $title = 'Manage Multinational Authority';
                    break;
                case 'x14':
                    $title = 'Manage Supervisor';
                    $staff = $this->m_members->getAll_Staff(2, 'GA');
                    $data['staff'] = $staff;
                    break;
                case 'x14add':
                    $title = 'Add Supervisor';
                    $data['gender'] = $this->m_gender->getAll();
                    $data['branch'] = $this->m_storage_location->getAll();
                    if ($this->input->post()) {
                        $arr = $this->input->post();
                        $arr1 = $arr;
                        foreach ($arr1 as $ar) {
                            if ($ar == "" || $ar == NULL) {
                                $this->session->set_flashdata('error', 'Opss! Don\'t leave blank!');
                                redirect(site_url('staff/manageStaff/addSupervisor/x14add'));
                            }
                        }
//                                        print_r($arr); die();
                        $upload = $this->my_func->do_upload('me_image');
                        if (isset($upload['upload_data']) && !empty($upload['upload_data'])) {
                            $me_image = $upload['upload_data']['file_name'];
                            $arr['me_image'] = $me_image;
                            $arr['me_password'] = $this->simpleloginsecure->createhashedPassword($arr['me_password']);
                            $arr['me_question'] = 'What is my username?';
                            $arr['me_answer'] = $arr['me_username'];
                            $arr['me_register_date'] = date('Y-m-d H:i:s');
                            $arr['me_account_type'] = 1;
                            $arr['me_activation_status'] = 2;
                            $arr['ml_id'] = 2;
                            $arr['me_status'] = 1;
                            $arr['me_type'] = 'GA';
                            $arr['mos_id'] = 1;
                            $me_id = $this->m_members->add($arr);
                            if ($me_id) {
                                $this->session->set_flashdata('sucess', 'Add Supervisor success.');
                                redirect(site_url('staff/manageStaff/manageSupervisor/x14'));
                            } else {
                                $this->session->set_flashdata('error', 'Opss! Cannot add this supervisor. Maybe already exist.');
                                redirect(site_url('staff/manageStaff/addSupervisor/x14add'));
                            }
                        } else {
                            $error = $upload['error'];
                            $this->session->set_flashdata('error', 'Opss! Error: ' . $error);
                            redirect(site_url('staff/manageStaff/addSupervisor/x14add'));
                        }
                    }
                    break;
                case 'x15':
                    $title = 'Manage Customer Service';
                    break;
                case 'x16':
                    $title = 'Manage Profile';
                    $data['gender'] = $this->m_gender->getAll();
                    $data['branch'] = $this->m_storage_location->getAll();
                    $data['profile'] = $this->m_members->get_Staff($me_id);
                    $data['me_id'] = $me_id;
                    if ($this->input->post()) {
                        $data_me = $this->input->post();
                        $upload = $this->my_func->do_upload('me_image');
                        if (isset($upload['upload_data'])) {
                            $data_me['me_image'] = $upload['upload_data']['file_name'];
                        } else {
                            $data_me['me_image'] = $data_me['me_image2'];
                        }
                        unset($data_me['me_image2']);
                        $user1 = $data_me['me_username'];
                        $user2 = $data_me['me_username2'];
                        unset($data_me['me_username2']);
                        $bol = $this->m_members->edit($me_id, $data_me);
                        if ($bol == '0') {
                            $this->session->set_flashdata('error', 'Failed update!');
                        } else {
                            $this->session->set_flashdata('sucess', 'Success update.');
                        }
                        if ($user1 != $user2) {
                            $this->session->set_flashdata('sucess', 'Successfully update your username..<br />Please login again.');
                            redirect(site_url('login'));
                        } else {
                            redirect(site_url('staff/manageStaff/manageProfile/x16'));
                        }
                    }
                    break;
                case 'x17':
                    $title = 'Change Password';
                    $profile = $this->m_members->get_Staff($me_id);
                    if (!isset($profile) || empty($profile)) {
                        redirect(site_url('staff/logout'));
                    }
                    $data['profile'] = $profile;
                    $data['me_id'] = $me_id;
                    if ($this->input->post()) {
                        $arr = $this->input->post();
//                                        print_r($arr); die();
                        foreach ($arr as $ar) {
                            if ($ar == '' || $ar == NULL) {
                                $this->session->set_flashdata('error', 'Opss! Don\'t leave blank!');
                                redirect(site_url('staff/manageStaff/managePassword/x17'));
                            }
                        }
                        $currentPassword = $this->input->post('currentPassword');
                        $newPassword = $this->input->post('newPassword');
                        $confirmPassword = $this->input->post('confirmPassword');
                        $isValid = $this->simpleloginsecure->isValidPassword($profile[0]->me_username, $currentPassword);
                        // if same current pssword.
                        if ($isValid) {
                            // check if password not strong.
                            $pwd_status = $this->my_func->isValidPassword($confirmPassword);
                            if (strpos($pwd_status, 'strong') === false) {
                                $this->session->set_flashdata('error', $pwd_status);
                            } else {
                                $arrMe = array(
                                    'me_password' => $this->simpleloginsecure->encrypt_password($confirmPassword),
                                    'me_question' => $this->input->post('me_question'),
                                    'me_answer' => $this->input->post('me_answer')
                                );
                                $me_update = $this->m_members->edit($me_id, $arrMe);
                                if ($me_update) {
                                    $this->session->set_flashdata('sucess', 'Successfully update your password ..<br />Please login again.');
                                    redirect(site_url('login'));
                                } else {
                                    $this->session->set_flashdata('error', 'Cannot update your password!');
                                }
                            }
                        } else {
                            $this->session->set_flashdata('error', 'Invalid current password!');
                        }
                        redirect(site_url('staff/manageStaff/managePassword/x17'));
                    }
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    function getListStaff() {
        $staff = $this->m_members->getAll_Staff(2, 'GA');
        $data['staff'] = $staff;
        echo $this->load->view('staff/manageStaff/ajax/getListStaff', $data, true);
    }

    function getListMembers() {
        $members = $this->m_members->getAll();
        $mas_idx = $this->input->post('mas');
        $mas_id = $this->my_func->dinarpal_decrypt($mas_idx);
        $data['mas_desc_post'] = "";
        if ($mas_id != "-1") {
            $members = $this->m_members->getAll(-1, -1, $mas_id);
            $mas = $this->m_members_activation_status->get($mas_id);
            $mas_desc = (isset($mas) && !empty($mas)) ? ($mas[0]->mas_desc) : ("");
            $data['mas_desc_post'] = " of " . $mas_desc;
        }

        $data['members'] = $members;
        echo $this->load->view('staff/manageMembers/ajax/getListMembers', $data, true);
    }

    function alldead() {
        $data_me = array(
            'mos_id' => 1
        );
        $this->m_members->editAll($data_me);
        die("-1|Done.");
    }

    function saveTracking() {
        $latitud = $this->input->post('latitud');
        $longitud = $this->input->post('longitud');
        $sess = $this->session->all_userdata();
        $me_id = $sess['me_id'];
        $me_lat_lon = $latitud . "," . $longitud;
        $data_me = array(
            'me_lat_lon' => $me_lat_lon
        );
        $this->m_members->edit($me_id, $data_me);
    }

    function saveOnline() {
        $sess = $this->session->all_userdata();
        $me_id = $sess['me_id'];
        $data_me = array(
            'mos_id' => 2
        );
        $this->m_members->edit($me_id, $data_me);
    }

    function set_default_profile($post_array) {
        $post_array['me_password'] = $this->simpleloginsecure->encrypt_password("#@!321Cba");
        $post_array['me_question'] = 'What is my username?';
        $post_array['me_answer'] = $post_array['me_username'];
        $post_array['me_unique_link'] = md5($post_array['me_username']);
        $post_array['me_register_date'] = date('Y-m-d H:i:s');
        $post_array['me_account_type'] = 1;
        $post_array['me_activation_status'] = 2;
        $post_array['me_last_login'] = '';
        $post_array['me_magic_num'] = md5($post_array['me_email']);
        $post_array['ml_id'] = 3;
        $post_array['me_status'] = 1;
        return $post_array;
    }

    function create_profile_child($post_array, $primary_key) {
        $me_id = $primary_key;

        $data_balance = array(
            'me_id' => $me_id,
            'da_gold_balance' => '0',
            'da_gold_reserved' => '0',
            'da_silver_balance' => '0',
            'da_silver_reserved' => '0'
        );
        $this->m_dinarpal_account->add($data_balance);

        $data_emails = array(
            'em_emails' => $post_array['me_email'],
            'me_id' => $me_id,
            'em_status' => 2
        );
        $this->m_emails->add($data_emails);

        // setup geneology
        $me_register_date = date('Y-m-d H:i:s');
        $data_geneology_aff = array(
            'ga_datetime' => $me_register_date,
            'me_id' => $me_id,
            'me_id_parent' => 1,
            'ga_status' => 1,
            'ga_unique_link' => $this->my_func->getRandomVal('numeric', 16)
        );
        $ga_id = $this->m_geneology_aff->add($data_geneology_aff);
        if ($ga_id) {
            $this->session->set_userdata('me_id_parent', $me_id_admin_hq);
        }

        // setup beneficiary info (waris)
        $data_biw = array(
            'me_id' => $me_id
        );
        $biw_id = $this->m_bene_info_waris->add($data_biw);

        return true;
    }

    function deleteMembers($me_idx = '-') {
        $me_id = $this->my_func->dinarpal_decrypt($me_idx);
        $this->m_members->deleteMemberAllAccount($me_id);
        redirect(site_url('staff/manageMembers/manageMember/x21'));
    }

    function deleteAllMembers() {
        $mas_idx = $this->input->post('mas');
        $mas_id = $this->my_func->dinarpal_decrypt($mas_idx);
        $members = $this->m_members->getAll(-1, -1, $mas_id);
        if (isset($members) && !empty($members)) {
            foreach ($members as $me) {
                $me_id = $me->me_id;
                $this->m_members->deleteMemberAllAccount($me_id);
            }
        }
    }

    public function manageMembers($output = 'dashboard', $menu1 = '11') {
        if ($output != 'dashboard') {
            $title = 'Dashboard';

            $crud = new grocery_CRUD();
            $crud->set_theme('twitter-bootstrap');
            $crud->unset_export();
            $crud->unset_print();
            $data = array();

            switch ($menu1) {
                case 'x21':
                    $title = 'Manage Members';
                    $crud->set_subject($title);
                    $crud->set_table('members');
//					$crud->where('ml_id', 3);
//                                        $crud->where('me_type', 'NU');
//                                        $crud->set_relation('sl_id', 'storage_location', 'sl_name');
                    $crud->set_relation('g_id', 'gender', 'g_desc');
                    $crud->set_relation('me_activation_status', 'members_activation_status', 'mas_desc');
//					$crud->columns('me_firstname','me_username','me_whatsapp_no','me_status');
                    $crud->columns('me_firstname', 'me_username', 'me_whatsapp_no', 'me_register_date', 'me_activation_status', 'me_email');
                    $crud->change_field_type('me_password', 'invisible')
                            ->change_field_type('me_question', 'invisible')
                            ->change_field_type('me_answer', 'invisible')
                            ->change_field_type('me_unique_link', 'invisible')
                            ->change_field_type('me_register_date', 'invisible')
                            ->change_field_type('me_account_type', 'invisible')
                            ->change_field_type('me_activation_status', 'invisible')
                            ->change_field_type('me_last_login', 'invisible')
                            ->change_field_type('me_magic_num', 'invisible')
                            ->change_field_type('ml_id', 'invisible')
                            ->change_field_type('me_status', 'invisible')
                            ->change_field_type('me_type', 'invisible')
                            ->change_field_type('sl_id', 'invisible')
                            ->change_field_type('me_is_amil', 'invisible');
                    $crud->display_as('me_firstname', 'First Name')
                            ->display_as('me_lastname', 'Last Name')
                            ->display_as('me_username', 'Username')
                            ->display_as('me_image', 'Profile Image')
                            ->display_as('me_address1', 'Address 1')
                            ->display_as('me_address2', 'Address 2')
                            ->display_as('me_postcode', 'Postcode')
                            ->display_as('me_country', 'Country')
                            ->display_as('me_government_issue_id', 'Government Issue ID')
                            ->display_as('me_driver_license', 'Driver License')
                            ->display_as('me_phone_no', 'Phone No.')
                            ->display_as('me_birth_date', 'Birth Date')
                            ->display_as('me_description', 'Profile Description')
                            ->display_as('me_maiden_name', 'Maiden Name')
                            ->display_as('me_nationality', 'Nationality')
                            ->display_as('me_whatsapp_no', 'Whatsapp No.')
                            ->display_as('me_email', 'E-Mail Address')
                            ->display_as('me_company', 'Company Name')
                            ->display_as('me_reg_num', 'Company Registration No.')
                            ->display_as('me_register_date', 'Date Registered')
                            ->display_as('me_activation_status', 'Status')
                            ->display_as('g_id', 'Gender');
                    $crud->change_field_type('me_birth_date', 'date');
                    $crud->set_field_upload('me_image', 'assets/uploads/profile');
                    $crud->callback_before_insert(array($this, 'set_default_profile'));
                    $crud->callback_after_insert(array($this, 'create_profile_child'));
                    $crud->unset_edit();
                    $crud->unset_delete();
                    $crud->add_action('View', base_url() . 'assets/member/navigation_icon/view_profile.png', 'staff/manageMembers/newdesign/x211');
                    $crud->required_fields('me_image', 'me_firstname', 'me_lastname', 'me_username', 'me_email', 'me_whatsapp_no');
//					$data = $crud->render();

                    $data['members'] = $this->m_members->getAll();
                    $data['mas_id_post'] = "-1";
                    $data['mas_desc_post'] = "";
                    if ($this->input->post('mas')) {
                        $mas_idx = $this->input->post('mas');
                        $mas_id = $this->my_func->dinarpal_decrypt($mas_idx);
//                                            echo $mas_id; die();
                        $data['members'] = $this->m_members->getAll(-1, -1, $mas_id);
                        $data['mas_id_post'] = $mas_id;
                        $mas = $this->m_members_activation_status->get($mas_id);
                        $mas_desc = (isset($mas) && !empty($mas)) ? ($mas[0]->mas_desc) : ("");
                        $data['mas_desc_post'] = " of " . $mas_desc;
//                                            print_r($data['members']); die();
                    }
                    if ($this->input->get('mas')) {
                        $mas_idx = $this->input->get('mas');
                        $mas_id = $this->my_func->dinarpal_decrypt($mas_idx);
//                                            echo $mas_id; die();
                        $data['members'] = $this->m_members->getAll(-1, -1, $mas_id);
                        $data['mas_id_post'] = $mas_id;
                        $mas = $this->m_members_activation_status->get($mas_id);
                        $mas_desc = (isset($mas) && !empty($mas)) ? ($mas[0]->mas_desc) : ("");
                        $data['mas_desc_post'] = " of " . $mas_desc;
//                                            print_r($data['members']); die();
                    }
                    $data['member_activation_status'] = $this->m_members_activation_status->getAll();

                    break;
                case 'x211ba':
                    $me_idx = $this->input->get('me');
                    $me_id = $this->my_func->dinarpal_decrypt($me_idx);
                    $data['me_id'] = $me_id;
                    $data['banks'] = $this->m_banks->getAll();
                    $data['countries'] = $this->m_countries->getAll();
                    $data['ba_account_type'] = $this->m_ba_account_type->getAll();
                    $data['banks_category'] = $this->m_banks_category->getAll();
                    $data['banks_members'] = $this->m_banks_members->getAll();
                    $me_idx = $this->my_func->dinarpal_encrypt($me_id);
                    if ($this->input->post('stat') == 'add') {
                        $arr = $this->my_func->trim_array($this->input->post());

//                                                    print_r($arr); die();
                        // validation
                        $rule_output = $this->my_func->isInputValidation_array($arr);
                        if (!empty($rule_output)) {
                            $ayat = "";
                            foreach ($rule_output as $ro) {
                                $ayat .= $ro . "<br />";
                            }
                            $this->session->set_flashdata('error', $ayat);
                            redirect(site_url('staff/manageMembers/manageBanks2/x211ba?me=' . $me_idx));
                        }

                        unset($arr['stat']);
                        unset($arr['ba_id']);
                        $bol_ba = $this->m_banks_members->add($arr);
                        if ($bol_ba) {
                            //$this->session->set_flashdata('sucess', 'Bank has been added.');
                            //							redirect(site_url('member/profile/banks/19'));
                            redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_id . '#addbank'));
                        } else {
                            $this->session->set_flashdata('error', 'There is something wrong!<br />We cannot add your bank.');
                            redirect(site_url('staff/manageMembers/manageBanks2/x211ba?me=' . $me_idx));
                        }
                    }
                    if ($this->input->get('delete')) {
                        $bm_idx = $this->input->get('delete');
                        $bm_id = $this->my_func->dinarpal_decrypt($bm_idx);
                        $bol_del = $this->m_banks_members->delete($bm_id);
                        if ($bol_del) {
                            //$this->session->set_flashdata('sucess', 'Bank has been deleted.');
                        } else {
                            $this->session->set_flashdata('error', 'There is something wrong!<br />We cannot delete your bank.');
                        }
//						redirect(site_url('member/profile/banks/19'));
                        redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_id . '#addbank'));
                    }
                    break;
                case 'x211baedit':
                    $data['banks'] = $this->m_banks->getAll();
                    $data['countries'] = $this->m_countries->getAll();
                    $data['ba_account_type'] = $this->m_ba_account_type->getAll();
                    $data['banks_category'] = $this->m_banks_category->getAll();
                    if ($this->input->get('edit') && $this->input->get('me')) {

                        $me_idx = $this->input->get('me');
                        $me_id = $this->my_func->dinarpal_decrypt($me_idx);

                        $data['me_id'] = $me_id;
                        $me_idx = $this->my_func->dinarpal_encrypt($me_id);

                        $bm_idx = $this->input->get('edit');
                        $bm_id = $this->my_func->dinarpal_decrypt($bm_idx);
                        $data['bm'] = $this->m_banks_members->get($bm_id);
//                                                print_r($data['bm']); die();
                        if ($this->input->post('stat') == 'edit') {
                            $arr = $this->my_func->trim_array($this->input->post());
                            unset($arr['stat']);
                            $bm_id = $arr['bm_id'];
                            unset($arr['bm_id']);

                            // validation
                            $rule_output = $this->my_func->isInputValidation_array($arr);
                            if (!empty($rule_output)) {
                                $ayat = "";
                                foreach ($rule_output as $ro) {
                                    $ayat .= $ro . "<br />";
                                }
                                $this->session->set_flashdata('error', $ayat);
                                redirect(site_url('staff/manageMembers/manageBanks3/x211baedit?edit=' . $this->my_func->dinarpal_encrypt($bm_id) . '&me=' . $me_idx));
                            }

                            unset($arr['ba_id']);

                            $bol_ba = $this->m_banks_members->edit($bm_id, $arr);
                            if ($bol_ba) {
                                //$this->session->set_flashdata('sucess', 'Bank has been edited.');
//								redirect(site_url('member/profile/banks/19'));
                                redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_id . '#addbank'));
                            } else {
                                $this->session->set_flashdata('error', 'There is something wrong!<br />We cannot edit that bank.');
                                redirect(site_url('staff/manageMembers/manageBanks3/x211baedit?edit=' . $this->my_func->dinarpal_encrypt($bm_id) . '&me=' . $me_idx));
                            }
                        }
                    } else {
                        redirect(site_url('staff/manageMembers/manageMember/x21'));
                    }
                    break;
                case 'x211ca':
                    $me_idx = $this->input->get('me');
                    $me_id = $this->my_func->dinarpal_decrypt($me_idx);
                    $data['me_id'] = $me_id;
                    $data['cards_type'] = $this->m_cards_type->getAll();
                    $data['cards'] = $this->m_cards->getAll_basedMe($me_id);
                    if ($this->input->get('delete')) {
                        $ca_idx = $this->input->get('delete');
                        $ca_id = $this->my_func->dinarpal_decrypt($ca_idx);
                        $bol_del = $this->m_cards->delete($ca_id);
                        if ($bol_del) {
                            //$this->session->set_flashdata('sucess', 'Card has been edited.');
                        } else {
                            $this->session->set_flashdata('error', 'There is something wrong!<br />We cannot delete your card.');
                        }
                        redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_id . '#addcard'));
                    }
                    break;
                case 'x211caedit':
                    $me_idx = $this->input->get('me');
                    $me_id = $this->my_func->dinarpal_decrypt($me_idx);
                    $data['me_id'] = $me_id;
                    $data['cards_type'] = $this->m_cards_type->getAll();
                    $data['cards'] = $this->m_cards->getAll_basedMe($me_id);
                    if ($this->input->get('edit')) {
                        $ca_idx = $this->input->get('edit');
                        $ca_id = $this->my_func->dinarpal_decrypt($ca_idx);
                        $data['ca'] = $this->m_cards->get($ca_id);
                    }
                    if ($this->input->post('ca_id')) {
                        $arr = $this->my_func->trim_array($this->input->post());
                        $ca_id = $arr['ca_id'];

                        $ca_idx = $this->my_func->dinarpal_encrypt($ca_id);
                        $me_idx = $this->my_func->dinarpal_encrypt($me_id);

                        // validation
                        $rule_output = $this->my_func->isInputValidation_array($arr);
                        if (!empty($rule_output)) {
                            $ayat = "";
                            foreach ($rule_output as $ro) {
                                $ayat .= $ro . "<br />";
                            }
                            $this->session->set_flashdata('error', $ayat);
                            redirect(site_url('staff/manageMembers/manageCards3/x211caedit?edit=' . $ca_idx . '&me=' . $me_idx));
                        }
                        if (strlen($arr['ca_cvnnumber']) > 3) {
                            $this->session->set_flashdata('error', 'CVN number must only 3 digits!');
                            redirect(site_url('staff/manageMembers/manageCards3/x211caedit?edit=' . $ca_idx . '&me=' . $me_idx));
                        }

                        unset($arr['ca_id']);
                        $bol_edit = $this->m_cards->edit($ca_id, $arr);
                        if ($bol_edit) {
                            //$this->session->set_flashdata('sucess', 'Card has been edited.');
//							redirect(site_url('member/profile/cards/18'));
                            redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_id . '#addcard'));
                        } else {
                            $this->session->set_flashdata('error', 'There is something wrong!<br />We cannot edit your card.');
                            redirect(site_url('staff/manageMembers/manageCards3/x211caedit?edit=' . $ca_idx . '&me=' . $me_idx));
                        }
                    }
                    break;
                case 'x211':
                    $title = 'Manage Members Profile';

                    if ($this->input->post('staffnotes')) {
                        $staffnotes = $this->input->post('staffnotes');
                        $idme = $this->input->post('idme');
                        $me_id = $this->my_func->dinarpal_decrypt($idme);
                        $sess_temp = $this->session->all_userdata();
                        $me_id_staff_notes = $sess_temp['me_id'];
                        $data_me_notes = array(
                            'me_staff_notes' => $staffnotes,
                            'me_staff_datetime' => date('Y-m-d H:i:s'),
                            'me_staff_incharge' => $me_id_staff_notes,
                            'mrs_id' => 2
                        );
                        $this->m_members->edit($me_id, $data_me_notes);
                    }

                    $me_idx = $this->uri->segment(5);
                    $me_id = $this->my_func->dinarpal_decrypt($me_idx);
                    $me = $this->m_members->get($me_id);
//                                    print_r($me); die();
                    if (isset($me) && !empty($me)) {

                        $pts = $this->my_func->getFormulaPts($me_id);
                        $data['pts'] = $pts;
//                                        echo $pts . "<br />";
//                                        die();
//                                        $pts = 803;
                        $X = $this->my_func->getFormulaX($pts);
                        $B = $this->my_func->getFormulaB($pts);
                        $A = $this->my_func->getFormulaA($pts);
                        $lvl = $this->my_func->getLevel($pts);
                        $data['X'] = number_format($X, 2);
                        $data['A'] = number_format($A, 0);
                        $data['B'] = number_format($B, 0);
                        $data['L'] = number_format($lvl, 0);
                        $increase = $pts - $A;
                        $percentage = (($increase * 1.0) / $X) * 100;
//                                        echo "<br />" . $percentage . "%";
                        $data['P'] = number_format($percentage, 2);
//                                        $data['ranks'] = $this->m_ranks->get($lvl);
                        $data['ranks'] = $this->my_func->getMembersRank($me_id);

                        $data['profile'] = $me[0];
                        $data['gender'] = $this->m_gender->getAll();

                        $d['me'] = $me[0];
                        $vault_gold = $this->m_vault->getAll_personal(3, $me_id, -1, 1);
                        $totalItem_gold = 0.00;
                        $totalWeightVault_gold = 0.00;
                        if (isset($vault_gold) && !empty($vault_gold)) {
                            foreach ($vault_gold as $vg) {
                                $totalItem_gold += $vg->v_stock;
                                $totalWeightVault_gold += ($vg->v_stock * $vg->v_weight);
                            }
                        }
                        $vault_silver = $this->m_vault->getAll_personal(3, $me_id, -1, 2);
                        $totalItem_silver = 0.00;
                        $totalWeightVault_silver = 0.00;
                        if (isset($vault_silver) && !empty($vault_silver)) {
                            foreach ($vault_silver as $vs) {
                                $totalItem_silver += $vs->v_stock;
                                $totalWeightVault_silver += ($vs->v_stock * $vs->v_weight);
                            }
                        }
                        $d['totalItem_gold'] = $totalItem_gold;
                        $d['totalWeightVault_gold'] = $totalWeightVault_gold;
                        $d['totalItem_silver'] = $totalItem_silver;
                        $d['totalWeightVault_silver'] = $totalWeightVault_silver;
                        $data['account_info'] = $this->load->view('staff/manageMembers/accountInfo', $d, true);

                        $d2['me_id'] = $me_id;
                        $d2['cards_type'] = $this->m_cards_type->getAll();
                        $d2['cards'] = $this->m_cards->getAll_basedMe($me_id);
                        if ($this->input->get('pe') == 'addcard') {
//                                            $data['cards'] = $this->load->view('staff/manageMembers/manageCards2', $d2, true);
                            $me_idx = $this->my_func->dinarpal_encrypt($me_id);
                            redirect(site_url('staff/manageMembers/manageCards2/x211ca?me=' . $me_idx));
                        } else {
                            $data['cards'] = $this->load->view('staff/manageMembers/manageCards', $d2, true);
                        }

                        $d3['me_id'] = $me_id;
                        $d3['banks'] = $this->m_banks_members->getAll_basedMe($me_id);
                        $data['banks'] = $this->load->view('staff/manageMembers/manageBanks', $d3, true);

                        $me_idx = $this->my_func->dinarpal_encrypt($me_id);

                        if ($this->input->post('addcard') == '1') {
                            $arr = $this->input->post();
                            unset($arr['addcard']);
                            $arr = $this->my_func->trim_array($arr);
                            $rule_output = $this->my_func->isInputValidation_array($arr);

                            // validation
                            if (!empty($rule_output)) {
                                $ayat = "";
                                foreach ($rule_output as $ro) {
                                    $ayat .= $ro . "<br />";
                                }
                                $this->session->set_flashdata('error', $ayat);
//                                                    redirect(site_url('member/profile/cards2/181'));
                                redirect(site_url('staff/manageMembers/manageCards2/x211ca?me=' . $me_idx));
                            }
                            if (strlen($arr['ca_cvnnumber']) > 3) {
                                $this->session->set_flashdata('error', 'CVN number must only 3 digits!');
//                                                    redirect(site_url('member/profile/cards2/181'));
                                redirect(site_url('staff/manageMembers/manageCards2/x211ca?me=' . $me_idx));
                            }

//                                                print_r($arr); die();

                            $bol_add = $this->m_cards->add($arr);
                            if ($bol_add) {
                                //$this->session->set_flashdata('sucess', 'Card has been added.');
                                redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_id . '#addcard'));
                            } else {
                                $this->session->set_flashdata('error', 'There is something wrong!<br />We cannot add your card.');
                                redirect(site_url('staff/manageMembers/manageCards2/x211ca?me=' . $me_idx));
                            }
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/manageMembers/manageMember/x21'));
                    }
                    break;

                case 'x212':
                    $arr = $this->input->post();
                    print_r($arr);
                    die();
                    break;
                case 'x22':
                    $title = 'Members Account Summary';
                    $crud->set_subject($title);
                    $crud->set_table('dinarpal_account');
                    $crud->set_relation('me_id', 'members', 'me_username', 'ml_id = 3');
                    $crud->display_as('me_id', 'Username')
                            ->display_as('da_gold_rahnu_gram', 'E-Rahnu Gold (gram)')
                            ->display_as('da_gold_rahnu_money', 'E-Rahnu Dinar (' . $this->my_func->getCurrency() . ')')
                            ->display_as('da_gold_balance', 'E-Dinar Balance (' . $this->my_func->getCurrency() . ')')
                            ->display_as('da_gold_reserved', 'E-Gold Reserved (gram)')
                            ->display_as('da_silver_rahnu_gram', 'E-Rahnu Silver (gram)')
                            ->display_as('da_silver_rahnu_money', 'E-Rahnu Dirham (' . $this->my_func->getCurrency() . ')')
                            ->display_as('da_silver_balance', 'E-Dirham Balance (' . $this->my_func->getCurrency() . ')')
                            ->display_as('da_silver_reserved', 'E-Silver Reserved (gram)')
                            ->display_as('da_point_balance', 'E-Point Balance');
                    $crud->unset_add();
                    $crud->unset_delete();
                    $crud->unset_edit();
                    $data = $crud->render();
                    break;
                case 'x23':
                    //$data['construction_dinarpal'] = 1;
                    $title = 'Members Profile';
                    break;
                case 'xa21a':

                    $title = 'Create Members Account';
                    break;
                case 'x24':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Members Safe Keeping Summary';
                    break;
                case 'x25':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Members Transaction History';
                    break;
                case 'x26':
                    //$data['construction_dinarpal'] = 1;
                    $title = 'Members Purchase &amp; Keep Summary';
                    break;
                case 'x27':
                    //$data['construction_dinarpal'] = 1;
                    $title = 'Members Won Bid History';
                    break;
                case 'x28':
                    $title = "Member List";
                    $data['verify'] = $this->m_members_verification_status->getAll();
                    $data['list'] = $this->m_members->overviewDetail();
                    //$data['list'] = $this->m_members->memberdocument();
                    break;
                case 'x29':
                    $title = 'Blast E-mail';
                    if ($this->input->post('blastemail') == '1') {
                        $arr = $this->input->post();

//                                        print_r($arr['msg']); die();

                        $meta_utf8 = "<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />";
                        $to = $arr['to'];

                        if (isset($arr['sendAll']) && !empty($arr['sendAll'])) {
                            $me_all = $this->m_members->getAll_users();
                            $to = "";
                            foreach ($me_all as $ma) {
                                $to .= $ma->me_username . ";";
                            }
                        }

                        $to = str_replace(" ", "", $to);
                        $pecah = explode(";", $to);
                        $sess = $this->session->all_userdata();
                        $me_id_staff = $sess['me_id'];
                        foreach ($pecah as $p) {
                            if (isset($p) && !empty($p) && $p != '' && $p != null) {
                                $in = $p;
                                $me = $this->m_members->getByEmailOrUsername($in, $in);
                                if (isset($me) && !empty($me)) {
                                    $me_id_to = $me[0]->me_id;
                                    $data_be = array(
                                        'me_id_from' => $me_id_staff,
                                        'me_id_to' => $me_id_to,
                                        'be_subject' => $arr['subject'],
                                        'be_msg' => $arr['msg'],
                                        'be_status' => 1
                                    );
                                    $email = $me[0]->me_email;
                                    $subj = $arr['subject'];
                                    $msg = $arr['msg'];
                                    $be_id = $this->m_blast_email->add($data_be);
                                    if ($be_id) {
                                        $msg = $meta_utf8 . $msg;
//                                                        print_r($msg); die();
                                        $this->my_func->send_email($email, $subj, $msg);
                                    }
                                }
                            }
                        }
                        $this->session->set_flashdata('sucess', 'Send success. ..');
                        redirect(site_url('staff/manageMembers/blastemail/x29'));
                    }
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function getBranch($stat = -1) {
        $ba_id = $this->input->post('ba_id');
        $bbi_id = ($stat == 1) ? ($this->input->post('bbi_id')) : (-1);
        $data['ba_id'] = $ba_id;
        $data['bbi_id'] = $bbi_id;
//            echo $bbi_id;
        $data['banks_branch'] = $this->m_banks_branch_info->getBanks($ba_id);
        echo $this->load->view('staff/manageMembers/ajax/getBranch', $data, true);
    }

    public function updateProfile() {
        $me_id = $this->input->post('me_id');
        $me_idx = $this->my_func->dinarpal_encrypt($me_id);
        $data_receive = $this->input->post();

        unset($data_receive['table1_length']);
        unset($data_receive['table2_length']);
        unset($data_receive['table3_length']);

        $data_member = array();
        $data_biw = array();
        foreach ($data_receive as $dr_item => $dr_val) {
            if (strpos($dr_item, 'biw') !== false) {
                $data_biw[$dr_item] = $dr_val;
            } else {
                $data_member[$dr_item] = $dr_val;
            }
        }
        unset($data_member['form1']);
        $me_id = $data_member['me_id'];

//                echo "<pre>"; print_r($data_member); echo "</pre>"; die();
        // upload profile picture.
        $data_upload = $this->my_func->do_upload('me_image');
        if (isset($data_upload['upload_data'])) {
            $data_member['me_image'] = $data_upload['upload_data']['file_name'];
        } else {
            $data_member['me_image'] = $this->input->post('me_image2');
        }
        $data_member['me_image2'] = NULL;
        unset($data_member['me_image2']);
        //IF exceedes the maximum height or width
        if (isset($data_upload['error'])) {
            if (strpos($data_upload['error'], 'exceedes the maximum height or width') === false) {
                
            } else {
                $this->session->set_flashdata('error', $data_upload['error']);
            }
        }

        // upload company doc 1
        $me_company_doc1 = $this->my_func->do_upload('me_company_doc1', './assets/uploads/documents');
        if (isset($me_company_doc1['upload_data'])) {
//                    echo "<pre>"; print_r($me_company_doc1['upload_data']); echo "</pre>"; die();
            $data_member['me_company_doc1'] = $me_company_doc1['upload_data']['file_name'];
        } else {
            $data_member['me_company_doc1'] = $this->input->post('me_company_doc12');
        }
        $data_member['me_company_doc12'] = NULL;
        unset($data_member['me_company_doc12']);
        // ignore 'did not upload file' error message.
        if (isset($me_company_doc1['error'])) {
            if (strpos($me_company_doc1['error'], 'You did not select a file to upload') === false) {
                $this->session->set_flashdata('error', $me_company_doc1['error']);
                redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_idx));
            }
        }

        // upload company doc 2
        $me_company_doc2 = $this->my_func->do_upload('me_company_doc2', './assets/uploads/documents');
        if (isset($me_company_doc2['upload_data'])) {
            $data_member['me_company_doc2'] = $me_company_doc2['upload_data']['file_name'];
        } else {
            $data_member['me_company_doc2'] = $this->input->post('me_company_doc22');
        }
        $data_member['me_company_doc22'] = NULL;
        unset($data_member['me_company_doc22']);
        // ignore 'did not upload file' error message.
        if (isset($me_company_doc2['error'])) {
            if (strpos($me_company_doc2['error'], 'You did not select a file to upload') === false) {
                $this->session->set_flashdata('error', $me_company_doc2['error']);
                redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_idx));
            }
        }

        // verification document 1
        $dd1 = $this->m_dinarpal_document->get_member($me_id, 1); // 1 = ddt_id
//                print_r($dd1); die();
        if (!isset($dd1) || empty($dd1)) {
            $file1 = $this->my_func->do_upload('file1', './assets/uploads/documents');
            if (isset($file1['upload_data'])) {
                $data_file1 = array(
                    'me_id' => $me_id,
                    'dd_filename' => $file1['upload_data']['file_name'],
                    'dd_size' => $file1['upload_data']['file_size'],
                    'dd_type' => $file1['upload_data']['file_type'],
                    'ddt_id' => 1,
                    'mvs_id' => 1,
                    'mv_id' => $mv_id
                );
                $this->m_dinarpal_document->add($data_file1);
            } else {
                if (strpos($file1['error'], 'You did not select a file to upload') === false) {
                    $this->session->set_flashdata('error', $file1['error']);
                    redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_idx));
                }
            }
        }

        // verification document 2
        $dd2 = $this->m_dinarpal_document->get_member($me_id, 2); // 2 = ddt_id
        if (!isset($dd2) || empty($dd2)) {
            $file2 = $this->my_func->do_upload('file2', './assets/uploads/documents');
            if (isset($file2['upload_data'])) {
                $data_file2 = array(
                    'me_id' => $me_id,
                    'dd_filename' => $file2['upload_data']['file_name'],
                    'dd_size' => $file2['upload_data']['file_size'],
                    'dd_type' => $file2['upload_data']['file_type'],
                    'ddt_id' => 2,
                    'mvs_id' => 1,
                    'mv_id' => $mv_id
                );
                $this->m_dinarpal_document->add($data_file2);
            } else {
                if (strpos($file2['error'], 'You did not select a file to upload') === false) {
                    $this->session->set_flashdata('error', $file2['error']);
                    redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_idx));
                }
            }
        }

//                echo "<pre>"; print_r($data_member); echo "</pre>"; die();
//                echo "<pre>"; print_r($data_biw); echo "</pre>"; die();

        $bol1 = $this->m_members->edit($me_id, $data_member);
        $bol2 = $this->m_bene_info_waris->edit_me($me_id, $data_biw);

        if ($bol1 && $bol2) {
            $this->session->set_flashdata('sucess', 'Update success ..');
        } else {
            $this->session->set_flashdata('error', 'Update failed!');
        }
        redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_idx));
    }

    function deleteVerificationPage($stat = 1) {
        $me_idx = $this->input->get('me');
        $me_id = $this->my_func->dinarpal_decrypt($me_idx);
        $me_idx1 = $this->my_func->dinarpal_encrypt($me_id);
        if ($stat == 1) {
            if ($this->input->get('delete')) {
                $dd_idx = $this->input->get('delete');
                $dd_id = $this->my_func->dinarpal_decrypt($dd_idx);
                $dd = $this->m_dinarpal_document->get($dd_id);
                if (isset($dd) && !empty($dd)) {
                    $dd_filename = $dd[0]->dd_filename;
                    $path = './assets/uploads/documents/' . $dd_filename;
                    unlink($path);
                    $bol_del = $this->m_dinarpal_document->delete($dd_id);
                    if ($bol_del) {
                        //$this->session->set_flashdata('sucess', 'Card has been edited.');
                    } else {
                        $this->session->set_flashdata('error', 'There is something wrong!<br />We cannot delete your document.');
                    }
                }
            }
        }
        redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_idx1));
    }

    function verifyMember() {
        $me_idx = $this->input->get('me');
        $dd_idx = $this->input->get('dd');
        $me_id = $this->my_func->dinarpal_decrypt($me_idx);
        $dd_id = $this->my_func->dinarpal_decrypt($dd_idx);
        $me_idx1 = $this->my_func->dinarpal_encrypt($me_id);

        $data_dd = array(
            'mvs_id' => 2
        );
        $this->m_dinarpal_document->edit($dd_id, $data_dd);

        redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_idx1));
    }

    function verifyMemberAccount() {
        $me_idx = $this->input->get('me');
        $me_id = $this->my_func->dinarpal_decrypt($me_idx);
        $me_idx1 = $this->my_func->dinarpal_encrypt($me_id);

        $sess = $this->session->all_userdata();
        $me_id_staff = $sess['me_id'];

        $ft_id = 1; // verification fee
        $ft = $this->m_fee_type->get($ft_id);
        $ft_price = 0.00;
        if (isset($ft) && !empty($ft)) {
            if ($ft[0]->ft_type == 'STATIC') {
                $ft_price = $ft[0]->ft_price;
            } else if ($ft[0]->ft_type == 'DYNAMIC') {
                
            }
        }

        $gst_rate = $this->my_func->getGST();
        $gst_price = $gst_rate * $ft_price;

        $amount = $gst_price + $ft_price;

        $at_id = 1; // dinar only
        $status_pay = 2;
        $status_receive = 1;
        $tr_datetime = date('Y-m-d H:i:s');
        $me_id_admin = $this->my_func->getMeAdminHQ();

        $bol_pay = $this->debit_kredit($me_id, $amount, $at_id, $status_pay);
        if ($bol_pay) {

            $this->payGeneology($me_id, $at_id, $ft_price, $tr_datetime);

//                $bol_receive = $this->debit_kredit($me_id_admin, $amount, $at_id, $status_receive);
            $bol_receive = true;
            $this->debit_kredit_fund($me_id_admin, $ft_price, 'FEES', 1);
            $this->debit_kredit_fund($me_id_admin, $gst_price, 'GST', 1);
            if ($bol_receive) {

                $data_tr1 = array(
                    'me_id_from' => $me_id,
                    'me_id_to' => $me_id_admin,
                    'tr_amount' => $ft_price,
                    'at_id' => 6,
                    'ft_id' => 1,
                    'tr_notes' => 'Account Verification Fee',
                    'tr_datetime' => $tr_datetime,
                    'tt_id' => 34,
                    'ts_id' => 1,
                    'me_id_staff' => $me_id_staff
                );
                $tr1 = $this->m_transaction->add($data_tr1);

                $data_tr2 = array(
                    'me_id_from' => $me_id,
                    'me_id_to' => $me_id_admin,
                    'tr_amount' => $gst_price,
                    'at_id' => 7,
                    'ft_id' => 13,
                    'tr_notes' => 'GST Tax Fee',
                    'tr_datetime' => $tr_datetime,
                    'tt_id' => 25,
                    'ts_id' => 1,
                    'me_id_staff' => $me_id_staff
                );
                $tr2 = $this->m_transaction->add($data_tr2);
            } else {
                $this->debit_kredit($me_id, $amount, $at_id, $status_receive);
                redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_idx1));
            }
        } else {
            redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_idx1));
        }

        $dd1 = $this->m_dinarpal_document->get_member($me_id, 1);
        $dd2 = $this->m_dinarpal_document->get_member($me_id, 2);
        $mvs_id1 = (isset($dd1) && !empty($dd1)) ? ($dd1[0]->mvs_id) : (-1);
        $mvs_id2 = (isset($dd2) && !empty($dd2)) ? ($dd2[0]->mvs_id) : (-1);

        if ($mvs_id1 == 2 && $mvs_id2 == 2) {
            $data_me = array(
                'me_activation_status' => 3
            );
            $this->m_members->edit($me_id, $data_me);
        }

        redirect(site_url('staff/manageMembers/newdesign/x211/' . $me_idx1));
    }

    function showVerificationPage() {
        $me_idx = $this->input->post('me_idx');
        $me_id = $this->my_func->dinarpal_decrypt($me_idx);
        $data['dd1'] = $this->m_dinarpal_document->get_member($me_id, 1); // 1 = ddt_id
        $data['dd2'] = $this->m_dinarpal_document->get_member($me_id, 2); // 2 = ddt_id
        $data['members_verification'] = $this->m_members_verification->get_member($me_id);
        $data['dinarpal_document'] = $this->m_dinarpal_document->get_member($me_id);
        $data['me_id'] = $me_id;
        $me = $this->m_members->get($me_id);
        $data['me_activation_status'] = (isset($me) && !empty($me)) ? ($me[0]->me_activation_status) : (0);
        echo $this->load->view('staff/manageMembers/verifyPage', $data, true);
    }
    
    function showCompanyPage() {
        $me_idx = $this->input->post('me_idx');
        $me_id = $this->my_func->dinarpal_decrypt($me_idx);
        $data['dd1'] = $this->m_dinarpal_document->get_member($me_id, 1); // 1 = ddt_id
        $data['dd2'] = $this->m_dinarpal_document->get_member($me_id, 2); // 2 = ddt_id
        $data['members_verification'] = $this->m_members_verification->get_member($me_id);
        $data['dinarpal_document'] = $this->m_dinarpal_document->get_member($me_id);
        $data['me_id'] = $me_id;
        $me = $this->m_members->get($me_id);
        $data['me_activation_status'] = (isset($me) && !empty($me)) ? ($me[0]->me_activation_status) : (0);
        echo $this->load->view('staff/manageMembers/companyPage', $data, true);
    }

    function getAjaxMemberList() {
        $arr = $this->input->post();
        $data['list'] = $this->m_members->overviewDetail($arr['verify'], $arr['status']);
        $htmlCode = $this->load->view('staff/manageMembers/ajax/ajaxMemberList', $data, true);
        echo $htmlCode;
    }

    public function generalStatistics($output = 'dashboard', $menu1 = '11') {
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                case 'x31':
                    $title = 'Stats Overview';
                    break;
            }
            $this->_papar('', $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    function payGeneology($me_id, $at_id, $amount, $datetime, $gac_status=1) {
        $ga = $this->m_geneology_aff->getParent($me_id);
        $me_id_parent = (isset($ga) && !empty($ga)) ? ($ga[0]->me_id_parent) : (0);
        $ga_id = (isset($ga) && !empty($ga)) ? ($ga[0]->ga_id) : (0);
        $geneology_rate = $this->my_func->getGeneologyRate();
        $pay_amount = $amount * $geneology_rate;
        $data_gac = array(
            'ga_id' => $ga_id,
            'gac_datetime' => $datetime,
            'gac_amount' => $pay_amount,
            'gac_status' => $gac_status
        );
        $gac_id = $this->m_geneology_aff_child->add($data_gac);
        if ($gac_id) {
            return true;
        } else {
            return false;
        }
    }

    public function transactions($output = 'dashboard', $menu1 = '11') {
        $data = array();
        $sess = $this->session->all_userdata();
        $me_id_staf = $sess['me_id'];
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                case '71':
                    $title = 'All Transactions';
                    break;
                case '721':
                    $data['payment_temp'] = $this->session->userdata('payment_temp');
                case '72':
                    $title = 'Send Payment';
                    $data['payment_type'] = $this->m_payment_type->getAll();
                    $data['account_type'] = $this->m_account_type->getAll();
                    $data['sess'] = $this->session->all_userdata();
                    break;
                case 'x41':
                    $title = 'Overview';
                    $transaction_type = $this->m_transaction_type->getAll();
                    if (!empty($transaction_type) && isset($transaction_type)) {
                        $ii = 0;
                        foreach ($transaction_type as $tt) {
                            $data['tt']['_' . $ii]['count'] = sizeof($this->m_transaction->getAll(-1, 'DESC', $this->my_func->getLimitRows(), -1, $tt->tt_id));
                            $data['tt']['_' . $ii]['tt_id'] = $tt->tt_id;
                            $data['tt']['_' . $ii]['tt_desc'] = $tt->tt_desc;
                            $ii += 1;
                        }
                        $data['tt_count'] = $ii;
                    }
                    $transaction_status = $this->m_transaction_status->getAll();
                    if (!empty($transaction_status) && isset($transaction_status)) {
                        $ii = 0;
                        foreach ($transaction_status as $ts) {
                            $data['ts']['_' . $ii]['count'] = sizeof($this->m_transaction->getAll(-1, 'DESC', $this->my_func->getLimitRows(), $ts->ts_id, -1));
                            $data['ts']['_' . $ii]['ts_id'] = $ts->ts_id;
                            $data['ts']['_' . $ii]['ts_desc'] = $ts->ts_desc;
                            $ii += 1;
                        }
                        $data['ts_count'] = $ii;
                    }
                    break;
                case 'x43':
                    $title = 'Statistic of Transaction';
                    $data['transaction1'] = $this->m_transaction->getAll_graph(-1, 'ASC', $this->my_func->getLimitRows());
                    $data['transaction_type'] = $this->m_transaction_type->getAll();
                    $data['transaction_status'] = $this->m_transaction_status->getAll();
                    if ($this->input->post('searchform')) {
                        $arr = $this->input->post();
                        $tt_id = $arr['tt_id'];
                        $ts_id = $arr['ts_id'];
                        $year = $arr['year'];
                        $month = $arr['month'];
                        $amount_type = $arr['amount_type'];
                        $at_ids = array();
                        $isMoney = false;
                        if ($amount_type == '1') {
                            $isMoney = true;
                        } else if ($amount_type == '2') {
                            $at_ids[0] = '2';
                        } else if ($amount_type == '3') {
                            $at_ids[0] = '4';
                        }
                        $unit = $this->my_func->getCurrency();
                        if ($amount_type == '2' || $amount_type == '4') {
                            $unit = 'GRM';
                        } else if ($amount_type != '2' && $amount_type != '4') {
                            $unit = $this->my_func->getCurrency();
                        }
                        $data['unit'] = $unit;
                        $data['arr'] = $arr;
                        $data['transaction1'] = $this->m_transaction->getAll_graph(-1, 'ASC', $this->my_func->getLimitRows(), $ts_id, $tt_id, '', $isMoney, $year, $month, $at_ids);
                    } else {
                        if ($this->input->get('key')) {
                            $arr1 = explode('|', $this->my_func->dinarpal_decrypt($this->input->get('key')));
                            $arr['tt_id'] = $arr1[0];
                            $arr['ts_id'] = $arr1[1];
                            $data['arr'] = $arr;
                            $data['transaction1'] = $this->m_transaction->getAll_graph(-1, 'ASC', $this->my_func->getLimitRows(), $arr['ts_id'], $arr['tt_id']);
                        } else {
                            $data['transaction1'] = $this->m_transaction->getAll_graph(-1, 'ASC', $this->my_func->getLimitRows());
                        }
                    }
                    if ($this->input->get('ttid')) {
                        $tt_id = $this->input->get('ttid');
                        $data['transaction1'] = $this->m_transaction->getAll_graph(-1, 'ASC', $this->my_func->getLimitRows(), -1, $tt_id);
                    }
                    if ($this->input->get('tsid')) {
                        $ts_id = $this->input->get('tsid');
                        $data['transaction1'] = $this->m_transaction->getAll_graph(-1, 'ASC', $this->my_func->getLimitRows(), $ts_id, -1);
                    }
                    break;
                case 'x42':
                    $title = 'Manage Transaction';
                    $data['transaction1'] = $this->m_transaction->getAll(-1, 'DESC', $this->my_func->getLimitRows());
                    $data['transaction_type'] = $this->m_transaction_type->getAll();
                    $data['transaction_status'] = $this->m_transaction_status->getAll();
                    if ($this->input->post('searchform')) {
                        $arr = $this->input->post();
                        $tt_id = $arr['tt_id'];
                        $ts_id = $arr['ts_id'];
                        $data['arr'] = $arr;
                        $data['transaction1'] = $this->m_transaction->getAll(-1, 'DESC', $this->my_func->getLimitRows(), $ts_id, $tt_id);
                    } else {
                        if ($this->input->get('key')) {
                            $arr1 = explode('|', $this->my_func->dinarpal_decrypt($this->input->get('key')));
                            $arr['tt_id'] = $arr1[0];
                            $arr['ts_id'] = $arr1[1];
                            $data['arr'] = $arr;
                            $data['transaction1'] = $this->m_transaction->getAll(-1, 'DESC', $this->my_func->getLimitRows(), $arr['ts_id'], $arr['tt_id']);
                        } else {
                            $data['transaction1'] = $this->m_transaction->getAll(-1, 'DESC', $this->my_func->getLimitRows());
                        }
                    }
                    if ($this->input->get('ttid')) {
                        $tt_id = $this->input->get('ttid');
                        $data['transaction1'] = $this->m_transaction->getAll(-1, 'DESC', $this->my_func->getLimitRows(), -1, $tt_id);
                    }
                    if ($this->input->get('tsid')) {
                        $ts_id = $this->input->get('tsid');
                        $data['transaction1'] = $this->m_transaction->getAll(-1, 'DESC', $this->my_func->getLimitRows(), $ts_id, -1);
                    }

                    $this->session->unset_userdata('gs_sub_total');
                    $this->session->unset_userdata('gs_discount');
                    $this->session->unset_userdata('gs_fee');
                    $this->session->unset_userdata('gs_gst');
                    $this->session->unset_userdata('gs_grand_total');
                    $this->session->unset_userdata('gs_datetime');
                    $this->session->unset_userdata('gs_amil');
                    $this->session->unset_userdata('me_rec_fullname');
                    $this->session->unset_userdata('me_rec_username');
                    $this->session->unset_userdata('pt_desc');
                    $this->session->unset_userdata('at_desc');
                    $this->session->unset_userdata('tr_datetime');
                    $this->session->unset_userdata('tr_notes');
                    $this->session->unset_userdata('total_weight');
                    $this->session->unset_userdata('amount_trans');
                    $this->session->unset_userdata('send_fee_amount');
                    $this->session->unset_userdata('tr_id');
                    $this->session->unset_userdata('bank_to');
                    $this->session->unset_userdata('bank_holder');
                    $this->session->unset_userdata('bank_name');
                    $this->session->unset_userdata('tr_amount');
                    $this->session->unset_userdata('ft_price');
                    $this->session->unset_userdata('bc_fee');
                    $this->session->unset_userdata('gst_tax');
                    $this->session->unset_userdata('amount_get');

                    break;
                case 'x421':
                    $title = 'Transaction Detail';
                    if ($this->input->get('trid')) {
                        $tr_id = $this->my_func->dinarpal_decrypt($this->input->get('trid'));
                        $trDetail = $this->m_transaction->get($tr_id);

                        $tt_code = $trDetail[0]->tt_code;

                        $data['trDetail'] = $trDetail;
                        $data['pageResit'] = $this->load->view('staff/transactions/detailTransaction_BACKUP', $data, true);

//                                                echo $tt_code; die();

                        $path = APPPATH . "views/staff/resit/$tt_code.php";
                        $ise = file_exists($path);

                        if ($ise) {
                            $data['pageResit'] = $this->load->view('staff/resit/' . $tt_code, $data, true);
                        } else {
                            $data['pageResit'] = $this->load->view('staff/resit/inProgress', '', true);
                        }
                    }
                    if ($this->input->post()) {

                        $arrpost = $this->input->post();
//                                            print_r($arrpost); die();

                        $admin_comment = $arrpost['admin_comment'];
                        $tr_notes_admin = "";
                        if ($admin_comment != "" && $admin_comment != null && $admin_comment != '') {
                            $tr_notes_admin = "<br />Comment from admin:-<br />" . $admin_comment;
                        }

                        $statApprove = $this->my_func->dinarpal_decrypt($this->input->post('statApprove'));
                        $me_id = $this->my_func->dinarpal_decrypt($this->input->post('me_id'));
                        $at_id = $this->my_func->dinarpal_decrypt($this->input->post('at_id'));
                        $tt_id = $this->my_func->dinarpal_decrypt($this->input->post('tt_id'));
                        $tr_id = $this->my_func->dinarpal_decrypt($this->input->post('tr_id'));
                        $ts_id = $this->my_func->dinarpal_decrypt($this->input->post('ts_id'));
                        $bc_id = $this->my_func->dinarpal_decrypt($this->input->post('bc_id'));

                        $tr_datetime = date('Y-m-d H:i:s');

//                                            print_r($me_id); die();
                        // cancel approval
                        if ($statApprove == 4) {
                            $tr_temp1 = $this->m_transaction->get($tr_id);
                            $tr_notes_temp1 = (isset($tr_temp1) && !empty($tr_temp1)) ? ($tr_temp1[0]->tr_notes) : ('');
                            $tr_notes_temp1 .= $tr_notes_admin;
                            $data_tr = array(
                                'tr_notes' => $tr_notes_temp1,
                                'ts_id' => 4, // canceled
                                'me_id_staff' => $me_id_staff
                            );
                            $this->m_transaction->edit($tr_id, $data_tr);

                            $tt = $this->m_transaction_type->get($tt_id);
                            $tr_id_code = (isset($tt) && !empty($tt)) ? ($tt[0]->tt_code) : ("--");
                            $tr_id_code2 = $this->my_func->format_digit($tr_id);
                            $tr_id_code_email = $tr_id_code . $tr_id_code2;

                            $me_penerima = $this->m_members->get($me_id);
                            $me_to_email = (isset($me_penerima) && !empty($me_penerima)) ? ($me_penerima[0]->me_email) : ("umaqgeek@gmail.com");
//                                                $me_to_email = "umaqgeek@gmail.com";

                            $currency = $this->my_func->getCurrency();

                            $to = $me_to_email;
                            $subject = "DinarPal Transaction - Canceled";
                            $msg = "Your transaction ID "
                                    . $tr_id_code_email
                                    . " has been canceled.";
                            $this->my_func->send_email($to, $subject, $msg);

                            $tr_idx = $this->my_func->dinarpal_encrypt($tr_id);
                            redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_idx));
                        }

                        // approve liquid buy back gold/silver
                        if ($tt_id == 17) {
                            // approve
                            if ($statApprove == 1) {

                                $li = $this->m_liquid_item->get_tr($tr_id);

                                if (isset($li) && !empty($li)) {

                                    $v_id_liquid = $li[0]->v_id;
                                    $v_liquid = $this->m_vault->get($v_id_liquid);

//                                                        print_r($v_liquid); die();

                                    $sl_id = $li[0]->sl_id;
                                    $me_id_admin = $this->my_func->getMeAdmin($sl_id);
                                    $at_id = ($v_liquid[0]->it_id == 1) ? (1) : (3);

                                    $price = (is_numeric($li[0]->li_sellprice)) ? ($li[0]->li_sellprice) : (0);
                                    $price_rate = (is_numeric($li[0]->li_buypricerate)) ? ($li[0]->li_buypricerate) : (0);
                                    $price_after = $price * $price_rate;

                                    $me_user = $this->m_members->get($me_id);
                                    $me_account_type_user = (isset($me_user) && !empty($me_user)) ? ($me_user[0]->me_account_type) : (1);

                                    $gst_rate = $this->my_func->getGST();
                                    $gst_tax = 0.00;

                                    if ($me_account_type_user == 2) {
                                        $gst_tax = $gst_rate * $price_after;
                                    }

                                    $price_after_gst = $price_after - $gst_tax;

//                                                        print_r("$price_after_gst = $price_after - $gst_tax;"); die();
//                                                        $bol_pay_from_admin = $this->debit_kredit($me_id_admin, $price_after_gst, $at_id, 2);
                                    $bol_pay_from_admin = $this->debit_kredit_fund($me_id_admin, $price_after_gst, 'BUYBACK', 2);
                                    if ($bol_pay_from_admin) {

                                        $this->debit_kredit_fund($me_id_admin, $gst_tax, 'GST', 1);

                                        $bol_receive_to_user = $this->debit_kredit($me_id, $price_after_gst, $at_id, 1);
                                        if ($bol_receive_to_user) {

                                            // getting paid after convert item to myr
                                            $data_tr1 = array(
                                                'me_id_from' => $me_id_admin,
                                                'me_id_to' => $me_id,
                                                'tr_amount' => $price_after,
                                                'at_id' => 12,
                                                'ft_id' => 8,
                                                'tr_datetime' => $tr_datetime,
                                                'tr_notes' => 'Getting paid after convert item to ' . $this->my_func->getCurrency() . '.' . $tr_notes_admin,
                                                'tt_id' => 46,
                                                'ts_id' => 1
                                            );
                                            $tr_id1 = $this->m_transaction->add($data_tr1);

                                            if ($gst_tax > 0) {
                                                // return gst paid
                                                $data_tr2 = array(
                                                    'me_id_from' => $me_id,
                                                    'me_id_to' => $me_id_admin,
                                                    'tr_amount' => $gst_tax,
                                                    'at_id' => 7,
                                                    'ft_id' => 13,
                                                    'tr_datetime' => $tr_datetime,
                                                    'tr_notes' => 'GST Tax Fee after getting paid.' . $tr_notes_admin,
                                                    'tt_id' => 25,
                                                    'ts_id' => 1
                                                );
                                                $tr_id2 = $this->m_transaction->add($data_tr2);
                                            }

                                            $li_id = $li[0]->li_id;
                                            $data_li = array(
                                                'lis_id' => 2, // completed
                                                'li_datetime' => $tr_datetime
                                            );
                                            $this->m_liquid_item->edit($li_id, $data_li);

                                            $v_id = $li[0]->v_id;
                                            $data_v = array(
                                                'vt_id' => 3,
                                                'me_id' => $me_id_admin
                                            );
                                            $this->m_vault->edit($v_id, $data_v);

                                            $tr_temp1 = $this->m_transaction->get($tr_id);
                                            $tr_notes_temp1 = (isset($tr_temp1) && !empty($tr_temp1)) ? ($tr_temp1[0]->tr_notes) : ('');
                                            $tr_notes_temp1 .= $tr_notes_admin;
                                            $data_tr = array(
                                                'tr_notes' => $tr_notes_temp1,
                                                'tr_datetime' => $tr_datetime,
                                                'ts_id' => 1, // completed
                                                'me_id_staff' => $me_id_staff
                                            );
                                            $this->m_transaction->edit($tr_id, $data_tr);

                                            $tt = $this->m_transaction_type->get($tt_id);
                                            $tr_id_code = (isset($tt) && !empty($tt)) ? ($tt[0]->tt_code) : ("--");
                                            $tr_id_code2 = $this->my_func->format_digit($tr_id);
                                            $tr_id_code_email = $tr_id_code . $tr_id_code2;

                                            $me_penerima = $this->m_members->get($me_id);
                                            $me_to_email = (isset($me_penerima) && !empty($me_penerima)) ? ($me_penerima[0]->me_email) : ("umaqgeek@gmail.com");
                                            //                                                        $me_to_email = "umaqgeek@gmail.com";

                                            $currency = $this->my_func->getCurrency();

                                            $to = $me_to_email;
                                            $subject = "DinarPal Convert to " . $currency . " - Completed";
                                            $msg = "Your Convert to " . $currency . " ID "
                                                    . $tr_id_code_email
                                                    . " has been accepted and completed.";
                                            $this->my_func->send_email($to, $subject, $msg);

                                            $tr_idx = $this->my_func->dinarpal_encrypt($tr_id);
                                            redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_idx));
                                        } else {
//                                                                $bol_pay_from_admin = $this->debit_kredit($me_id_admin, $price_after_gst, $at_id, 1);
                                            $bol_pay_from_admin = $this->debit_kredit_fund($me_id_admin, $price_after_gst, 'BUYBACK', 1);
                                            $this->debit_kredit_fund($me_id_admin, $gst_tax, 'GST', 2);
                                            $tr_idx = $this->my_func->dinarpal_encrypt($tr_id);
                                            redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_idx));
                                        }
                                    } else {
                                        $tr_idx = $this->my_func->dinarpal_encrypt($tr_id);
                                        redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_idx));
                                    }
                                }
                            } else if ($statApprove == 5) { //declined
                                $li = $this->m_liquid_item->get_tr($tr_id);
                                $tr_datetime = date('Y-m-d H:i:s');

//                                                    print_r($li); die();

                                if (isset($li) && !empty($li)) {

                                    $li_id = $li[0]->li_id;
                                    $data_li = array(
                                        'lis_id' => 3, // reject
                                        'li_datetime' => $tr_datetime
                                    );
                                    $this->m_liquid_item->edit($li_id, $data_li);

                                    $v_id = $li[0]->v_id;
                                    $me_id = $li[0]->me_id;
                                    $data_v = array(
                                        'vt_id' => 3,
                                        'me_id' => $me_id
                                    );
                                    $this->m_vault->edit($v_id, $data_v);

                                    $sess = $this->session->all_userdata();
                                    $me_id_staff = $sess['me_id'];

                                    $tr_temp1 = $this->m_transaction->get($tr_id);
                                    $tr_notes_temp1 = (isset($tr_temp1) && !empty($tr_temp1)) ? ($tr_temp1[0]->tr_notes) : ('');
                                    $tr_notes_temp1 .= $tr_notes_admin;
                                    $data_tr = array(
                                        'tr_notes' => $tr_notes_temp1,
                                        'tr_datetime' => $tr_datetime,
                                        'ts_id' => 5, // declined
                                        'me_id_staff' => $me_id_staff
                                    );
                                    $this->m_transaction->edit($tr_id, $data_tr);

                                    $tt = $this->m_transaction_type->get($tt_id);
                                    $tr_id_code = (isset($tt) && !empty($tt)) ? ($tt[0]->tt_code) : ("--");
                                    $tr_id_code2 = $this->my_func->format_digit($tr_id);
                                    $tr_id_code_email = $tr_id_code . $tr_id_code2;

                                    $me_penerima = $this->m_members->get($me_id);
                                    $me_to_email = (isset($me_penerima) && !empty($me_penerima)) ? ($me_penerima[0]->me_email) : ("umar@dinarpal.com");
//                                                        $me_to_email = "umaqgeek@gmail.com";

                                    $currency = $this->my_func->getCurrency();

                                    $to = $me_to_email;
                                    $subject = "DinarPal Convert to " . $currency . " - Declined";
                                    $sub_str = ($tt_id == 2) ? ("withdrawal") : ("deposit");
                                    $msg = "Your Convert to " . $currency . " ID "
                                            . $tr_id_code_email
                                            . " has been declined.";
                                    $this->my_func->send_email($to, $subject, $msg);

                                    $tr_idx = $this->my_func->dinarpal_encrypt($tr_id);
                                    redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_idx));
                                }
                            }
                        }

                        // withdrawal = 2; deposit = 3;
                        if ($tt_id == 2 || $tt_id == 3) {
                            // approve
                            if ($statApprove == "1") {

                                $admin_comment = $arrpost['admin_comment'];
                                $tr_notes_admin = "";
                                if ($admin_comment != "" && $admin_comment != null && $admin_comment != '') {
                                    $tr_notes_admin = "Comment from admin:-<br />" . $admin_comment;
                                }

                                //                                                    $tr_id = $this->my_func->dinarpal_decrypt($this->input->post('tr_id'));
                                //                                                    $at_id = $this->input->post('at_id');
                                //                                                    $me_id = $this->input->post('me_id');
                                //                                                    $tt_id = $this->input->post('tt_id');
                                $statusDebitKredit = ($tt_id == 3) ? (1) : (2);
                                $statusDebitKreditHQ = ($tt_id == 3) ? (2) : (1);

                                $tr_datetime = date('Y-m-d H:i:s');
                                $at_id_fee = 1;

                                $tr_temp = $this->m_transaction->get($tr_id);
//                                                        print_r($tr_temp); die();

                                $me_id = 0;
                                $me_id_hq = -1;
                                if (isset($tr_temp) && !empty($tr_temp)) {
                                    $tt_id = $tr_temp[0]->tt_id;
                                    $me_id = ($tt_id == 3) ? ($tr_temp[0]->me_id_to) : ($tr_temp[0]->me_id_from);
                                    $me_id_hq = ($tt_id == 3) ? ($tr_temp[0]->me_id_from) : ($tr_temp[0]->me_id_to);
                                } else {
                                    $this->session->set_flashdata('error', 'Access Denied!');
                                    $tr_id = $this->my_func->dinarpal_encrypt($tr_id);
                                    redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_id));
                                }

                                $me_to = $this->m_members->get($me_id);
                                $me_type = (isset($me_to) && !empty($me_to)) ? ($me_to[0]->me_type) : ('NU');

                                $tr_amount = (isset($tr_temp) && !empty($tr_temp)) ? ($tr_temp[0]->tr_amount) : (0);
                                $det_id = (isset($tr_temp) && !empty($tr_temp)) ? ($tr_temp[0]->det_id) : (0);

                                $bc_fee = 0.00;
                                if ($me_type != 'DP') {
                                    $bc_fee = (isset($tr_temp) && !empty($tr_temp)) ? ($tr_temp[0]->tr_bc_fee) : (0);
                                }

                                $ft_id = (isset($tr_temp) && !empty($tr_temp)) ? ($tr_temp[0]->ft_id) : (0);
                                $ft_temp = $this->m_fee_type->get($ft_id);
                                $ft_price = 0.00;
                                $fee_price = 0.00;
                                //                                                if (isset($ft_temp) && !empty($ft_temp)) {
                                //                                                    if ($ft_temp[0]->ft_type == 'STATIC') {
                                //                                                        $ft_price = $ft_temp[0]->ft_price;
                                //                                                    } else if ($ft_temp[0]->ft_type == 'DYNAMIC') {
                                //                                                        $ft_price = $ft_temp[0]->ft_price * $tr_amount;
                                //                                                    }
                                //                                                }

                                if ($me_type != 'DP') {
                                    // deposit = 3
                                    if ($tt_id == 3) {
                                        // fee type
                                        if (isset($ft_temp) && !empty($ft_temp)) {
                                            if ($ft_temp[0]->ft_type == 'STATIC') {
                                                $ft_price += $ft_temp[0]->ft_price;
                                            } else if ($ft_temp[0]->ft_type == 'DYNAMIC') {
                                                if ($det_id == 3) {
                                                    $ft_price += ($ft_temp[0]->ft_price * $tr_amount);
                                                } else if ($det_id == 1) {
                                                    $gst_rate = $this->my_func->getGST();
                                                    $ft_rate_full = $ft_temp[0]->ft_price + ($ft_temp[0]->ft_price * $gst_rate) + 1;
                                                    $ft_rate = $ft_temp[0]->ft_price;
                                                    $ft_price += ($tr_amount / $ft_rate_full) * $ft_rate;
                                                }
                                            }
                                        }
                                    } else if ($tt_id == 2) { // withdrawal = 2
                                        // bank fee
                                        if (isset($bc_fee) && $bc_fee != 0) {
                                            $ft_price += $bc_fee;
                                        }

                                        // fee type
                                        if (isset($ft_temp) && !empty($ft_temp)) {
                                            if ($ft_temp[0]->ft_type == 'STATIC') {
                                                $ft_price += $ft_temp[0]->ft_price;
                                                $fee_price += $ft_temp[0]->ft_price;
                                            } else if ($ft_temp[0]->ft_type == 'DYNAMIC') {
                                                $ft_price += ($ft_temp[0]->ft_price * $tr_amount);
                                                $fee_price += ($ft_temp[0]->ft_price * $tr_amount);
                                            }
                                        }
                                    }
                                }

//                                                        $bc_id = $arrpost['bc_id'];
//                                                        $bc = $this->m_banks_category->get($bc_id);
//                                                        $bc_fee = (isset($bc) && !empty($bc)) ? ($bc[0]->bc_fee) : (0);

                                $gst_rate = $this->my_func->getGST();
                                $gst_tax = $gst_rate * $ft_price;

                                //                                                $ft_price += $bc_fee;
//                                                        print_r("$tr_amount -= ($ft_price + $bc_fee + $gst_tax);"); die();
                                //                                                print_r($arrpost); die();
//                                                        $tr_amount_hq = $fee_price + $bc_fee + $gst_tax;
//                                                        print_r("$tr_amount_hq = $fee_price + $bc_fee + $gst_tax;"); die();
                                // withdrawal = 2
                                if ($tt_id == 2) {
                                    
                                    $tr_amount_draw = $tr_amount + $bc_fee + $fee_price + $gst_tax;

                                    $me_id_hq = $this->my_func->getMeAdminHQ();
                                    $bol_transfer = $this->debit_kredit($me_id, $tr_amount_draw, $at_id, $statusDebitKredit);
                                    if ($bol_transfer == false) {
                                        $tr_id = $this->my_func->dinarpal_encrypt($tr_id);
                                        redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_id));
                                    }
                                    $tr_amount_hq = $ft_price + $gst_tax;
//                                                            $bol_transfer_hq = $this->debit_kredit($me_id_hq, $tr_amount_hq, $at_id, $statusDebitKreditHQ);
                                    $this->debit_kredit_fund($me_id_hq, $bc_fee, 'FEES', 1);
                                    $this->debit_kredit_fund($me_id_hq, $fee_price, 'FEES', 1);
                                    $this->debit_kredit_fund($me_id_hq, $gst_tax, 'GST', 1);
//                                                            if ($bol_transfer_hq == false) {
//                                                                $tr_id = $this->my_func->dinarpal_encrypt($tr_id);
//                                                                redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_id));
//                                                            }

                                    if (isset($tr_temp) && !empty($tr_temp)) {

                                        if ($ft_price > 0) {

                                            // bank transaction fee
                                            $data_tr3 = array(
                                                'me_id_from' => $tr_temp[0]->me_id_from,
                                                'me_id_to' => $me_id_hq,
                                                'tr_amount' => $bc_fee,
                                                'at_id' => 6,
                                                'ft_id' => 15, // bank transaction fee
                                                'tr_notes' => 'Bank Transaction Fee<br /><br />' . $tr_notes_admin,
                                                'tr_datetime' => $tr_datetime,
                                                'tt_id' => 32, // Bank Transaction Fee
                                                'ts_id' => 1,
                                                'det_id' => $tr_temp[0]->det_id,
                                                'me_id_staff' => $me_id_staf
                                            );
                                            $tr_id3 = $this->m_transaction->add($data_tr3);

                                            // fee withdrawal
                                            $data_tr1 = array(
                                                'me_id_from' => $tr_temp[0]->me_id_from,
                                                'me_id_to' => $me_id_hq,
                                                'tr_amount' => $fee_price,
                                                'at_id' => 6,
                                                'ft_id' => 5,
                                                'tr_notes' => 'Withdrawal Fee<br /><br />' . $tr_notes_admin,
                                                'tr_datetime' => $tr_datetime,
                                                'tt_id' => 29, // withdrawal money fee
                                                'ts_id' => 1,
                                                'det_id' => $tr_temp[0]->det_id,
                                                'me_id_staff' => $me_id_staf
                                            );
                                            $tr_id1 = $this->m_transaction->add($data_tr1);

                                            // gst tax
                                            $data_tr2 = array(
                                                'me_id_from' => $tr_temp[0]->me_id_from,
                                                'me_id_to' => $me_id_hq,
                                                'tr_amount' => $gst_tax,
                                                'at_id' => 7,
                                                'ft_id' => 13,
                                                'tr_notes' => 'GST Tax Fee<br /><br />' . $tr_notes_admin,
                                                'tr_datetime' => $tr_datetime,
                                                'tt_id' => 25, // gst tax
                                                'ts_id' => 1,
                                                'det_id' => $tr_temp[0]->det_id,
                                                'me_id_staff' => $me_id_staf
                                            );
                                            $tr_id2 = $this->m_transaction->add($data_tr2);
                                        }

                                        $tr_notes_admin = $tr_temp[0]->tr_notes . "<br /><br />" . $tr_notes_admin;
                                    }
                                } else if ($tt_id == 3) { // deposit = 3
//                                                            $bol_transfer_hq = $this->debit_kredit($me_id_hq, $tr_amount, $at_id, $statusDebitKreditHQ);
                                    $bol_transfer_hq = $this->debit_kredit_fund($me_id_hq, $tr_amount, 'DEPO', 2);
                                    if ($bol_transfer_hq == false) {
                                        $tr_id = $this->my_func->dinarpal_encrypt($tr_id);
                                        redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_id));
                                    } else {
                                        $this->debit_kredit_fund($me_id_hq, $ft_price, 'FEES', 1);
                                        $this->debit_kredit_fund($me_id_hq, $bc_fee, 'FEES', 1);
                                        $this->debit_kredit_fund($me_id_hq, $gst_tax, 'GST', 1);
                                    }

                                    $tr_amount_before_deduct = $tr_amount;
                                    $tr_amount = $tr_amount - ($ft_price + $bc_fee + $gst_tax);

                                    $bol_transfer = $this->debit_kredit($me_id, $tr_amount, $at_id, $statusDebitKredit);
                                    if ($bol_transfer == false) {
//                                                                $this->debit_kredit($me_id_hq, $tr_amount_before_deduct, $at_id, $statusDebitKredit);
                                        $this->debit_kredit_fund($me_id_hq, $tr_amount_before_deduct, 'DEPO', 1);

                                        $this->debit_kredit_fund($me_id_hq, $ft_price, 'FEES', 2);
                                        $this->debit_kredit_fund($me_id_hq, $bc_fee, 'FEES', 2);
                                        $this->debit_kredit_fund($me_id_hq, $gst_tax, 'GST', 2);

                                        $tr_id = $this->my_func->dinarpal_encrypt($tr_id);
                                        redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_id));
                                    }

                                    if (isset($tr_temp) && !empty($tr_temp)) {

                                        if ($ft_price > 0) {
                                            // fee deposit
                                            $data_tr1 = array(
                                                'me_id_from' => $me_id,
                                                'me_id_to' => $me_id_hq,
                                                'tr_amount' => $ft_price,
                                                'at_id' => 6,
                                                'ft_id' => 6,
                                                'tr_notes' => 'Deposit Fee<br /><br />' . $tr_notes_admin,
                                                'tr_datetime' => $tr_datetime,
                                                'tt_id' => 26, // deposit fee
                                                'ts_id' => 1,
                                                'det_id' => $tr_temp[0]->det_id,
                                                'me_id_staff' => $me_id_staf
                                            );
                                            $tr_id1 = $this->m_transaction->add($data_tr1);

                                            // gst tax
                                            $data_tr2 = array(
                                                'me_id_from' => $me_id,
                                                'me_id_to' => $me_id_hq,
                                                'tr_amount' => $gst_tax,
                                                'at_id' => 7,
                                                'ft_id' => 13,
                                                'tr_notes' => 'GST Tax Fee<br /><br />' . $tr_notes_admin,
                                                'tr_datetime' => $tr_datetime,
                                                'tt_id' => 25, // gst tax
                                                'ts_id' => 1,
                                                'det_id' => $tr_temp[0]->det_id,
                                                'me_id_staff' => $me_id_staf
                                            );
                                            $tr_id2 = $this->m_transaction->add($data_tr2);
                                        }

                                        $tr_notes_admin = $tr_temp[0]->tr_notes . "<br /><br />" . $tr_notes_admin;
                                    }
                                }
                                //                                                
                                //                                                print_r($statusDebitKredit); die();

                                $this->payGeneology($me_id, $at_id_fee, $ft_price, $tr_datetime);
                                // tanda

                                if ($tt_id == 2) {
//                                    $tr_amount -= ($ft_price + $gst_tax);
                                }
                                if ($tt_id == 3) {
                                    $tr_amount += ($ft_price + $gst_tax);
                                }

                                $data_update_trans = array(
                                    'ts_id' => 1,
                                    'tr_amount' => $tr_amount,
                                    'tr_notes' => $tr_notes_admin,
                                    'tr_datetime' => $tr_datetime,
                                    'me_id_staff' => $me_id_staf
                                );
                                $bol_update_trans = $this->m_transaction->edit($tr_id, $data_update_trans);
                                if ($bol_update_trans) {

                                    $tt = $this->m_transaction_type->get($tt_id);
                                    $tr_id_code = (isset($tt) && !empty($tt)) ? ($tt[0]->tt_code) : ("--");
                                    $tr_id_code2 = $this->my_func->format_digit($tr_id);
                                    $tr_id_code_email = $tr_id_code . $tr_id_code2;

                                    $me_penerima = $this->m_members->get($me_id);
                                    $me_to_email = (isset($me_penerima) && !empty($me_penerima)) ? ($me_penerima[0]->me_email) : ("umaqgeek@gmail.com");

                                    $to = $me_to_email;
                                    $subject = ($tt_id == 2) ? ("DinarPal Withdrawal") : ("DinarPal Deposit");
                                    $sub_str = ($tt_id == 2) ? ("withdrawal") : ("deposit");
                                    $msg = "Your " . $sub_str . " ID "
                                            . $tr_id_code_email
                                            . " has been approved.";
                                    $this->my_func->send_email($to, $subject, $msg);

                                    $this->session->set_flashdata('sucess', 'Approval Success ..');
                                } else {
                                    $this->session->set_flashdata('error', 'Approval Failed!');
                                }
                                $tr_id = $this->my_func->dinarpal_encrypt($tr_id);
                                redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_id));
                                //                                                redirect(site_url('staff/transactions/manageTransaction/x42'));
                            } else if ($statApprove == "5") { //declined
                                //                                                $arr = $this->input->post();
                                //                                                $tr_idx = $arr['tr_id'];
//                                                    $tr_idx = $tr_id;
//                                                    $tr_id = $this->my_func->dinarpal_decrypt($tr_idx);
                                $data_tr = array(
                                    'ts_id' => 5
                                );
                                $this->m_transaction->edit($tr_id, $data_tr);

                                $tr_temp = $this->m_transaction->get($tr_id);
                                $me_id = 0;
                                if (isset($tr_temp) && !empty($tr_temp)) {
                                    $tt_id = $tr_temp[0]->tt_id;
                                    $me_id = ($tt_id == 3) ? ($tr_temp[0]->me_id_to) : ($tr_temp[0]->me_id_from);
                                } else {
                                    $this->session->set_flashdata('error', 'Access Denied!');
                                    $tr_id = $this->my_func->dinarpal_encrypt($tr_id);
                                    redirect(site_url('staff/transactions/detailTransaction/x421?trid=' . $tr_id));
                                }

                                $tt = $this->m_transaction_type->get($tt_id);
                                $tr_id_code = (isset($tt) && !empty($tt)) ? ($tt[0]->tt_code) : ("--");
                                $tr_id_code2 = $this->my_func->format_digit($tr_id);
                                $tr_id_code_email = $tr_id_code . $tr_id_code2;

                                $me_penerima = $this->m_members->get($me_id);
                                $me_to_email = (isset($me_penerima) && !empty($me_penerima)) ? ($me_penerima[0]->me_email) : ("umaqgeek@gmail.com");
//                                                    $me_to_email = "umaqgeek@gmail.com";

                                $to = $me_to_email;
                                $subject = ($tt_id == 2) ? ("DinarPal Withdrawal") : ("DinarPal Deposit");
                                $sub_str = ($tt_id == 2) ? ("withdrawal") : ("deposit");
                                $msg = "Your " . $sub_str . " ID "
                                        . $tr_id_code_email
                                        . " has been declined.";
                                $bolemel = $this->my_func->send_email($to, $subject, $msg);

//                                                    print_r("|" . $bolemel . "|"); die();

                                redirect(site_url('staff/transactions/manageTransaction/x42'));
                            }
                        }
                    }
                    break;
                case 'y5':
                    //$data['construction_dinarpal'] = 1;
                    $title = "Account Summary";
                    $data['transType'] = $this->m_transaction_type->getAll();
                    $total_fund = $this->m_dinarpal_account->getAccounting();
                    $data['total_fund'] = (is_numeric($total_fund[0]->total_balance)) ? (number_format($total_fund[0]->total_balance, 2)) : ("0.00");
                    break;
                case 'y51':
                    $title = 'Account Summary Detail';

                    $total_fund = $this->m_dinarpal_account->getAccounting();
                    $total_fund_dps = $this->m_dinarpal_account->getAllDPsAccount();
                    $total_fund_nus = $this->m_dinarpal_account->getAllNUsAccount();
                    $total_deposit = $this->m_dinarpal_account->getAllDeposit();
                    $total_inject = $this->m_dinarpal_account->getAllInjectCash();
                    $total_inject_dp = $this->m_dinarpal_account->getAllInjectCashDP();
                    $total_fees = $this->m_dinarpal_account->getAllFees();
                    $total_gst = $this->m_dinarpal_account->getAllGST();
                    $total_sales = $this->m_dinarpal_account->getAllSales();
                    $total_withdrawn = $this->m_dinarpal_account->getAllWithdrawn();
                    $total_adjustment = $this->m_dinarpal_account->getAllAccountAdjustment();

                    $data['total_fund'] = (is_numeric($total_fund[0]->total_balance)) ? ($total_fund[0]->total_balance) : (0);
                    $data['total_fund_dps'] = (is_numeric($total_fund_dps[0]->total_balance)) ? ($total_fund_dps[0]->total_balance) : (0);
                    $data['total_fund_nus'] = (is_numeric($total_fund_nus[0]->total_balance)) ? ($total_fund_nus[0]->total_balance) : (0);
                    $data['total_deposit'] = (is_numeric($total_deposit[0]->total_balance)) ? (number_format($total_deposit[0]->total_balance, 2)) : ("0.00");
                    $data['total_inject'] = (is_numeric($total_inject[0]->total_balance)) ? (number_format($total_inject[0]->total_balance, 2)) : ("0.00");
                    $data['total_inject_dp'] = (is_numeric($total_inject_dp[0]->total_balance)) ? (number_format($total_inject_dp[0]->total_balance, 2)) : ("0.00");

                    $total_fees1 = (is_numeric($total_fees[0]->total_balance)) ? ($total_fees[0]->total_balance) : (0);
                    $total_gst1 = (is_numeric($total_gst[0]->total_balance)) ? ($total_gst[0]->total_balance) : (0);
                    $total_sales1 = (is_numeric($total_sales[0]->total_balance)) ? ($total_sales[0]->total_balance) : (0);
                    $data['total_gain'] = number_format($total_fees1 + $total_gst1 + $total_sales1, 2);
                    $data['total_fees'] = (is_numeric($total_fees[0]->total_balance)) ? (number_format($total_fees[0]->total_balance, 2)) : ("0.00");
                    $data['total_gst'] = (is_numeric($total_gst[0]->total_balance)) ? (number_format($total_gst[0]->total_balance, 2)) : ("0.00");
                    $data['total_sales'] = (is_numeric($total_sales[0]->total_balance)) ? (number_format($total_sales[0]->total_balance, 2)) : ("0.00");

                    $data['total_withdrawn'] = (is_numeric($total_withdrawn[0]->total_balance)) ? (number_format($total_withdrawn[0]->total_balance, 2)) : ("0.00");
                    $data['total_adjustment'] = (is_numeric($total_adjustment[0]->total_balance)) ? (number_format($total_adjustment[0]->total_balance, 2)) : ("0.00");
                    $data['members'] = $this->m_members->getAll();

                    $data['dinarpal_funds'] = $this->m_dinarpal_funds->getAllDPs();

                    $data['currency'] = $this->my_func->getCurrency();

                    $dinarpal_dinar = $this->m_dinarpal_account->summaryMoney(1, 'DP');
                    $dinarpal_dinar = (is_numeric($dinarpal_dinar)) ? ($dinarpal_dinar) : (0);
                    $data['dinarpal_dinar'] = (is_numeric($dinarpal_dinar)) ? (number_format($dinarpal_dinar, 2)) : ("0.00");
                    $dinarpal_dirham = $this->m_dinarpal_account->summaryMoney(2, 'DP');
                    $dinarpal_dirham = (is_numeric($dinarpal_dirham)) ? ($dinarpal_dirham) : (0);
                    $data['dinarpal_dirham'] = (is_numeric($dinarpal_dirham)) ? (number_format($dinarpal_dirham, 2)) : ("0.00");
                    $total_dinarpal_dinar_dirham = $dinarpal_dinar + $dinarpal_dirham;
                    $data['total_dinarpal_dinar_dirham'] = (is_numeric($total_dinarpal_dinar_dirham)) ? (number_format($total_dinarpal_dinar_dirham, 2)) : ("0.00");
                    $customer_dinar = $this->m_dinarpal_account->summaryMoney(1, 'NU');
                    $customer_dinar = (is_numeric($customer_dinar)) ? ($customer_dinar) : (0);
                    $data['customer_dinar'] = (is_numeric($customer_dinar)) ? (number_format($customer_dinar, 2)) : ("0.00");
                    $customer_dirham = $this->m_dinarpal_account->summaryMoney(2, 'NU');
                    $customer_dirham = (is_numeric($customer_dirham)) ? ($customer_dirham) : (0);
                    $data['customer_dirham'] = (is_numeric($customer_dirham)) ? (number_format($customer_dirham, 2)) : ("0.00");
                    $total_customer_dinar_dirham = $customer_dinar + $customer_dirham;
                    $data['total_customer_dinar_dirham'] = (is_numeric($total_customer_dinar_dirham)) ? (number_format($total_customer_dinar_dirham, 2)) : ("0.00");

                    $dinarpal_gold = $this->m_vault->summaryWeightVaultItem(1, 'DP');
                    $data['dinarpal_gold'] = (is_numeric($dinarpal_gold)) ? (number_format($dinarpal_gold, 4)) : ("0.0000");
                    $dinarpal_silver = $this->m_vault->summaryWeightVaultItem(2, 'DP');
                    $data['dinarpal_silver'] = (is_numeric($dinarpal_silver)) ? (number_format($dinarpal_silver, 4)) : ("0.0000");
                    $customer_gold = $this->m_vault->summaryWeightVaultItem(1, 'NU');
                    $data['customer_gold'] = (is_numeric($customer_gold)) ? (number_format($customer_gold, 4)) : ("0.0000");
                    $customer_silver = $this->m_vault->summaryWeightVaultItem(2, 'NU');
                    $data['customer_silver'] = (is_numeric($customer_silver)) ? (number_format($customer_silver, 4)) : ("0.0000");

                    break;
                case 'y52':
                    $title = 'Account Summary Detail';
                    if ($this->input->get('u')) {
                        $me_idx = $this->input->get('u');
                        $me_id = $this->my_func->dinarpal_decrypt($me_idx);
                        $tr = $this->m_transaction->getAll($me_id, 'ASC', $this->my_func->getLimitRows(), 1, -1, '', true);
                        $me = $this->m_members->get($me_id);
                        $me_username = (isset($me) && !empty($me)) ? ($me[0]->me_username) : ("-");
                        $title .= ' (' . $me_username . ')';
                        $data['me_id'] = $me_id;
//                                        print_r(sizeof($tr)); die();
                        $data['trans'] = $tr;
                    } else {
                        $this->session->set_flashdata('error', 'Invalid user!');
                        redirect(site_url('staff/transactions/transSum1/y51'));
                    }
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function feesCollection($output = 'dashboard', $menu1 = '11') {
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                case 'x51':
                    $title = 'Overview';
                    break;
                case 'x52':
                    $title = 'Manage Fees Collection';
                    break;
            }
            $this->_papar('', $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function confirmPawn() {
        $arr = $this->input->post();
//        print_r($arr); die();
        $sl_id = $arr['sl_id'];
        $sl = $this->m_storage_location->get($sl_id);
        $sl_name = "-";
        if (isset($sl) && !empty($sl)) {
            $sl_name = $sl[0]->sl_name;
        }

        $me_idx = $arr['custno'];
        $me_id = $this->my_func->dinarpal_decrypt($me_idx);

        $sess_staff = $this->session->all_userdata();
        $me_id_staff = $sess_staff['me_id'];
        $me_id_admin = $this->my_func->getMeAdmin($sl_id);

        $col_rate = (is_numeric($arr['col_rate'])) ? ($arr['col_rate']) : (0);
        $tr_datetime = date('Y-m-d H:i:s');
        $nextday = $this->my_func->get_next_day(1, 0, 0);
//        echo $nextday; die();
        
        // 1.1. calculate fees, items weight, and marhun price.
        $total_v_weight = 0.00;
        $total_keep_fee = 0.00;
        $total_marhun_price = 0.00;
        $cart = $this->cart->contents();
        if (isset($cart) && !empty($cart)) {
            foreach ($cart as $caitem => $caval) {
                $rowx = $caval['rowid'];
                $data_v = $caval['options'];
                $v_weight = (is_numeric($data_v['v_weight'])) ? ($data_v['v_weight']) : (0);
                $total_v_weight += $v_weight;
                $v_price_rate = (is_numeric($data_v['v_price_rate'])) ? ($data_v['v_price_rate']) : (0);
                $keep_fee = $this->my_func->getFee(7, $v_price_rate);
                $total_keep_fee += $keep_fee;
//                $marhun_price = $this->my_func->getFee(2, $v_price_rate);
//                $marhun_price = $v_price_rate - $marhun_price;
                $it_id = (is_numeric($data_v['it_id'])) ? ($data_v['it_id']) : (0);
                $pu_id = (is_numeric($data_v['pu_id'])) ? ($data_v['pu_id']) : (0);
                $marhun_price = $this->m_item_type_purity->getRateMarhun($it_id, $pu_id);
                $marhun_price = $marhun_price * $v_weight;
//                print_r("$v_price_rate|$marhun_price\n");
                $total_marhun_price += $marhun_price; 
            }
        }
//        die($total_marhun_price);

        // 1.2. calculate total fees, gst, and loan.
        $at_id_myr = 1;
        $gst_rate = $this->my_func->getGST();
        $gst_tax = $gst_rate * $total_keep_fee;
        $total_fees = $gst_tax + $total_keep_fee;
        $total_loan = $total_marhun_price * ($col_rate / 100);
        $total_cust_dapat = $total_loan - $total_fees;
//        print_r("$total_cust_dapat = $total_loan - $total_fees;");die();

        // 1.3. deduct money and record transaction pay fee, gst, and give loan to user.
        $bol_give_loan = $this->debit_kredit_fund($me_id_admin, $total_loan, 'RAHNU', 2); // admin give loan
        if ($bol_give_loan) {
            $this->debit_kredit_fund($me_id_admin, $total_keep_fee, 'FEES', 1); // admin get fess
            $this->debit_kredit_fund($me_id_admin, $gst_tax, 'GST', 1); // admin get gst
            $bol_user_loan = $this->debit_kredit($me_id, $total_cust_dapat, $at_id_myr, 1); // customer get loan
            if ($bol_user_loan) {
                    
                $this->payGeneology($me_id, $at_id_myr, $total_keep_fee, $tr_datetime);
                // keep fee
                $data_trans1 = array(
                    'me_id_from' => $me_id,
                    'me_id_to' => $me_id_admin,
                    'tr_amount' => $total_keep_fee,
                    'at_id' => 6,
                    'ft_id' => 7,
                    'tr_notes' => 'Walk-in Bring & Pawn (Rahnu Keep Fee).',
                    'tr_datetime' => $tr_datetime,
                    'tt_id' => 24, // keep fee
                    'ts_id' => 1,
                    'me_id_staff' => $me_id_staff
                );
                $tr_id1 = $this->m_transaction->add($data_trans1);
                // gst fee
                $data_trans2 = array(
                    'me_id_from' => $me_id,
                    'me_id_to' => $me_id_admin,
                    'tr_amount' => $gst_tax,
                    'at_id' => 7,
                    'ft_id' => 13,
                    'tr_notes' => 'GST Tax Fee for walk-in bring and pawn fee.',
                    'tr_datetime' => $tr_datetime,
                    'tt_id' => 25,
                    'ts_id' => 1,
                    'me_id_staff' => $me_id_staff
                );
                $tr_id2 = $this->m_transaction->add($data_trans2);

                // 2.1. transaction emas luar masuk vault pawn.
                $v_ids = array();
                $cart = $this->cart->contents();
                if (isset($cart) && !empty($cart)) {
                    foreach ($cart as $caitem => $caval) {
                        $rowx = $caval['rowid'];
                        $data_v = $caval['options'];
                        $data_v['vt_id'] = 4;
//                        $it_id = $data_v['it_id'];
                        $it_id = (is_numeric($data_v['it_id'])) ? ($data_v['it_id']) : (0);
                        $pu_id = (is_numeric($data_v['pu_id'])) ? ($data_v['pu_id']) : (0);

                        unset($data_v['it_id']);
                        unset($data_v['pu_id']);
                        
                        $v_id = $this->m_vault->add($data_v);
                        $v_price_rate = (is_numeric($data_v['v_price_rate'])) ? ($data_v['v_price_rate']) : (0);
                        $v_weight = (is_numeric($data_v['v_weight'])) ? ($data_v['v_weight']) : (0);
//                        $marhun_price = $this->my_func->getFee(2, $v_price_rate);
//                        $marhun_price = $v_price_rate - $marhun_price;
                        $marhun_price = $this->m_item_type_purity->getRateMarhun($it_id, $pu_id);
                        $marhun_price = $marhun_price * $v_weight;
                        $keep_fee = $this->my_func->getFee(7, $v_price_rate);

                        $v_ids[] = array(
                            'v_id' => $v_id,
                            'v_price_rate' => $v_price_rate,
                            'marhun_price' => $marhun_price,
                            'keep_fee' => $keep_fee
                        );

                        $at_id = 0;
                        if ($it_id == 1) {
                            $at_id = 2;
                        } else if ($it_id == 2) {
                            $at_id = 4;
                        } else {
                            $at_id = 0;
                        }

                        $v_weight = (is_numeric($data_v['v_weight'])) ? ($data_v['v_weight']) : (0);

                        $data_tr = array(
                            'me_id_from' => 0,
                            'me_id_to' => $me_id,
                            'tr_amount' => $v_weight,
                            'at_id' => $at_id,
                            'ft_id' => 2,
                            'tr_notes' => 'Walk-in and Pawn',
                            'tr_datetime' => $tr_datetime,
                            'tt_id' => 14,
                            'ts_id' => 1,
                            'me_id_staff' => $me_id_staff
                        );
                        $this->m_transaction->add($data_tr);
                    }
                }

                // 2.2. rekod emas luar tu jadi pawn.
                $data_pawn = array(
                    'me_id' => $me_id,
                    'pa_start_date' => $tr_datetime,
                    'pa_end_date' => $nextday,
                    'am_id' => $me_id_staff,
                    'pa_total_weight' => $total_v_weight,
                    'pa_rahnu_rate' => $col_rate,
                    'sl_id' => $arr['sl_id'],
                    'pa_status' => 1
                );
                $pa_id = $this->m_pawn->add($data_pawn);
                if ($pa_id) {
                    foreach ($v_ids as $v_idx) {
                        $v_id = $v_idx['v_id'];
                        $pcc_marhun_price = (is_numeric($v_idx['marhun_price'])) ? ($v_idx['marhun_price']) : (0);
                        $pcc_keep_fee = (is_numeric($v_idx['keep_fee'])) ? ($v_idx['keep_fee']) : (0);
                        $data_pcc = array(
                            'pa_id' => $pa_id,
                            'v_id' => $v_id,
                            'pcc_datetime' => $tr_datetime,
                            'pcc_start_date' => $tr_datetime,
                            'pcc_end_date' => $nextday,
                            'pcc_rahnu_rate' => $col_rate,
                            'pcc_marhun_price' => $pcc_marhun_price,
                            'pcc_keep_fee' => $pcc_keep_fee,
                            'pcc_status' => 1
                        );
                        $this->m_pawn_child_child->add($data_pcc);
                    }
                }

                // 3.1. transaction beri loan pada user.
                $data_trans_loan = array(
                    'me_id_from' => $me_id_admin,
                    'me_id_to' => $me_id,
                    'tr_amount' => $total_loan,
                    'at_id' => $at_id_myr,
                    'ft_id' => 0,
                    'tr_notes' => 'Receive Loan from Pawning Items.',
                    'tr_datetime' => $tr_datetime,
                    'tt_id' => 53, // receive loan from pawn
                    'ts_id' => 1,
                    'me_id_staff' => $me_id_staff
                );
                $tr_id_loan = $this->m_transaction->add($data_trans_loan);

                $amil = $sess_staff['me_firstname'] . ' ' . $sess_staff['me_lastname'];
                $total_v_weight = (is_numeric($total_v_weight)) ? (number_format($total_v_weight, 4)) : ("0.0000");
                $total_marhun_price = (is_numeric($total_marhun_price)) ? (number_format($total_marhun_price, 4)) : ("0.0000");
                $col_rate = (is_numeric($col_rate)) ? (number_format($col_rate, 0)) : ("0");
                $total_loan = (is_numeric($total_loan)) ? (number_format($total_loan, 4)) : ("0.0000");
                $total_keep_fee = (is_numeric($total_keep_fee)) ? (number_format($total_keep_fee, 4)) : ("0.0000");
                $gst_tax = (is_numeric($gst_tax)) ? (number_format($gst_tax, 4)) : ("0.0000");
                $total_fees = (is_numeric($total_fees)) ? (number_format($total_fees, 4)) : ("0.0000");
                $tr_datetime = $this->my_func->sql_time_to_datetime($tr_datetime);
                $nextday = $this->my_func->sql_time_to_datetime($nextday);

                $this->session->set_userdata('total_weight', $total_v_weight);
                $this->session->set_userdata('total_marhun', $total_marhun_price);
                $this->session->set_userdata('col_rate', $col_rate);
                $this->session->set_userdata('total_loan', $total_loan);
                $this->session->set_userdata('total_keep_fee', $total_keep_fee);
                $this->session->set_userdata('gst_tax', $gst_tax);
                $this->session->set_userdata('total_fees', $total_fees);
                $this->session->set_userdata('startdatetime', $tr_datetime);
                $this->session->set_userdata('enddatetime', $nextday);
                $this->session->set_userdata('storage_location', $sl_name);
                $this->session->set_userdata('amil', $amil);

                redirect(site_url('staff/rahnuOperation/walkBringPawn3/x623'));
                
            } else {
                $this->debit_kredit_fund($me_id_admin, $total_loan, 'RAHNU', 1);
                $this->debit_kredit_fund($me_id_admin, $total_keep_fee, 'FEES', 2);
                $this->debit_kredit_fund($me_id_admin, $gst_tax, 'GST', 2);
                redirect(site_url('staff/rahnuOperation/walkBringPawn1/x621'));
            }
        } else {
            $this->session->set_flashdata('error', 'Admin does not have enough loan to give!');
            redirect(site_url('staff/rahnuOperation/walkBringPawn1/x621'));
        }
    }

    public function rahnuOperation($output = 'dashboard', $menu1 = '11') {
        if ($output != 'dashboard') {
            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
            $data['dinarpal_account'] = $this->m_dinarpal_account->get_member($me_id);
            $title = 'Dashboard';
            switch ($menu1) {
                case 'x61':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Walk-In Purchase & Pawn';

                    break;

                case 'x618':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Purchase & Pawn';

                    break;

                case 'x619':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Pawn & Courier';

                    break;

                case 'x6121':
                    $title = 'Calculator';

                    //destroy session if exist
                    //destory existing transaction session
                    if ($this->session->userdata('assigned_user')) {
                        $this->session->unset_userdata('assigned_user');
                    } elseif ($this->session->userdata('registered_user')) {
                        $this->session->unset_userdata('registered_user');
                    }

                    if ($this->session->userdata('store_transaction'))
                        $this->session->unset_userdata('store_transaction');

                    if ($this->session->userdata('me_initialize_value'))
                        $this->session->unset_userdata('me_initialize_value');

                    if ($this->session->userdata('am_id'))
                        $this->session->unset_userdata('am_id');

                    if ($this->session->userdata('pa_id'))
                        $this->session->unset_userdata('pa_id');

                    $data['item_type'] = $this->m_item_type->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    break;
                case 'x6122':
                    $title = 'Pawn';

                    $da_gold_rahnu_gram = array();
                    $da_gold_rahnu_money = array();

                    $da_silver_rahnu_gram = array();
                    $da_silver_rahnu_money = array();

                    //get the data
                    $store_transaction = array();
                    for ($i = 1; $i <= 5; $i++) {
                        $store_transaction[$i]['it' . $i] = $this->my_func->getItemTypeName($this->input->post('it' . $i));
                        $store_transaction[$i]['itc' . $i] = $this->my_func->getItemTypeChildName($this->input->post('itc' . $i));
                        $store_transaction[$i]['itct' . $i] = $this->my_func->getItemItctName($this->input->post('itct' . $i));

                        $store_transaction[$i]['it_id' . $i] = $this->input->post('it' . $i);
                        $store_transaction[$i]['itc_id' . $i] = $this->input->post('itc' . $i);
                        $store_transaction[$i]['itct_id' . $i] = $this->input->post('itct' . $i);


                        $store_transaction[$i]['q' . $i] = $this->input->post('q' . $i);
                        $store_transaction[$i]['pu' . $i] = $this->input->post('pu' . $i);
                        $store_transaction[$i]['weight_' . $i] = $this->input->post('weight_' . $i);
                        $store_transaction[$i]['price_' . $i] = $this->input->post('price_' . $i);
                        $store_transaction[$i]['nilai_' . $i] = $this->input->post('nilai_' . $i);

                        if ($store_transaction[$i]['it' . $i] == "Gold") {
                            $da_gold_rahnu_gram[] = $store_transaction[$i]['weight_' . $i];
                            $da_gold_rahnu_money[] = $store_transaction[$i]['nilai_' . $i];
                        } elseif ($store_transaction[$i]['it' . $i] == "Silver") {
                            $da_silver_rahnu_gram[] = $store_transaction[$i]['weight_' . $i];
                            $da_silver_rahnu_money[] = $store_transaction[$i]['nilai_' . $i];
                        }
                    }

                    $total_gold_rahnu_gram = array_sum($da_gold_rahnu_gram);
                    $total_gold_rahnu_money = array_sum($da_gold_rahnu_money);

                    $total_silver_rahnu_gram = array_sum($da_silver_rahnu_gram);
                    $total_silver_rahnu_money = array_sum($da_silver_rahnu_money);

                    $store_transaction['total_gold_rahnu_gram'] = $total_gold_rahnu_gram;
                    $store_transaction['total_gold_rahnu_money'] = $total_gold_rahnu_money;

                    $store_transaction['total_silver_rahnu_gram'] = $total_silver_rahnu_gram;
                    $store_transaction['total_silver_rahnu_money'] = $total_silver_rahnu_money;

                    $store_transaction['totaPrice_1'] = $this->input->post('totaPrice_1');
                    $store_transaction['col_rate'] = $this->input->post('col_rate');
                    $store_transaction['col_nilai_1'] = $this->input->post('col_nilai_1');
                    $store_transaction['safe_keeping_fee_1'] = $this->input->post('safe_keeping_fee_1');
                    $store_transaction['keeping_period'] = $this->input->post('keeping_period');
                    $store_transaction['keeping_period_fee_1'] = $this->input->post('keeping_period_fee_1');

                    //save the session
                    if (!empty($store_transaction) AND $store_transaction['totaPrice_1'] != 0) {
                        $this->session->set_userdata('store_transaction', $store_transaction);
                    } else {

                        $store_transaction = $this->session->userdata('store_transaction');
                        if (!empty($store_transaction))
                            $this->session->set_userdata('store_transaction', $store_transaction);
                    }

                    $data['store_transaction'] = $store_transaction;
                    break;

                case 'x6123':
                    $title = 'Register Account';

                    $start_period = $this->input->post('start_period');
                    $end_period = $this->input->post('end_period');


                    $store_transaction = $this->session->userdata('store_transaction');

                    if (!empty($store_transaction)) {
                        if ($start_period != null AND $end_period != null) {
                            $store_transaction['start_period'] = $start_period;
                            $store_transaction['end_period'] = $end_period;
                            $this->session->set_userdata('store_transaction', $store_transaction);
                        }
                    }

                    $this->load->model('m_account_type');
                    $data['account_types'] = $this->m_account_type->getAll();

                    break;
                case 'x6124':
                    $title = "Confirmation";

                    if ($this->session->flashdata('sucess'))
                        $this->session->keep_flashdata('sucess');

                    $mode = $this->input->post('mode');

                    $data['amil'] = $this->m_amil->getAll();
                    $store_transaction = $this->session->userdata('store_transaction');

                    if ($mode == "assign") {
                        $store_transaction = $this->session->userdata('store_transaction');
                        $username = $this->input->post('username');
                        $isexist = $this->checkUsername($username);
                        $arrIsExist = $isexist[0];

                        //print_r($arrIsExist);

                        $me_id = $arrIsExist->me_id;
                        $account_type = $this->input->post('me_account_type');

                        if ($isexist != false) {
                            //save user info to session
                            $this->session->set_userdata('assigned_user', $arrIsExist);


                            $me_initialize_value = $this->input->post('me_initialize_value');

                            $user = $this->session->userdata('assigned_user');
                            $at_desc = $this->my_func->getAccountTypeName($account_type);
                            $account_type = "";

                            switch ($at_desc) {
                                case 'E-Dinar':
                                    $account_type = "da_gold_balance";
                                    break;
                                case 'E-Gold Reserved':
                                    $account_type = "da_gold_reserved";
                                    break;
                                case 'E-Dirham':
                                    $account_type = "da_silver_balance";
                                    break;

                                case 'E-Silver Reserved':
                                    $account_type = "da_silver_reserved";
                                    break;
                            }

                            $existing_money = 0;
                            $totaPrice_1 = $store_transaction['totaPrice_1'];
                            $updated_money = 0;

                            do {

                                //$existing_money=$this->m_dinarpal_account->getMoneyByMeId($me_id,$account_type);
                                $existing_money = $arrIsExist->$account_type;
                                if (isset($me_initialize_value)) {
                                    $updated_money = $existing_money + $me_initialize_value;

                                    /* $data_account=array(
                                      $account_type=>$updated_money
                                      );

                                      //store dinarpal_account
                                      $this->m_dinarpal_account->editByMeID($me_id, $data_account);
                                     */
                                    $existing_money = $updated_money;
                                    $arrIsExist->$account_type = $existing_money;
                                    $this->session->set_userdata($arrIsExist);
                                }

                                $updated_money = $existing_money - $totaPrice_1;

                                if ($updated_money > 0) {
                                    $arrIsExist->$account_type = $updated_money;
                                    $this->session->set_userdata($arrIsExist);
                                    /*
                                      $data_account=array(
                                      $account_type=>$updated_money
                                      );

                                      //store dinarpal_account
                                      $this->m_dinarpal_account->editByMeID($me_id, $data_account);
                                     */
                                } else {
                                    $this->session->set_flashdata('error', 'insuficient Balance, please enter your additonal money, minimum RM : ' . abs($updated_money));
                                    redirect(site_url('staff/pawnAndRegister/registerAccount/x6123'));
                                }
                            } while ($updated_money < 0);
                        } else {
                            $this->session->set_flashdata('error', 'Username not found');
                            redirect(site_url('staff/pawnAndRegister/registerAccount/x6123'));
                        }
                    } elseif ($mode == 'register') {
                        $me_username = $this->my_func->trim_username($this->input->post('me_firstname'));
                        $member = array(
                            'me_firstname' => $this->input->post('me_firstname'),
                            'me_lastname' => $this->input->post('me_lastname'),
                            'me_username' => $me_username,
                            'me_password' => $this->input->post('me_password'),
                            'me_address1' => $this->input->post('me_address'),
                            'me_phone_no' => $this->input->post('me_phone'),
                            'me_email' => $this->input->post('me_email'),
                            'me_description' => $this->input->post('me_description'),
                            'me_account_type' => $this->input->post('me_account_type'),
                            'me_register_date' => date('Y-m-d H:i:s'),
                            'me_account_type' => $this->input->post('me_account_type'),
                            'me_activation_status' => 1,
                            'me_magic_num' => md5($this->input->post('me_email')),
                            'me_unique_link' => md5($me_username),
                            'ml_id' => 3,
                            'me_image' => 'default-img.jpg'
                        );

                        $this->session->set_userdata('me_initialize_value', $this->input->post('me_initialize_value'));

                        $totaPrice_1 = $store_transaction['totaPrice_1'];

                        if ($this->input->post('me_initialize_value') < $totaPrice_1) {

                            $this->session->set_flatrshdata('error', 'insuficient Balance, please enter your additonal money, minimum RM : ' . abs($totaPrice_1));
                            redirect(site_url('staff/pawnAndRegister/registerAccount/x6123'));
                        }


                        $this->daftar_members($member);
                    } elseif ($mode == "confirmation") {
                        //save process
                        $am_id = $this->input->post('am_id');
                        $this->session->set_userdata('am_id', $am_id);

                        $error_status = array();
                        $store_transaction = $this->session->userdata('store_transaction');
                        // store user
                        $user = array();
                        if ($this->session->userdata('registered_user')) {

                            //process for new user

                            $user = $this->session->userdata('registered_user');
                            $me_id = $this->m_members->add($user);

                            $at_desc = $this->my_func->getAccountTypeName($user['me_account_type']);
                            $account_type = "";

                            switch ($at_desc) {
                                case 'E-Dinar':
                                    $account_type = "da_gold_balance";
                                    break;
                                case 'E-Gold Reserved':
                                    $account_type = "da_gold_reserved";
                                    break;
                                case 'E-Dirham':
                                    $account_type = "da_silver_balance";
                                    break;

                                case 'E-Silver Reserved':
                                    $account_type = "da_silver_reserved";
                                    break;
                            }


                            $me_initialize_value = $this->session->userdata('me_initialize_value');
                            $totaPrice_1 = $store_transaction['totaPrice_1'];
                            $updated_money = 0;
                            $da_id = 0;

                            do {

                                if (isset($me_initialize_value)) {
                                    $updated_money = $me_initialize_value - $totaPrice_1;
                                    if ($updated_money > 0) {

                                        $dinarpal_account = array(
                                            'me_id' => $me_id,
                                            $account_type => $updated_money
                                        );

                                        $da_id = $this->m_dinarpal_account->add($dinarpal_account);
                                    } else {
                                        $this->session->set_flashdata('error', 'insuficient Balance, please enter your additonal money, minimum RM : ' . abs($updated_money));
                                        redirect(site_url('staff/pawnAndRegister/registerAccount/x6123'));
                                    }
                                }
                            } while ($updated_money < 0);

                            //update the weight and nilai
                            //get existing weight and nilai and then add and update
                            if (!empty($da_id)) {
                                $ex_da_gold_rahnu_gram = $this->m_dinarpal_account->getByType($da_id, 'da_gold_rahnu_gram');
                                $ex_da_gold_rahnu_money = $this->m_dinarpal_account->getByType($da_id, 'da_gold_rahnu_money');

                                $ex_da_silver_rahnu_gram = $this->m_dinarpal_account->getByType($da_id, 'da_silver_rahnu_gram');
                                $ex_da_silver_rahnu_money = $this->m_dinarpal_account->getByType($da_id, 'da_silver_rahnu_money');

                                $new_da_gold_rahnu_gram = $ex_da_gold_rahnu_gram + $store_transaction['total_gold_rahnu_gram'];
                                $new_da_gold_rahnu_money = $ex_da_gold_rahnu_money + $store_transaction['total_gold_rahnu_money'];
                                $new_da_silver_rahnu_gram = $ex_da_silver_rahnu_gram + $store_transaction['total_silver_rahnu_gram'];
                                $new_da_silver_rahnu_money = $ex_da_silver_rahnu_money + $store_transaction['total_silver_rahnu_money'];

                                //update
                                $this->m_dinarpal_account->edit($da_id, array('da_gold_rahnu_gram' => $new_da_gold_rahnu_gram));
                                $this->m_dinarpal_account->edit($da_id, array('da_gold_rahnu_money' => $new_da_gold_rahnu_money));

                                $this->m_dinarpal_account->edit($da_id, array('da_silver_rahnu_gram' => $new_da_silver_rahnu_gram));
                                $this->m_dinarpal_account->edit($da_id, array('da_silver_rahnu_money' => $new_silver_rahnu_money));
                            }


                            if (empty($me_id))
                                $error_status[] = "cannot_create_user";

                            if (!is_null($me_id)) {
                                //store the pawn
                                $pawn = array();
                                $now = date('Y-m-d H:i:s');
                                $later = date('Y-m-d H:i:s', strtotime("+6 months", time()));

                                $pa_start_date = $now;
                                $pa_end_date = $later;


                                //$pa_start_date = $this->my_func->sql_time_to_datetime($now);
                                //$pa_end_date = $this->my_func->sql_time_to_datetime($later);

                                /* print_r($pa_start_date);
                                  echo "<br/>";
                                  print_r($pa_end_date);
                                  die();
                                 */

                                //get the grand weight for each row
                                //get store_transaction
                                $store_transaction = $this->session->userdata('store_transaction');
                                $grand_total = array();

                                foreach ($store_transaction as $key => $value) {
                                    if (is_numeric($key))
                                        $grand_total_weight[] = $this->my_func->getGrandTotalWeight($value['itct_id' . $key], $value['q' . $key]);
                                }

                                $pa_total_weight = array_sum($grand_total_weight);

                                $pawn = array(
                                    'me_id' => $me_id,
                                    'pa_start_date' => $pa_start_date,
                                    'pa_end_date' => $pa_end_date,
                                    'am_id' => $am_id,
                                    'pa_total_weight' => $pa_total_weight,
                                    'pa_grand_total' => $store_transaction['totaPrice_1'],
                                    'pa_rahnu_rate' => $store_transaction['col_rate'] / 100,
                                    'pa_safe_fee' => $store_transaction['safe_keeping_fee_1'],
                                    'pt_id' => 1
                                );

                                //store pawn to db
                                $pa_id = $this->m_pawn->add($pawn);

                                //save to pawn_child
                                if (!empty($pa_id)) {

                                    foreach ($store_transaction as $key => $value) {
                                        if (is_numeric($key)) {


                                            //store to pawn child
                                            $pawn_child = array(
                                                'pa_id' => $pa_id,
                                                'itct_id' => $value['itct_id' . $key],
                                                'pc_qty' => $value['q' . $key]
                                            );

                                            if (!empty($value['q' . $key]))
                                                $pc_id = $this->m_pawn_child->add($pawn_child);
                                        }
                                    }
                                }
                                else {
                                    $error_status[] = "cannot_save_pawn";
                                }
                            }
                        } elseif ($this->session->userdata('assigned_user')) {
                            $user = $this->session->userdata('assigned_user');

                            //update the dinarpal_accout
                            $me_id = $user->me_id;
                            $account_type = $user->me_account_type;

                            $at_desc = $this->my_func->getAccountTypeName($account_type);
                            $account_type = "";



                            switch ($at_desc) {
                                case 'E-Dinar':
                                    $account_type = "da_gold_balance";
                                    break;
                                case 'E-Gold Reserved':
                                    $account_type = "da_gold_reserved";
                                    break;
                                case 'E-Dirham':
                                    $account_type = "da_silver_balance";
                                    break;

                                case 'E-Silver Reserved':
                                    $account_type = "da_silver_reserved";
                                    break;
                            }

                            $updated_money = $user->$account_type;


                            $data_account = array(
                                $account_type => $updated_money
                            );

                            //store dinarpal_account
                            $this->m_dinarpal_account->editByMeID($me_id, $data_account);


                            //get existing weight and nilai and then add and update
                            if (!empty($me_id)) {
                                $ex_da_gold_rahnu_gram = $this->m_dinarpal_account->getMoneyByMeId($me_id, 'da_gold_rahnu_gram');
                                $ex_da_gold_rahnu_money = $this->m_dinarpal_account->getMoneyByMeId($me_id, 'da_gold_rahnu_money');

                                $ex_da_silver_rahnu_gram = $this->m_dinarpal_account->getMoneyByMeId($me_id, 'da_silver_rahnu_gram');
                                $ex_da_silver_rahnu_money = $this->m_dinarpal_account->getMoneyByMeId($me_id, 'da_silver_rahnu_money');

                                $new_da_gold_rahnu_gram = $ex_da_gold_rahnu_gram + $store_transaction['total_gold_rahnu_gram'];
                                $new_da_gold_rahnu_money = $ex_da_gold_rahnu_money + $store_transaction['total_gold_rahnu_money'];
                                $new_da_silver_rahnu_gram = $ex_da_silver_rahnu_gram + $store_transaction['total_silver_rahnu_gram'];
                                $new_da_silver_rahnu_money = $ex_da_silver_rahnu_money + $store_transaction['total_silver_rahnu_money'];

                                //update
                                $this->m_dinarpal_account->editByMeID($me_id, array('da_gold_rahnu_gram' => $new_da_gold_rahnu_gram));
                                $this->m_dinarpal_account->editByMeID($me_id, array('da_gold_rahnu_money' => $new_da_gold_rahnu_money));

                                $this->m_dinarpal_account->editByMeID($me_id, array('da_silver_rahnu_gram' => $new_da_silver_rahnu_gram));
                                $this->m_dinarpal_account->editByMeID($me_id, array('da_silver_rahnu_money' => $new_silver_rahnu_money));
                            }


                            //store pawn and pawn child
                            //store the pawn
                            $pawn = array();
                            $now = date('Y-m-d H:i:s');
                            $later = date('Y-m-d H:i:s', strtotime("+6 months", time()));

                            $pa_start_date = $now;
                            $pa_end_date = $later;

                            //get the grand weight for each row
                            //get store_transaction
                            $store_transaction = $this->session->userdata('store_transaction');
                            $grand_total = array();

                            foreach ($store_transaction as $key => $value) {
                                if (is_numeric($key))
                                    $grand_total_weight[] = $this->my_func->getGrandTotalWeight($value['itct_id' . $key], $value['q' . $key]);
                            }

                            $pa_total_weight = array_sum($grand_total_weight);

                            $pawn = array(
                                'me_id' => $me_id,
                                'pa_start_date' => $pa_start_date,
                                'pa_end_date' => $pa_end_date,
                                'am_id' => $am_id,
                                'pa_total_weight' => $pa_total_weight,
                                'pa_grand_total' => $store_transaction['totaPrice_1'],
                                'pa_rahnu_rate' => $store_transaction['col_rate'] / 100,
                                'pa_safe_fee' => $store_transaction['safe_keeping_fee_1'],
                                'pt_id' => 1
                            );

                            //store pawn to db
                            $pa_id = $this->m_pawn->add($pawn);

                            //save to pawn_child
                            if (!empty($pa_id)) {
                                $this->session->set_userdata('pa_id', $pa_id);

                                foreach ($store_transaction as $key => $value) {
                                    if (is_numeric($key)) {


                                        //store to pawn child
                                        $pawn_child = array(
                                            'pa_id' => $pa_id,
                                            'itct_id' => $value['itct_id' . $key],
                                            'pc_qty' => $value['q' . $key]
                                        );

                                        if (!empty($value['q' . $key]))
                                            $pc_id = $this->m_pawn_child->add($pawn_child);
                                    }
                                }
                            }
                            else {
                                $error_status[] = "cannot_save_pawn";
                            }
                        }



                        //sucess
                        if (empty($error_status)) {

                            $this->session->set_flashdata('success', 'Alhamdulillah, your transaction is sucessful');
                        } else {
                            $this->session->set_flashdata('fail', 'something went wrong');
                        }

                        //show receipt
                        redirect(site_url('staff/pawnAndRegister/receipt/x61241'));
                    }

                    break;

                case 'x61241':
                    $title = "Receipt";

                    if ($this->session->flashdata('success'))
                        $this->session->keep_flashdata('success');
                    else
                        $this->session->keep_flashdata('fail');

                    break;


                case 'x62':
//                    $data['construction_dinarpal'] = 1;
                    $title = 'Walk-In Bring & Pawn';
//                    $data["arr"] = $this->m_pawn->getAll();
                    $this->cart->destroy();
                    $this->session->unset_userdata('customer_username');
                    $this->session->unset_userdata('arr');
                    $this->load->model('m_account_type');
                    $data['account_types'] = $this->m_account_type->getAll();
                    break;
                case 'x621x':
                    $title = 'Walk-In Bring & Pawn';
                    $data['item_type'] = $this->m_item_type_child->getAll();
                    $data['brands'] = $this->m_brands->getAll();
                    $data['item_status_courier'] = $this->m_item_status_courier->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    $data['storage_location'] = $this->m_storage_location->getAll();
                    if ($this->input->post('me_username')) {
                        $arr = $this->input->post();
//                                        print_r($arr); die();
                        $me_username = $arr['me_username'];
                        $data['me'] = $this->m_members->getByName($me_username, 3, 'NU');
                        if (!isset($data['me']) || empty($data['me'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/keep/walkinbringkeep/025'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/walkinbringkeep/025'));
                    }
                    break;
                case 'x621':
//                                    $data['construction_dinarpal'] = 1;
                    $title = 'Walk-In Bring & Pawn';
                    $data['item_type'] = $this->m_item_type_child->getAll();
                    $data['brands'] = $this->m_brands->getAll();
                    $data['item_status_courier'] = $this->m_item_status_courier->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    $data['storage_location'] = $this->m_storage_location->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    $data['item_type2'] = $this->m_item_type->getAll();
                    $data['item_vault_type'] = $this->m_item_vault_type->getAll();
                    $data['item_vault_mining_type'] = $this->m_item_vault_mining_type->getAll();
                    if ($this->input->post('user')) {
                        $arr = $this->input->post();
                        $me_username = $this->my_func->dinarpal_decrypt($arr['user']);
//                                        print_r($arr); 
//                                        print_r($me_username); 
//                                        die();
                        $data['members'] = $this->m_members->getByName($me_username, 3, 'NU');
                        if (!isset($data['members']) || empty($data['members'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/keep/walkinbringkeep/025'));
                        } else {
                            $this->session->set_userdata('customer_username', $me_username);
                        }
                    } else if ($this->session->userdata('customer_username')) {
                        $me_username = $this->session->userdata('customer_username');
                        $data['members'] = $this->m_members->getByName($me_username, 3, 'NU');
                        if (!isset($data['members']) || empty($data['members'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/keep/walkinbringkeep/025'));
                        } else {
                            $this->session->set_userdata('customer_username', $me_username);
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/walkinbringkeep/025'));
                    }

//                                    print_r($sess); die();
                    $sl_id = $sess['sl_id'];
//                                    $sl_id = 1;
                    $data['sl_id'] = $sl_id;
                    $sl = $this->m_storage_location->get($sl_id);
                    $data['storage_location'] = (isset($sl) && !empty($sl)) ? ($sl[0]->sl_name) : ("-");
                    break;
                case 'x6211' :
                    $title = "Item Detail";
                    if ($this->input->get("key")) {
                        $me_id = $this->input->get("key");
                        $me_id = $this->my_func->dinarpal_decrypt($me_id);
                        $data['arr']['0'] = $me_id;
                        //$bakul = $this->m_used_item->getAll_carts($me_id);
                    } else {
                        $me_id = $this->input->post('username');
                        $me_id = array_shift($this->m_members->getByName($me_id));
                        $me_id = $me_id->me_id;
                        $data['arr']['0'] = $me_id;
                    }
                    if ($this->input->get('ui')) {
                        $ui_id_temp = $this->input->get('ui');
                        $ui_id = $this->my_func->dinarpal_decrypt($ui_id_temp);
                        $ui = $this->m_used_item->get($ui_id);
                        $this->m_used_item->delete($ui_id);
                        $path = './assets/uploads/items/' . $ui[0]->ui_image;
                        unlink($path);
                        redirect(site_url('staff/rahnuOperation/walkBringPawn1/x6211?key=' . $this->my_func->dinarpal_encrypt($me_id)));
                    }
                    $data['brands'] = $this->m_brands->getAll();
                    $data['item_type'] = $this->m_item_type->getAll();
                    $data['item_courier'] = $this->m_item_courier->getAll();
                    $data['item_status_courier'] = $this->m_item_status_courier->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    $data['storage_location'] = $this->m_storage_location->getAll();
                    break;
                case 'x622': //display item summary
                    $title = "Walk-In Bring & Pawn (Confirmation)";
                    $cart = $this->cart->contents();
                    if (isset($cart) && !empty($cart)) {
                        
                        if ($this->input->post('col_rate')) {
                        } else {
                            $this->session->set_flashdata('error', 'Opss! Cannot do like that, mate.');
                            redirect(site_url('staff/rahnuOperation/walkBringPawn1/x621'));
                        }
                        
                        $arr = $this->input->post();

//                                            print_r($arr); die();
                        $col_rate = (is_numeric($arr['col_rate'])) ? ($arr['col_rate']) : (0);
                        $data['col_rate'] = $col_rate;

                        $sl = $this->m_storage_location->get($arr['sl_id']);
                        $data['sl'] = $sl;
                        $data['storage_location'] = (isset($sl) && !empty($sl)) ? ($sl[0]->sl_name) : ("-");
                        $data['sl_id'] = $arr['sl_id'];

                        $data['amil'] = $sess['me_firstname'] . ' ' . $sess['me_lastname'];

                        if ($this->session->userdata('customer_username')) {
                            $me_username = $this->session->userdata('customer_username');
                            $data['me'] = $this->m_members->getByName($me_username, 3, 'NU');
                            if (!isset($data['me']) || empty($data['me'])) {
                                $this->session->set_flashdata('error', 'Invalid User!');
                                redirect(site_url('staff/keep/walkinbringkeep/025'));
                            } else {
                                $this->session->set_userdata('customer_username', $me_username);
                            }
                        } else {
                            $this->session->set_flashdata('error', 'Access Denied!');
                            redirect(site_url('staff/rahnuOperation/walkBringPawn/x62'));
                        }
                        if ($this->input->post()) {
                            $arr = $this->input->post();
                            //                                        print_r($arr); die();
                            $data['arr'] = $arr;
                            $this->session->set_userdata('sl_id', $arr['sl_id']);
                            $this->session->set_userdata('arr', $arr);
                            $data['sl'] = $this->m_storage_location->get($arr['sl_id']);
                        } else if ($this->session->userdata('sl_id')) {
                            $sl_id = $this->session->userdata('sl_id');
                            $data['arr'] = $this->session->userdata('arr');
                            $data['sl'] = $this->m_storage_location->get($sl_id);
                        } else {
                            $this->session->set_flashdata('error', 'Opss! Something is wrong..');
                            redirect(site_url('staff/rahnuOperation/walkBringPawn/x62'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Opss! Your cart is '
                                . 'empty. You didn\'t set any items to be pawned yet.');
                        redirect(site_url('staff/rahnuOperation/walkBringPawn1/x621'));
                    }

                    break;
                case 'x623':
                    $title = "Walk-In Bring & Pawn (Receipt)";
                    break;
                case 'x623_xguna' :
                    $title = "Completed";
                    if (true) {//$this->input->post('formpostcourier2') && $this->input->post('formpostcourier2')==2
                        $post = $this->input->post();
                        //print_r($post);
                        //$arr['am_id'] = $post['am_id'];
                        $arr['me_id'] = $post['me_id'];
                        $useditem = $this->getNewUsedItem(5);
                        $arr['pa_start_date'] = $this->my_func->date_to_sql_time($post['pa_start_date'], date('Y-m-d'));
                        $arr['pa_end_date'] = $this->my_func->date_to_sql_time($post['pa_end_date'], date('Y-m-d'));
                        //$data['arr'] = $arr;//<<<---
                        //$this->load->view('staff/rahnuOperation/testoutput' , $data);
                        /* $pc_data = $arr['data'][sizeof($arr['data'])-1];
                          $pcd = explode("|", $pc_data);

                          //                                            print_r($arr); print_r($pcd); die();
                         */
                        $pa_total_weight = 0;
                        foreach ($useditem as $item) {
                            $pa_total_weight += $item->ui_weight;
                            //print_r($item);
                        }

                        //$pa_total_weight = $pcd[0];
                        $pa_grand_total = $post['totPrice'];
                        $pa_rahnu_rate = $post['pa_rahnu_rate'] * 1.0 / 100;

                        $pawnAdd = array(
                            'me_id' => $post['me_id'],
                            'pa_start_date' => $arr['pa_start_date'],
                            'pa_end_date' => $arr['pa_end_date'],
                            'am_id' => $post['am_id'],
                            'pa_total_weight' => $pa_total_weight,
                            'pa_grand_total' => $pa_grand_total,
                            'pa_rahnu_rate' => $pa_rahnu_rate,
                            'pa_safe_fee' => 0,
                            'pt_id' => 3, // pawn type BP
                            'sl_id' => $post['sl_id'],
                            'pa_status' => 1, // success
                            'pa_tracking' => null
                        );
                        $data['arr'] = $pawnAdd;
                        $pa_id = $this->m_pawn->add($pawnAdd);
                        if ($pa_id) {
                            $this->session->set_userdata('pc_pa_id', $pa_id);
                            $sizeData = sizeof($useditem);
                            for ($i = 0; $i < $sizeData; $i++) {
                                $ui = $useditem[$i];

                                $ui_id = $ui->ui_id;
                                $uiObj = $this->m_used_item->get($ui_id);
                                echo "<pre>";
                                print_r($uiObj);
                                echo "</pre>";

                                $pcc_image = (isset($uiObj) && !empty($uiObj)) ? ($uiObj[0]->ui_image) : ("");



                                //$pcc_price = (isset($uiObj) && !empty($uiObj)) ? ($uiObj[0]->pa_grand_total) : (0);
                                if (isset($uiObj) && !empty($uiObj)) {
                                    $pcc_price = $this->m_item_type_purity->getRate($uiObj[0]->it_id, $uiObj[0]->pu_id);
                                    $pcc_price = number_format($pcc_price, 2);
                                } else {
                                    $pcc_price = 0.00;
                                }
                                $tukarUiStatus = array('ui_status' => 2);
                                $this->m_used_item->edit($ui_id, $tukarUiStatus);/**

                                 */
                                $pc_qty = 1;
                                $pawnChildAdd = array(
                                    'pa_id' => $pa_id,
                                    'ui_id' => $ui_id,
                                    'pc_qty' => $pc_qty,
                                    'pc_status' => 1
                                );
                                $pc_id = $this->m_pawn_child->add($pawnChildAdd);
                                if ($pc_id) {
                                    for ($i1 = 0; $i1 < $pc_qty; $i1++) {
                                        $pawnChildChildAdd = array(
                                            'pc_id' => $pc_id,
                                            'pcc_image' => $pcc_image,
                                            'pcc_datetime' => date('Y-m-d H:i:s'),
                                            'pcc_price' => $pcc_price,
                                            'pcc_status' => 1
                                        );
                                        $pcc_id = $this->m_pawn_child_child->add($pawnChildChildAdd);
                                    }
                                    if ($pc_id) {
//                                      redirect(site_url('staff/purchaseAndPawn/post2/29'));
                                    } else {
                                        $this->session->set_flashdata('error', 'Opss! Something wrong with the pawning.'
                                                . ' Contact your administrator for this inconvenient incident.');
                                        redirect(site_url('staff/rahnuOperation/walkBringPawn/x621'));
                                    }
                                } else {
                                    $this->session->set_flashdata('error', 'Opss! Something wrong with the pawning.'
                                            . ' Contact your administrator for this inconvenient incident.');
                                    redirect(site_url('staff/rahnuOperation/walkBringPawn/x621'));
                                }
                            }
                            $data['arr'] = array("error" => "kt sini 1");
                        } else {
                            $this->session->set_flashdata('error', 'Opss! Something wrong with the pawning.'
                                    . ' Contact your administrator for this inconvenient incident.');
                            redirect(site_url('staff/rahnuOperation/walkBringPawn/x621'));
                        }

                        redirect(site_url('staff/rahnuOperation/status/x624'));
                    }
                    break;
                case 'x624' :
                    $title = "Berjaya Dong";
                    break;
                case 'x63':
                    $title = 'Walk-In Purchase & Courier';
                    $data['item_type'] = $this->m_item_type->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    break;
                case 'x631':
                    $title = 'Item List';
                    //$data['item_type'] = $this->m_item_type->getAll();
                    //$data['purity'] = $this->m_purity->getAll();
                    break;
                case 'x642': // delete process
                    $data["error"] = true;
                case 'x64':
                    $data['construction_dinarpal'] = 1;
                    $title = 'E-Rahnu History';
                    $data["pawn"] = $this->m_pawn->getAll('DESC');

                    $data["arr"] = array(
                        "dateMaxMin" => $this->m_pawn->getMinMax("pa.pa_start_date"),
                        "dueDateMaxMin" => $this->m_pawn->getMinMax("pa.pa_end_date"),
                        "weightMinMax" => $this->m_pawn->getMinMax("pa.pa_total_weight"),
                        "quantity" => $this->m_pawn_child->getMaxQuantity(),
                    );
                    //"weightRange" => $this->m_pawn->getAllRange("pa_total_weight", 10 , 100)
                    /* echo "<pre>";									
                      print_r($data);
                      echo "</pre>"; */
                    break;
                case 'x641':
                    $title = 'Summary';
                    if ($this->input->get('rh')) {
                        $pa_id = $this->my_func->dinarpal_decrypt($this->input->get('rh'));
                        $data['pa'] = $this->m_pawn->get($pa_id);
                        $data['pawn_child_child'] = $this->m_pawn_child_child->getAll($pa_id);
                    }
                    break;
                case 'x643':
                    $title = 'Member Detail';
                    if ($this->input->get('rh')) {
                        //$pa_id = $this->my_func->dinarpal_decrypt($this->input->get('rh'));
                        $me_id = $this->my_func->dinarpal_decrypt($this->input->get('rh'));
                        $data['member'] = $this->m_members->get($me_id);
                        if (empty($data['member'])) {
                            //$data['member'] = array( 'testing' => 'no data');
                            redirect(site_url('staff/dinarpalAccount/overview/y11'));
                        }
                    } else {
                        redirect(site_url('staff/dinarpalAccount/overview/y11'));
                    }
                    break;
                case 'x644':// search filter
                    $title = 'E-Rahnu History';
                    $data["pawn"] = $this->m_pawn->getAll('DESC');
                    break;

                case 'x65':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Safe Keeping Summary';
                    $data["pawn"] = $this->m_pawn->getAll('DESC');
                    $data["arr"] = array(
                        "dateMaxMin" => $this->m_pawn->getMinMax("pa.pa_start_date"),
                        "dueDateMaxMin" => $this->m_pawn->getMinMax("pa.pa_end_date"),
                        "weightMinMax" => $this->m_pawn->getMinMax("pa.pa_total_weight"),
                        "quantity" => $this->m_pawn_child->getMaxQuantity(),
                        "marhun" => $this->m_pawn->getMinMax("pa.pa_grand_total")
                    );

                    break;

                case 'x651':
                    $title = 'Safe Keeping Detail';
                    if ($this->input->get('rh')) {
                        $pa_id = $this->my_func->dinarpal_decrypt($this->input->get('rh'));
                        $data['pa'] = $this->m_pawn->get($pa_id);
                        $data['pawn_child_child'] = $this->m_pawn_child_child->getAll($pa_id);
                    }
                    break;
                case 'x66':
                    $data['account_types'] = $this->m_account_type->getAll();
                    $title = 'Walk-In Bring & Keep';
                    break;
                case 'x661':
                    $title = "Item Detail";
                    if ($this->input->get("key")) {
                        $me_id = $this->input->get("key");
                        $me_id = $this->my_func->dinarpal_decrypt($me_id);
                        $data['arr']['0'] = $me_id;
                        //$bakul = $this->m_used_item->getAll_carts($me_id);
                    } else {
                        $me_id = $this->input->post('username');
                        $me_id = array_shift($this->m_members->getByName($me_id));
                        $me_id = $me_id->me_id;
                        $data['arr']['0'] = $me_id;
                    }
                    if ($this->input->get('ui')) {
                        $ui_id_temp = $this->input->get('ui');
                        $ui_id = $this->my_func->dinarpal_decrypt($ui_id_temp);
                        $ui = $this->m_used_item->get($ui_id);
                        $this->m_used_item->delete($ui_id);
                        $path = './assets/uploads/items/' . $ui[0]->ui_image;
                        unlink($path);
                        redirect(site_url('staff/rahnuOperation/walkBringKeep1/x661?key=' . $this->my_func->dinarpal_encrypt($me_id)));
                    }
                    $data['brands'] = $this->m_brands->getAll();
                    $data['item_type'] = $this->m_item_type->getAll();
                    $data['item_courier'] = $this->m_item_courier->getAll();
                    $data['item_status_courier'] = $this->m_item_status_courier->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    $data['storage_location'] = $this->m_storage_location->getAll();
                    break;
                case 'x6621':
                    $title = "Confirmation";
                    $arr['post'] = $this->input->post();
                    $data['arr'] = $this->input->post();
                    break;
                case 'x662' :
                    $title = "Item Detail";
                    $arr['post'] = $this->input->post();
                    if (isset($arr['post']['formpostkeep'])) {
                        //redirect(site_url('staff/rahnuOperation/walkBringKeep1/x663?key='.$this->my_func->dinarpal_encrypt($arr['me_id1'])));
                        if (isset($arr['post']['me_id1'])) {
                            $arr['used_item'] = $this->m_used_item->getAll_carts($arr['post']['me_id1'], 3);
                            $num = 0;
                            foreach ($arr['used_item'] as $key) {

                                $arr['item_storage'][$num] = array(
                                    "me_id" => $arr['post']['me_id1'],
                                    "itct_id" => "null",
                                    "ui_id" => $key->ui_id,
                                    "is_qty" => 1,
                                    "is_status" => 1
                                );
                                /** 								
                                  kat add arr dlm table item_storage
                                 */
                                $is_id = $this->m_item_storage->add($arr['item_storage'][$num]);
                                if ($is_id == 0) {
                                    $arr['error1'][$num] = "not insert into db";
                                } else {
                                    $arr['item_storage_child'][$num] = array(
                                        'is_id' => $is_id,
                                        'isc_image' => $key->ui_image,
                                        'isc_datetime' => "null",
                                        'isc_price' => "null",
                                        'isc_status' => 1
                                    );
                                    /**
                                      kat add arr dlm table item_storage_child
                                     */
                                    $isc_id = $this->m_item_storage_child->add($arr['item_storage_child'][$num]);
                                    if ($isc_id == 0) {
                                        $arr['error2'][$num] = "not insert into db";
                                        $this->m_item_storage->delete($is_id);
                                    } else {
                                        $tukarUiStatus = array('ui_status' => 4);
                                        $this->m_used_item->edit($key->ui_id, $tukarUiStatus);
                                    }
                                }
                                $num++;
                            }
                            redirect(site_url('staff/rahnuOperation/status/x663?status=' . $this->my_func->dinarpal_encrypt($arr['me_id1'])));


                            //$arr['item_storage_child']
                        } else {
                            redirect(site_url('staff/rahnuOperation/walkBringKeep/x66'));
                            //echo "error 1";
                        }
                    } else {
                        if (isset($arr['me_id1'])) {
                            redirect(site_url('staff/rahnuOperation/walkBringKeep1/x661?key=' . $this->my_func->dinarpal_encrypt($arr['me_id1'])));
                        } else {
                            redirect(site_url('staff/rahnuOperation/walkBringKeep/x66'));
                            //echo "error 2";
                        }
                    }
                    $data['arr'] = $arr;
                    break;
                case 'x663':
                    $data['keep'] = true;
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function getNewUsedItem($stat = 1, $keep = 1) {
        $me_id = $this->input->post('me_id');
        $bakul = $this->m_used_item->getAll_carts($me_id, $keep);
        $data['used_item'] = $bakul;
        $data['stat'] = $stat;
        $data['col_rate'] = $this->input->post('col_rate');
        $data['storage_location'] = $this->m_storage_location->getAll();
        $ft = $this->m_fee_type->get(3);
        if (!isset($ft) || empty($ft)) {
            echo "Opss! Fee cannot be calculated ..";
            die();
        }
        $da = $this->m_dinarpal_account->get_member($me_id);
        $edinarbalance = (isset($da) && !empty($da)) ? ($da[0]->da_gold_balance) : (0.0);
        $data['edinarbal'] = $edinarbalance;
        $data['ft'] = $ft;
        $data['keep'] = $keep;
        //echo $this->load->view('staff/rahnuOperation/ajax/getListUsedItem' , $data ,true);
        if ($stat == 5) {
            //$data['arr'] = $bakul;
            return $bakul;
        } else {
            echo $this->load->view('staff/rahnuOperation/ajax/getListUsedItem', $data, true);
        }
        //$data['arr'] = $bakul;
        //echo $this->load->view('staff/rahnuOperation/testoutput' , $data ,true);
    }

    public function setBakul($mode = 0) {
        //-mode-
        //0 => bringpawn
        //1 => bringkeep
        //$sess = $this->session->all_userdata();
        //$me_id = $sess['me_id'];
        //$arr = $this->input->post();
        $arr = $this->input->post();
        //$data['arr']['1'] = $_FILES;         
        //unset($arr['pc1']);
        //$qty = $arr['qty'];
        unset($arr['qty']);
        $arr['ui_qty'] = 1;
        //unset($arr['qty']);
        //$arr['me_id'] = $me_id; dh antar guner post
        if ($mode == 0) {
            $arr['ui_status'] = 1;
        } else {
            $arr['ui_status'] = 3;
        }

        //$this->session->set_flashdata('error', 'huhu.');
        //$data['error'] = "function nie jd la";
        // validation on weight and quantity
        if ((!isset($arr['ui_weight']) || empty($arr['ui_weight'])) || ($arr['ui_weight'] <= 0 || $arr['ui_weight'] == '')) {
            $this->session->set_flashdata('error', 'Opss! Invalid weight.');
            redirect(site_url('staff/rahnuOperation/walkBringPawn1/x621?key=' . $this->my_func->dinarpal_encrypt($this->input->post('me_id'))));
        }
        /* if ( (!isset($arr['ui_qty']) || empty($arr['ui_qty'])) 
          || ($arr['ui_qty'] <= 0 || $arr['ui_qty'] == '') ) {
          $this->session->set_flashdata('error', 'Opss! Invalid quantity.');
          redirect(site_url('staff/rahnuOperation/walkBringPawn1/x621'));
          } */
        //$data['arr'] = $arr;
        //$this->load->view('staff/rahnuOperation/testoutput' , $data);

        $dataUpload = $this->my_func->do_upload('ui_image', './assets/uploads/items/');
        if (!isset($dataUpload['error'])) {
            $arr['ui_image'] = $dataUpload['upload_data']['file_name'];
            $uiAdd = $this->m_used_item->add($arr);
            if ($uiAdd) {
                //$this->session->set_flashdata('error', 'haha ader error kat sini');
                // success add
            } else {
                $this->session->set_flashdata('error', 'Opss! Something wrong while adding that item.');
                //  echo "error";
                //                    die();
            }
        } else {
            $this->session->set_flashdata('error', 'Opss! Error image: ' . $dataUpload['error']);
            //                echo "error";
            //                die();
        }
        if ($mode == 0) {
            redirect(site_url('staff/rahnuOperation/walkBringPawn1/x6211?key=') . $this->my_func->dinarpal_encrypt($this->input->post('me_id')));
        } else {
            redirect(site_url('staff/rahnuOperation/walkBringKeep1/x661?key=') . $this->my_func->dinarpal_encrypt($this->input->post('me_id')));
        }
    }

    /**

     */
    public function getAjaxOverview() {
        $temp[0] = $this->m_members->overview(); //1
        //$temp[1] = $this->m_pawn->overview();//2
        $temp[1] = $this->m_transaction->overview(); //4
        $arr = $this->m_transaction->overviewAll();

        /* echo "<pre>";
          print_r($arr);
          echo "</pre>"; */
        $data = array(
            'm' => -1
        );

        $data['transaction_status'] = $this->m_transaction_status->getAll();

        $htmlCode = $this->load->view('staff/newMenu/ajax/ajaxOverview', $data, true);
        $htmlCode .= '<div class="col-md-12">';

        $today_date = date('Y-m-d H:i:s');
        $me_total_register_today = $this->m_members->getAll(3, -1, -1, $today_date);
        $me_total_register = $this->m_members->getAll(3);
        $size_mtrt = sizeof($me_total_register_today);
        $size_mtr = sizeof($me_total_register);
        $total_today = (is_numeric($size_mtrt)) ? (number_format($size_mtrt, 0)) : ("0");
        $total_all = (is_numeric($size_mtr)) ? (number_format($size_mtr, 0)) : ("0");
        $data1['total_today'] = $total_today;
        $data1['total_all'] = $total_all;
        $htmlCode .= $this->load->view('staff/newMenu/ajax/ajaxTotalRegister', $data1, true);

        for ($i = 0; $i < (sizeof($arr) + 2); $i++) {
            $num = $i;
            if ($i <= 1) {
                $data = array(
                    'm' => $i,
                    'status' => $temp[$i]
                );
                $htmlCode .= $this->load->view('staff/newMenu/ajax/ajaxOverview', $data, true);
            } else {
                $data = array(
                    'tt_id' => $arr[$i - 2]["tt_id"],
                    'm' => $i,
                    'status' => $arr[$i - 2]["status"],
                    "total" => $arr[$i - 2]['total'],
                    "title" => ($i + 2) . $arr[$i - 2]['title']
                );
                $htmlCode .= $this->load->view('staff/newMenu/ajax/ajaxOverview', $data, true);
//                        $htmlCode .= "|".$arr[$i-2]['title'].":".$num."|";
            }
            $num = $i + 1;
//    		if (($num)%4 == 0) {
//    			$htmlCode .= "
//    			</div>";
//    			if ($num != (sizeof($arr)+2)) {
//    				$htmlCode .= '<div class="col-md-12">
//    				';
//    			}    			
//    		}
//    		if ((sizeof($arr)+2)%4 != 0 && $num == (sizeof($arr)+2) ) {
//    		    $htmlCode .= "
//    			</div>";
//    		}    		
        }
        echo $htmlCode;
        //echo "testing";  	
    }

    public function getAjaxHistoryList() {
        $singleval = $this->input->post('satuval');
        $val1 = $this->input->post('duaval1');
        $val2 = $this->input->post('duaval2');
        $opt = $this->input->post('tapis');
        $data["pawn"] = $this->m_pawn->getAll('ASC');
        //sepatutnya bleh buat guna switch case, dah separuh jln dh.

        if ($opt == -1) {
            $data["pawn"] = $this->m_pawn->getAll('DESC');
        }
        if ($opt == 1) {
            $data["pawn"] = $this->m_pawn->get($singleval);
        }
        if ($opt == 2) {
            $val1 = $val1 . " 0:0:0";
            $val2 = $val2 . " 23:59:59";
            $data['pawn'] = $this->m_pawn->getAllRange('pa_start_date', $val1, $val2);
        }
        if ($opt == 3) {
            if ($singleval == 1) {
                $cat = "PP";
            }
            if ($singleval == 2) {
                $cat = "PC";
            }
            if ($singleval == 3) {
                $cat = "BP";
            }
            $data['pawn'] = $this->m_pawn->getByCol('pt.pt_code', $cat);
            //print_r($data);
            //echo "hahaha ".$cat;
        }
        if ($opt == 4) {
            $data['pawn'] = $this->m_pawn->getAllRange('pa.pa_total_weight', $val1, $val2);
        }
        if ($opt == 5) {
            $data['pawn'] = $this->m_pawn->getAllRange('pc.pc_qty', $val1, $val2);
        }
        if ($opt == 6) {
            $data['pawn'] = $this->m_pawn->getAllRange('pa.pa_grand_total', $val1, $val2);
        }
        if ($opt == 7) {
            $data['pawn'] = $this->m_pawn->getAllRange('pa.pa_rahnu_rate', $val1, $val2);
        }
        if ($opt == 8) {
            $val1 = $val1 . " 0:0:0";
            $val2 = $val2 . " 23:59:59";
            $data['pawn'] = $this->m_pawn->getAllRange('pa.pa_end_date', $val1, $val2);
        }
        if ($opt == 9) {
            $curDate = now();
            $curDate = $curDate->date_format('Y-m-d H:i:s');
        }
        //echo $this->load->view('staff/rahnuOperation/ajax/ajaxFilterPawnHistory', $data, true);

        if ($data["pawn"] == null) {
            echo "<tr>
    		<td colspan = '10' align = 'center'><strong>Data Not Found</strong></td>
    		</tr>";
        } else {
            echo $this->load->view('staff/rahnuOperation/ajax/ajaxFilterPawnHistory', $data, true);
        }
    }

    public function getAjaxKeepingList() {
        $singleval = $this->input->post('satuval');
        $val1 = $this->input->post('duaval1');
        $val2 = $this->input->post('duaval2');
        $opt = $this->input->post('tapis');
        $data["pawn"] = $this->m_pawn->getAll('ASC');
        //sepatutnya bleh buat guna switch case, dah separuh jln dh.

        if ($opt == -1) {
            $data["pawn"] = $this->m_pawn->getAll('DESC');
        }
        if ($opt == 1) {
            $data["pawn"] = $this->m_pawn->get($singleval);
        }
        if ($opt == 2) {
            $val1 = $val1 . " 0:0:0";
            $val2 = $val2 . " 23:59:59";
            $data['pawn'] = $this->m_pawn->getAllRange('pa_start_date', $val1, $val2);
        }
        if ($opt == 3) {
            if ($singleval == 1) {
                $cat = "PP";
            }
            if ($singleval == 2) {
                $cat = "PC";
            }
            if ($singleval == 3) {
                $cat = "BP";
            }
            $data['pawn'] = $this->m_pawn->getByCol('pt.pt_code', $cat);
            //print_r($data);
            //echo "hahaha ".$cat;
        }
        if ($opt == 4) {
            $data['pawn'] = $this->m_pawn->getAllRange('pa.pa_total_weight', $val1, $val2);
        }
        if ($opt == 5) {
            $data['pawn'] = $this->m_pawn->getAllRange('pc.pc_qty', $val1, $val2);
        }
        if ($opt == 6) {
            $data['pawn'] = $this->m_pawn->getAllRange('pa.pa_grand_total', $val1, $val2);
        }
        if ($opt == 7) {
            $data['pawn'] = $this->m_pawn->getAllRange('pa.pa_rahnu_rate', $val1, $val2);
        }
        if ($opt == 8) {
            $val1 = $val1 . " 0:0:0";
            $val2 = $val2 . " 23:59:59";
            $data['pawn'] = $this->m_pawn->getAllRange('pa.pa_end_date', $val1, $val2);
        }
        if ($opt == 9) {
            $curDate = now();
            $curDate = $curDate->date_format('Y-m-d H:i:s');
        }
        //echo $this->load->view('staff/rahnuOperation/ajax/ajaxFilterPawnHistory', $data, true);

        if ($data["pawn"] == null) {
            echo "<tr>
    		<td colspan = '12' align = 'center'><strong>Data Not Found</strong></td>
    		</tr>";
        } else {
            echo $this->load->view('staff/rahnuOperation/ajax/ajaxFilterSaveKeepingHistory', $data, true);
        }
    }

    public function getAjaxPurityPrice() {
        $this->load->model('m_item_type_purity');
        $it_id = $this->input->post('it_id');
        $pu_id = $this->input->post('pu_id');

        echo $this->m_item_type_purity->getRate($it_id, $pu_id);
    }

    public function getAjaxRow1() {
        $data['numrow'] = $this->input->post('numrow');
        $data['item_type'] = $this->m_item_type->getAll();
        $data['purity'] = $this->m_purity->getAll();
        echo $this->load->view('staff/rahnuOperation/ajax/ajaxGetRow1', $data, true);
    }

    public function getAjaxItemTypeFarRed() {
        $it_id = $this->input->post('it_id');
        $row = $this->input->post('row');
        $data['item_type'] = $this->m_item_type->get($it_id);
        $data['item_type_child'] = $this->m_item_type_child->getAll_byParent($it_id);
        $data['numrow'] = $row;
        echo $this->load->view('staff/rahnuOperation/ajax/ajaxItemTypeFarRed', $data, true);
        //staff/rahnuOperation/ajax/ajaxItemTypeFarRed
        //$this->parent_page.'/pawnAndRegister/ajax/ajaxItemType'
    }

    public function getAjaxItemChildTypeFarRed() {
        $this->load->model('m_item_type_child_type');
        $itc_id = $this->input->post('itc_id');
        $data['numrow'] = $this->input->post('row');
        if ($itc_id == 2) {
            $data['tukar'] = true;
        }
        $data['item_child_type'] = $this->m_item_type_child_type->getAll_byItemChildType($itc_id);

        echo $this->load->view('staff/rahnuOperation/ajax/ajaxItemTypeChildFarRed', $data, true);
        //$this->parent_page.'/pawnAndRegister/ajax/ajaxItemTypeChild'
    }

    public function getAjaxItemChildTypeFarRedWeight($returnVal = false, $itct_id = null) {
        $this->load->model('m_itc_type');
        if (!$returnVal) {
            $itct_id = $this->input->post("itct_id");
            $itct_id = $this->m_itc_type->get($itct_id);
            if (is_array($itct_id)) {
                $itct_id = array_shift($itct_id);
            }

            print_r($itct_id);
        } else {
            $itct_id = $this->m_itc_type->get($itct_id);
            return $itct_id->itct_weight;
        }
    }

    public function dinarDirhamOperation($output = 'dashboard', $menu1 = '11') {
        $data = array();
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                case 'x71':
                    $title = 'Overview';
                    $data['transaction1'] = $this->m_transaction->getAll(-1, 'DESC', 7);
                    $data['transaction_type'] = $this->m_transaction_type->getAll();
                    $data['transaction_status'] = $this->m_transaction_status->getAll();

                    break;
                case 'x72':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Send Payment';
//					$data = null;
                    if ($this->session->flashdata('error')) {
                        $data['error'] = $this->session->flashdata('error');
                    }
                    if ($this->session->flashdata('success')) {
                        $data['success'] = $this->session->flashdata('success');
                    }
                    if ($output != "member") {
                        if ($this->input->post('me_id_from')) {
                            $data['me_id'] = $this->input->post('me_id_from');
                            $data['payment_type'] = $this->m_payment_type->getAll();
                            $data['account_type'] = $this->m_account_type->getAll();
                        } else {
                            if ($this->input->get('key')) {
                                $data['me_id'] = $this->my_func->dinarpal_decrypt($this->input->get('key'));
                                //$this->session->unset_userdata('id');
                                $data['payment_type'] = $this->m_payment_type->getAll();
                                $data['account_type'] = $this->m_account_type->getAll();
                            } else {
                                $output = "member";
                            }
                        }
                    }
                    break;
                case 'x721':
                    $arr = $this->input->post();
                    //$data['arr'] = $arr;
                    // validation
                    $bol_flag_failed = false;
                    $error = '';
                    if ('0' == $arr['tr_amount'] || 0 == $arr['tr_amount'] || '' == $arr['tr_amount'] || NULL == $arr['tr_amount'] || $arr['tr_amount'] < 0) {
                        $error .= 'Invalid amount transfer!<br />';
                        $bol_flag_failed = true;
                    }
                    if ($arr['me_id_from'] == $arr['me_id_to']) {
                        $error .= 'Cannot send to yourself!<br />';
                        $bol_flag_failed = true;
                    }
                    if (0 == $arr['me_id_to']) {
                        $error .= 'Invalid receiver!<br />';
                        $bol_flag_failed = true;
                    }
                    if ($bol_flag_failed) {
                        $this->session->set_flashdata('error', $error);
                        //$this->session->set_flashdata('id', $arr['me_id_from']);
                        redirect(site_url('staff/dinarDirhamOperation/sendPayment/x72?key=' . $this->my_func->dinarpal_encrypt($arr['me_id_from'])));
                    }

                    echo "<pre>";
                    print_r($arr);
                    echo "</pre>";

                    $this->session->set_userdata('payment_temp', $arr);

                    redirect(site_url('staff/dinarDirhamOperation/sendPaymentConfirm/x722'));

                    break;
                case 'x722':
                    $title = "Confirmation";
                    $data['payment_temp'] = $this->session->userdata('payment_temp');
                    $data['payment_type'] = $this->m_payment_type->getAll();
                    $data['account_type'] = $this->m_account_type->getAll();
                    $data['sess'] = $this->session->all_userdata();
                    break;
                case 'x723':
                    $arr = $this->input->post();
                    $data['arr'] = null;

                    // validation
                    $bol_flag_failed = false;
                    $error = '';
                    if ('0' == $arr['tr_amount'] || 0 == $arr['tr_amount'] || '' == $arr['tr_amount'] || NULL == $arr['tr_amount'] || $arr['tr_amount'] < 0) {
                        $error .= 'Invalid amount transfer!<br />';
                        $bol_flag_failed = true;
                    }
                    if ($arr['me_id_from'] == $arr['me_id_to']) {
                        $error .= 'Cannot send to yourself!<br />';
                        $bol_flag_failed = true;
                    }
                    if (0 == $arr['me_id_to']) {
                        $error .= 'Invalid receiver!<br />';
                        $bol_flag_failed = true;
                    }
                    if ($bol_flag_failed) {
                        $this->session->set_flashdata('error', $error);
                        //echo $error;
                        redirect(site_url('staff/dinarDirhamOperation/sendPayment/x72?key=' . $this->my_func->dinarpal_encrypt($arr['me_id_from'])));
                    }

                    unset($arr['username']);
                    unset($arr['pt_desc']);
                    unset($arr['at_desc']);
                    $arr['ts_id'] = 1;
                    $arr['tr_datetime'] = date('Y-m-d H:i:s');

                    $bol_send = $this->debit_kredit($arr['me_id_from'], $arr['tr_amount'], $arr['at_id'], 2); // 2 for substract.
                    //echo "<pre>"; print_r($arr); echo "</pre>"; die();
                    //$data['arr'] = "line 3";
                    if ($bol_send) {
                        $ft_price = $this->m_fee_type->getPrice($arr['ft_id']);
                        $trData = array(
                            'me_id' => $arr['me_id_from'],
                            'tr_amount' => $ft_price,
                            'at_id' => $arr['at_id'],
                            'tr_datetime' => date('Y-m-d H:i:s'),
                            'ft_id' => $arr['ft_id']
                        );
                        $bol_admin_transaction = $this->m_dinarpal_transaction->add($trData);

                        // add admin account
                        $bol_admin_account = $this->debit_kredit_admin(1, $ft_price, $arr['at_id'], 1);

                        $bol_flag_failed = false;

                        if ($bol_admin_transaction && $bol_admin_account) {
                            $bol_receive = $this->debit_kredit($arr['me_id_to'], ($arr['tr_amount'] - $ft_price), $arr['at_id'], 1); // 1 for add.
                            //$data['arr'] = "line 1";
                            if ($bol_receive) {
                                $arr['tt_id'] = 1;
                                $status = $this->m_transaction->add($arr);
                                if ($status) {
                                    $this->session->set_flashdata('sucess', 'Send payment success ..');
                                    //$data['arr'] = "success";								
                                } else {
                                    $this->session->set_flashdata('error', 'Send payment failed!');
                                    //$data['arr'] = "error";
                                }
                            } else {
                                $bol_flag_failed = true;
                            }
                        } else {
                            $bol_flag_failed = true;
                            //$data['arr'] = "line 2";
                        }
                        if ($bol_flag_failed) {
                            $this->debit_kredit($arr['me_id_from'], $arr['tr_amount'], $arr['at_id'], 1); // 1 for add.
                            $this->session->set_flashdata('error', 'Send payment failed!');
                        }
                    }
                    //redirect(site_url('staff/dinarDirhamOperation/sendPayment/x72?key='.$this->my_func->dinarpal_encrypt($arr['me_id_from'])));
                    $data['arr'] = $arr;
                    break;
                case 'x73':
                    $title = 'Withdrawal';
                    break;
                case 'x741':
                    if ($this->input->get('trid')) {
                        $tr_id = $this->my_func->dinarpal_decrypt($this->input->get('trid'));
                        //echo $tr_id;
                        $data['trDetail'] = $this->m_transaction->get($tr_id);
                        if (empty($data['trDetail'])) {
                            redirect(site_url('staff/dinarDirhamOperation/transHistory/x74'));
                            break;
                        }
                        $data['transaction_type'] = $this->m_transaction_type->getAll();
                        $data['transaction_status'] = $this->m_transaction_status->getAll();
                        //$data['code'] = $this->load->view('member/dinarDirham/detailHistory', $data1, true);
                    } else {
                        redirect(site_url('staff/dinarDirhamOperation/transHistory/x74'));
                    }
                    break;
                case 'x74':

                    $data['transaction_type'] = $this->m_transaction_type->getAll();
                    $data['transaction_status'] = $this->m_transaction_status->getAll();
                    if ($this->input->post('searchform')) {
                        $arr = $this->input->post();
                        $tt_id = $arr['tt_id'];
                        $ts_id = $arr['ts_id'];
                        $data['arr'] = $arr;
                        $data['transaction1'] = $this->m_transaction->getAll(-1, 'DESC', $this->my_func->getLimitRows(), $ts_id, $tt_id);
                    } else {
                        if ($this->input->get('key')) {
                            $arr1 = explode('|', $this->my_func->dinarpal_decrypt($this->input->get('key')));
                            $arr['tt_id'] = $arr1[0];
                            $arr['ts_id'] = $arr1[1];
                            $data['arr'] = $arr;
                            $data['transaction1'] = $this->m_transaction->getAll(-1, 'DESC', $this->my_func->getLimitRows(), $arr['ts_id'], $arr['tt_id']);
                        } else {
                            $data['transaction1'] = $this->m_transaction->getAll(-1, 'DESC', $this->my_func->getLimitRows());
                        }
                    }
                    $title = 'Transaction History';
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function getAjaxGetItem1() {
        if ($this->input->post('me_id')) {
            $me_id = $this->input->post('me_id');
            $data['item_storage'] = $this->m_item_storage_child->getAll_byMember($me_id);
            echo $this->load->view('member/dinarDirham/ajax/ajaxGetItem1', $data, true);
        } else {
            echo "";
        }
    }

    public function muamalatOperation($output = 'dashboard', $menu1 = '11') {
        if ($output != 'dashboard') {
            $crud = new grocery_CRUD();
            $crud->set_theme('twitter-bootstrap');
            $crud->unset_export();
            $crud->unset_print();
            $data = array();
            $title = 'Dashboard';

            switch ($menu1) {

                case 'x811':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Walk-In Purchase & Courier';
                    break;

                case 'x81':
//                    $data['construction_dinarpal'] = 1;
                    $title = 'Manage Gold Silver Souq';
                    $data['vault'] = $this->m_vault->getAll_personal(3, -1, 1);
                    break;

                case 'x82':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Manage Sell Buy Board';
                    break;

                case 'x822':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Purchase Summary';
                    break;


                case 'x83':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Manage Bids (Auction)';
//                                        $crud->set_table("bids");
//                                        $crud->set_subject("Manage Bids");
//                                        $crud->set_relation('bb_id','batch_bids','bb_desc');
//                                        $crud->fields('bid_name', 'bid_startdate', 'bid_enddate', 'bid_startprice', 'bid_killprice', 'bb_id', 'bid_image');
//                                        $crud->display_as('bid_name', 'Item Name')
//                                                ->display_as('bid_startdate', 'Bid Start Date')
//                                                ->display_as('bid_enddate', 'Bid End Date')
//                                                ->display_as('bid_startprice', 'Bid Starting Price')
//                                                ->display_as('bid_killprice', 'Bid Killing Price')
//                                                ->display_as('bb_id', 'Batch Name')
//                                                ->display_as('bid_image', 'Item Image');
//                                        $crud->set_field_upload('bid_image', 'assets/uploads/bids');
//                                        $data = $crud->render();
                    break;

                case 'x831':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Bidding Board';
                    break;

                case 'x832':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Bidding Summary';
                    break;

                case 'x84':
                    $data['construction_dinarpal'] = 1;
                    $title = 'E-Point';
                    break;
                case 'x85':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Physical (Gram)';
                    break;
                case 'x86':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Redeem Summary';
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function merchantOperation($output = 'dashboard', $menu1 = '11') {
        $data = array();
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                case 'x91':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Online Store Services';
                    break;
                case 'x92':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Payment Link @ Button';
                    break;
                case 'x93':
                    $data['construction_dinarpal'] = 1;
                    $title = 'List Of Item';
                    break;
                case 'x94':
                    $data['construction_dinarpal'] = 1;
                    $title = 'API Code';
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function getColRate() {
        $col_rate = $this->input->post('col_rate');
        $col_rate = $col_rate * 1.0 / 100;

        $cart = $this->cart->contents();
//            print_r($cart);
        $total_weight = 0.00;
        $total_price_rate_gram = 0.00;
        $total_price = 0.00;
        $total_fee = 0.00;
        $ii = 1;
        if (isset($cart) && !empty($cart)) {
            foreach ($cart as $caitem => $caval) {
                $rowx = $caval['rowid'];

                $v_weight = (is_numeric($caval['options']['v_weight']) && $caval['options']['v_weight'] != "") ? ($caval['options']['v_weight']) : (0);

                $itc_id = $caval['options']['itc_id'];
                $itc = $this->m_item_type_child->get($itc_id);
                //                print_r($itc);
//                $itp_price = (isset($itc) && !empty($itc)) ? ($itc[0]->itp_price) : (0);
                $ft_rahnu_price = (isset($itc) && !empty($itc)) ? ($itc[0]->itp_marhun) : (0);
                $ft_rahnu_price = (is_numeric($ft_rahnu_price)) ? ($ft_rahnu_price) : (0);
//                $ft_id_rahnu = 2;
//                $ft_rahnu = $this->m_fee_type->get($ft_id_rahnu);
//                $ft_rahnu_price = 0.00;
//                if (isset($ft_rahnu) && !empty($ft_rahnu)) {
//                    $ft_type_rahnu = $ft_rahnu[0]->ft_type;
//                    $ft_price_rahnu = $ft_rahnu[0]->ft_price;
//                    if ($ft_type_rahnu == 'STATIC') {
//                        $ft_rahnu_price = $itp_price - $ft_price_rahnu;
//                    } else if ($ft_type_rahnu == 'DYNAMIC') {
//                        $ft_rahnu_price = $itp_price - ($itp_price * $ft_price_rahnu);
//                    }
//                }

                $price = $ft_rahnu_price * $v_weight;
                $total_price += $price;
            }
        }

        die(number_format($total_price * $col_rate, 4));
    }

    public function senddeposit($output = 'dashboaxrd', $menu1 = '11') {
        $data = array();
        $sess = $this->session->all_userdata();
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {

                case '037':
//                                    $data['construction_dinarpal'] = 1;
                    $title = 'Walk-In Deposit ' . $this->my_func->getCurrency();
                    $this->session->set_userdata('depo_me_username', '');
                    $this->session->unset_userdata('depo_me_username');
                    break;
                case '0371x':
                    $title = 'Walk-In Deposit ' . $this->my_func->getCurrency();
                    $data['deposit_type'] = $this->m_deposit_type->getAll(1);
                    if ($this->input->post('me_username')) {
                        $me_username = $this->input->post('me_username');
                        $data['me'] = $this->m_members->getByName($me_username, 3, 'NU');
                        if (!isset($data['me']) || empty($data['me'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/senddeposit/edinaredirham/037'));
                        } else {
                            $data['me_id'] = $data['me'][0]->me_id;
                            $data['me_username'] = $me_username;
                            $this->session->set_userdata('depo_me_username', $me_username);
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/senddeposit/edinaredirham/037'));
                    }
                    break;
                case '0371':
                    $title = 'Walk-In Deposit ' . $this->my_func->getCurrency();
                    $data['deposit_type'] = $this->m_deposit_type->getAll(1);
                    if ($this->input->post('user')) {
                        $me_username = $this->my_func->dinarpal_decrypt($this->input->post('user'));
//                                        print_r($me_username); die();
                        $data['me'] = $this->m_members->getByName($me_username, 3, 'NU');
//                                        print_r($data['me']); die();
                        if (!isset($data['me']) || empty($data['me'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/senddeposit/edinaredirham/037'));
                        } else {
                            $data['me_id'] = $data['me'][0]->me_id;
                            $data['me_username'] = $me_username;
                            $this->session->set_userdata('depo_me_username', $me_username);
                        }
                    } else if ($this->session->userdata('depo_me_username')) {
                        $me_username = $this->session->userdata('depo_me_username');
//                                        print_r($me_username); die();
                        $data['me'] = $this->m_members->getByName($me_username, 3, 'NU');
//                                        print_r($data['me']); die();
                        if (!isset($data['me']) || empty($data['me'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/senddeposit/edinaredirham/037'));
                        } else {
                            $data['me_id'] = $data['me'][0]->me_id;
                            $data['me_username'] = $me_username;
                            $this->session->set_userdata('depo_me_username', $me_username);
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/senddeposit/edinaredirham/037'));
                    }
                    break;
                case '0372':
                    $title = 'Walk-In Deposit ' . $this->my_func->getCurrency();
                    $data['deposit_type'] = $this->m_deposit_type->getAll(1);
                    if ($this->input->post('user')) {
                        $arr = $this->input->post();
//                                        print_r($arr); die();
                        $arr['det_id'] = 4;
                        unset($arr['deposit']);
                        $amount = $arr['amount'];
                        if (!isset($amount) || $amount == "" || $amount == null || $amount <= 0 || empty($amount) || !is_numeric($amount)) {
                            $this->session->set_flashdata('error', 'Opss! Invalid amount!!');
                            redirect(site_url('staff/senddeposit/edinaredirham1/0371'));
                        }
                        $data['fee'] = $this->m_fee_type->get(6);
                        $data['det'] = $this->m_deposit_type->get($arr['det_id']);
                        $data['arr'] = $arr;
//                                        print_r($data); die();
                        $me_username = $this->my_func->dinarpal_decrypt($this->input->post('user'));
//                                        print_r($me_username); die();
                        $data['me'] = $this->m_members->getByName($me_username, 3, 'NU');
//                                        print_r($data['me']); die();
                        if (!isset($data['me']) || empty($data['me'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/senddeposit/edinaredirham/037'));
                        } else {
                            $data['me_id'] = $data['me'][0]->me_id;
                            $data['me_type'] = $data['me'][0]->me_type;
                            $data['me_username'] = $me_username;
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/senddeposit/edinaredirham/037'));
                    }
                    break;
                case '0373':
                    if ($this->input->post('deposit') == 2) {
                        $arr = $this->input->post();

//                                        print_r($arr); die();

                        unset($arr['deposit']);
                        unset($arr['tr_amount1']);
                        $arr['ts_id'] = 1;
                        $arr['tt_id'] = 3;
                        $arr['tr_deposit_code'] = $this->my_func->getRandomVal();
                        $at_id = $arr['at_id'];
                        $at = $this->m_account_type->get($at_id);
                        $at_desc = "-";
                        if (isset($at) && !empty($at)) {
                            $at_desc = $at[0]->at_desc;
                        }

                        $ft_id_deposit = 6;
                        $ft_deposit = $this->m_fee_type->get($ft_id_deposit);
                        $tr_amount = $arr['tr_amount'];

                        $amount = $tr_amount;
                        if (!isset($amount) || $amount == "" || $amount == null || $amount <= 0 || empty($amount) || !is_numeric($amount)) {
                            $this->session->set_flashdata('error', 'Opss! Invalid amount!!');
                            redirect(site_url('staff/senddeposit/edinaredirham1/0371'));
                        }

                        $ft_price = 0.00;

                        $me_id_from = $arr['me_id_from'];
                        $me_from = $this->m_members->get($me_id_from);
                        $me_type = (isset($me_from) && !empty($me_from)) ? ($me_from[0]->me_type) : ("-");

                        if ($me_type != 'DP') {
                            if (isset($ft_deposit) && !empty($ft_deposit)) {
                                $ft_type = $ft_deposit[0]->ft_type;
                                if ($ft_type == 'STATIC') {
                                    $ft_price = $ft_deposit[0]->ft_price;
                                } else if ($ft_type == 'DYNAMIC') {
                                    $ft_price = $ft_deposit[0]->ft_price * $tr_amount;
                                }
                            }
                        }

                        $gst_rate = $this->my_func->getGST();
                        $gst_tax = $gst_rate * $ft_price;

                        $tr_datetime = $arr['tr_datetime'];
                        $me_id_admin = $this->my_func->getMeAdminHQ();

                        $tr_amount_full = $tr_amount - $gst_tax - $ft_price;

//                                        print_r("$tr_amount_full = $tr_amount - $gst_tax - $ft_price;"); die();
//                                        print_r($arr); die();

                        $me_id_hq = $this->my_func->getMeAdminHQ();

                        $me_id_staff = $sess['me_id'];

                        $bol_admin1 = $this->debit_kredit_fund($me_id_hq, $ft_price, 'FEES', 1);
                        $bol_admin2 = $this->debit_kredit_fund($me_id_hq, $gst_tax, 'GST', 1);
                        $bol_pay_admin = ($bol_admin1 && $bol_admin2);
                        if ($bol_pay_admin) {

                            $this->payGeneology($me_id_from, $at_id, $ft_price, $tr_datetime);

                            $bol_receive_user = $this->debit_kredit($me_id_from, $tr_amount_full, $at_id, 1);
                            if ($bol_receive_user) {

                                // trans deposit
                                $data_trans1 = array(
                                    'me_id_from' => 0,
                                    'me_id_to' => $me_id_from,
                                    'tr_amount' => $tr_amount,
                                    'at_id' => $at_id,
                                    'ft_id' => $ft_id_deposit,
                                    'tr_notes' => $arr['tr_notes'],
                                    'tr_datetime' => $tr_datetime,
                                    'tt_id' => 3,
                                    'ts_id' => $arr['ts_id'],
                                    'det_id' => $arr['det_id'],
                                    'tr_deposit_code' => $arr['tr_deposit_code'],
                                    'me_id_staff' => $me_id_staff
                                );
                                $bol_depo = $this->m_transaction->add($data_trans1);

                                if ($ft_price > 0) {

                                    // pay fee
                                    $data_fee = array(
                                        'me_id_from' => $me_id_from,
                                        'me_id_to' => $me_id_hq,
                                        'tr_amount' => $ft_price,
                                        'at_id' => 6,
                                        'ft_id' => $ft_id_deposit,
                                        'tr_notes' => $arr['tr_notes'],
                                        'tr_datetime' => $tr_datetime,
                                        'tt_id' => 26,
                                        'ts_id' => $arr['ts_id'],
                                        'me_id_staff' => $me_id_staff
                                    );
                                    $tr_id_fee = $this->m_transaction->add($data_fee);

                                    // pay gst
                                    $data_gst = array(
                                        'me_id_from' => $me_id_from,
                                        'me_id_to' => $me_id_hq,
                                        'tr_amount' => $gst_tax,
                                        'at_id' => 7,
                                        'ft_id' => $ft_id_deposit,
                                        'tr_notes' => $arr['tr_notes'],
                                        'tr_datetime' => $tr_datetime,
                                        'tt_id' => 25,
                                        'ts_id' => $arr['ts_id'],
                                        'me_id_staff' => $me_id_staff
                                    );
                                    $tr_id_gst = $this->m_transaction->add($data_gst);
                                }

                                $dc = $this->m_dinarpal_config->getAll();
                                $admin_account_no = (isset($dc) && !empty($dc)) ? ($dc[0]->dc_admin_bank_account) : ("-");
                                $admin_account_name = (isset($dc) && !empty($dc)) ? ($dc[0]->dc_admin_bank_name) : ("-");
                                if ($bol_depo) {
                                    $this->session->set_userdata('de_code', $arr['tr_deposit_code']);
                                    $this->session->set_userdata('admin_account_no', $admin_account_no);
                                    $this->session->set_userdata('admin_account_name', $admin_account_name);
                                    $this->session->set_userdata('deposit_amount', $tr_amount);
                                    $this->session->set_userdata('de_amount', $tr_amount_full);
                                    $this->session->set_userdata('tr_datetime', $tr_datetime);
                                    $this->session->set_userdata('deposit_fee', $ft_price);
                                    $this->session->set_userdata('gst_tax', $gst_tax);
                                    $this->session->set_userdata('tr_notes', $arr['tr_notes']);
                                    $this->session->set_userdata('at_desc', $at_desc);
                                    //$this->session->set_flashdata('sucess', 'Alhamdulillah, your transaction is successful.');
                                    redirect(site_url('staff/senddeposit/edinaredirham3/0373'));
                                } else {
                                    $this->session->set_flashdata('error', 'Opps! Your transaction is failed!!');
                                    redirect(site_url('staff/senddeposit/edinaredirham1/0371'));
                                }
                            }
                        }
                    }
                    break;
                case '038':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Walk-In Deposit Gram';
                    break;
                case '039':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Deposit Summary';
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    function deleteCartKeep($stat = 1) {

        $url_goto1 = '';
        if ($stat == 1) {
            $url_goto1 = 'staff/keep/walkinbringkeep1/025x2#anchor1';
        } else if ($stat == 2) {
            $url_goto1 = 'staff/keep/walkinexchange1/033x2#anchor1';
        } else if ($stat == 3) {
            $url_goto1 = 'staff/rahnuOperation/walkBringPawn1/x621#anchor1';
        }

        $rowx_enc = $this->input->get('rowx');
        $rowid = $this->my_func->dinarpal_decrypt($rowx_enc);

        $data_cart = array(
            'rowid' => $rowid,
            'qty' => 0
        );
        $this->cart->update($data_cart);

        redirect(site_url($url_goto1));
    }

    function confirmCartKeep() {
        $arr1 = $this->input->post();
        $arr2 = $this->cart->contents();
//            print_r($arr1); die();
        $sl_id = $arr1['sl_id'];
        $tr_amount = $arr1['tr_amount'];
        $me_id_admin = $this->my_func->getMeAdmin($sl_id);
        $me_id = 0;
        $v_ids = array();
        $startdatetime = date('Y-m-d H:i:s');
        $enddatetime = date('Y-m-d H:i:s', strtotime('+1 year'));
        $k_id = 0;
        $tr_id = 0;

        $sess = $this->session->all_userdata();
        $me_id_staff = $sess['me_id'];
//            print_r($me_id_admin); die();
        $amil = $sess['me_firstname'] . " " . $sess['me_lastname'];

//            print_r($arr2); die();

        $cart = $arr2;
        $total_weight = 0.00;
        $total_price_rate_gram = 0.00;
        $total_price = 0.00;
        $total_fee = 0.00;
        if (isset($cart) && !empty($cart)) {
            foreach ($cart as $caitem => $caval) {

                $me_id = $caval['options']['me_id'];

                $v_weight = ($caval['options']['v_weight'] != "") ? ($caval['options']['v_weight']) : (0);
                $total_weight += $v_weight;

                $itc_id = $caval['options']['itc_id'];
                $itc = $this->m_item_type_child->get($itc_id);
                $itp_price = (isset($itc) && !empty($itc)) ? ($itc[0]->itp_price) : (0);
                $total_price_rate_gram += $itp_price;

                $price = $itp_price * $v_weight;
                $total_price += $price;

                $ft = $this->m_fee_type->get(7);
//                    $ft_rate_month = (isset($ft) && !empty($ft)) ? ($ft[0]->ft_price) : (0.00);
//                    $ft_price = $ft_rate_month * 12 * $price; // 12 - 12 month per year

                $ft_price = 0.00;
                if (isset($ft) && !empty($ft)) {
                    $ft_type = $ft[0]->ft_type;
                    $ft_rate = $ft[0]->ft_price;
                    if ($ft_type == 'STATIC') {
                        $ft_price = $ft_rate;
                    } else if ($ft_type == 'DYNAMIC') {
                        $ft_price = $ft_rate * $price;
                    }
                }

                $total_fee += $ft_price;
            }
        }
        $gst_rate = $this->my_func->getGST();
        $gst_tax = $gst_rate * $total_fee;
        $tr_amount = $total_fee + $gst_tax;

        $at_id = 1;

        // deduct from user's account
        $bol_pay = $this->debit_kredit($me_id, $tr_amount, $at_id, 2);

        if ($bol_pay) {

            // add into admin's account
//                $bol_payment = $this->debit_kredit($me_id_admin, $tr_amount, $at_id, 1);
            $this->debit_kredit_fund($me_id_admin, $total_fee, 'FEES', 1);
            $this->debit_kredit_fund($me_id_admin, $gst_tax, 'GST', 1);

            $this->payGeneology($me_id, $at_id, $total_fee, $startdatetime);

            if (isset($arr2) && !empty($arr2) && sizeof($arr2) > 0) {
                foreach ($arr2 as $caitem => $caval) {

                    $itc = $this->m_item_type_child->get($caval['options']['itc_id']);
                    $itp_price = (isset($itc) && !empty($itc)) ? ($itc[0]->itp_price) : (0.00);
                    $v_weight = $caval['options']['v_weight'];
                    $v_price_rate = $v_weight * $itp_price;
                    $caval['options']['v_price_rate'] = $v_price_rate;
                    $data_vault = $caval['options'];
                    $it_id = $data_vault['it_id'];
                    unset($data_vault['it_id']);
                    unset($data_vault['pu_id']);
                    $data_vault['v_price_rate'] = $v_price_rate;
                    
                    $at_id_gram = ($it_id == 1) ? (2) : (($it_id == 2) ? (4) : (0));

                    //                    print_r($caval); die();
                    // insert table vault
                    $v_id = $this->m_vault->add($data_vault);
                    
                    $data_tr = array(
                        'me_id_from' => 0,
                        'me_id_to' => $me_id,
                        'tr_amount' => $v_weight,
                        'at_id' => $at_id_gram,
                        'ft_id' => 7,
                        'tr_notes' => 'Walk-in and Keep',
                        'tr_datetime' => $startdatetime,
                        'tt_id' => 15,
                        'ts_id' => 1,
                        'me_id_staff' => $me_id_staff
                    );
                    $this->m_transaction->add($data_tr);

                    $v_ids[] = $v_id;
                    $me_id = $caval['options']['me_id'];
                }

                if (isset($v_ids) && !empty($v_ids) && sizeof($v_ids) > 0) {
                    $data_keep = array(
                        'k_startdate' => $startdatetime,
                        'k_enddate' => $enddatetime,
                        'sl_id' => $sl_id,
                        'me_id' => $me_id,
                        'k_status' => 1
                    );
                    // insert table keep
                    $k_id = $this->m_keep->add($data_keep);
                    if ($k_id) {
                        foreach ($v_ids as $v_id) {
                            $data_keep_child = array(
                                'k_id' => $k_id,
                                'v_id' => $v_id,
                                'kc_status' => 1
                            );
                            // insert table keep_child
                            $kc_id = $this->m_keep_child->add($data_keep_child);
                        }
                    }

                    // keep fee
                    $data_trans1 = array(
                        'me_id_from' => $me_id,
                        'me_id_to' => $me_id_admin,
                        'tr_amount' => $total_fee,
                        'at_id' => 6,
                        'ft_id' => 7,
                        'tr_notes' => 'Walk-in Bring & Keep (Keep Fee)',
                        'tr_datetime' => $startdatetime,
                        'tt_id' => 24, // keep fee
                        'ts_id' => 1,
                        'me_id_staff' => $me_id_staff
                    );
                    $tr_id1 = $this->m_transaction->add($data_trans1);

                    // gst fee
                    $data_trans2 = array(
                        'me_id_from' => $me_id,
                        'me_id_to' => $me_id_admin,
                        'tr_amount' => $gst_tax,
                        'at_id' => 7,
                        'ft_id' => 13,
                        'tr_notes' => 'GST Tax Fee',
                        'tr_datetime' => $startdatetime,
                        'tt_id' => 25,
                        'ts_id' => 1,
                        'me_id_staff' => $me_id_staff
                    );
                    $tr_id2 = $this->m_transaction->add($data_trans2);
                }
            }

            $this->session->set_userdata('k_id', $k_id);
            $this->session->set_userdata('tr_id', $tr_id);
            $total_weight = (isset($total_weight) && !empty($total_weight) && is_numeric($total_weight)) ? (number_format($total_weight, 4)) : ("0.0000");
            $total_price = (isset($total_price) && !empty($total_price) && is_numeric($total_price)) ? (number_format($total_price, 4)) : ("0.0000");
            $total_fee = (isset($total_fee) && !empty($total_fee) && is_numeric($total_fee)) ? (number_format($total_fee, 4)) : ("0.0000");
            $gst_tax = (isset($gst_tax) && !empty($gst_tax) && is_numeric($gst_tax)) ? (number_format($gst_tax, 4)) : ("0.0000");
            $tr_amount = (isset($tr_amount) && !empty($tr_amount) && is_numeric($tr_amount)) ? (number_format($tr_amount, 4)) : ("0.0000");
            $this->session->set_userdata('total_weight', $total_weight);
            $this->session->set_userdata('total_price', $total_price);
            $this->session->set_userdata('total_fee', $total_fee);
            $this->session->set_userdata('gst_tax', $gst_tax);
            $this->session->set_userdata('tr_amount', $tr_amount);
            $this->session->set_userdata('startdatetime', $startdatetime);
            $this->session->set_userdata('enddatetime', $enddatetime);
            $this->session->set_userdata('amil', $amil);
            redirect(site_url('staff/keep/walkinbringkeep3/0252'));
        } else {
            redirect(site_url('staff/keep/walkinbringkeep2/0251'));
        }
    }

    function confirmCartExchange() {
        $arr1 = $this->input->post();
        $arr2 = $this->cart->contents();
//            print_r($arr1); die();
        $sl_id = $arr1['sl_id'];

        $tr_amount = 0.00;
        $me_id_admin = $this->my_func->getMeAdmin($sl_id);
        $me_id = 0;
        $v_ids = array();
        $v_ids2 = array();
        $startdatetime = date('Y-m-d H:i:s');
        $enddatetime = date('Y-m-d H:i:s', strtotime('+1 year'));
        $k_id = 0;
        $tr_id = 0;

        $sess = $this->session->all_userdata();
        $me_id_staff = $sess['me_id'];
//            print_r($sess); die();
        $amil = $sess['me_firstname'] . " " . $sess['me_lastname'];

        $sl = $this->m_storage_location->get($sl_id);
        $sl_name = (isset($sl) && !empty($sl)) ? ($sl[0]->sl_name . " (" . $sl[0]->sl_code . ")<br />" . $sl[0]->sl_address) : ("-");

//            print_r($arr2); die();

        $cart = $arr2;
        $total_weight = 0.00;
        $total_price_rate_gram = 0.00;
        $total_price = 0.00;
        $total_fee = 0.00;
        if (isset($cart) && !empty($cart)) {
            foreach ($cart as $caitem => $caval) {
                $me_id = $caval['options']['me_id'];
                $v_weight = ($caval['options']['v_weight'] != "") ? ($caval['options']['v_weight']) : (0);
                $total_weight += $v_weight;
            }
        }

//            print_r($total_weight); die();

        $gram_per_pieces = 1.0;
        $fte_id = 18;
        $fte = $this->m_fee_type->get($fte_id);
        $fte_price = (isset($fte) && !empty($fte)) ? ($fte[0]->ft_price) : (0);
        $total_fee += $fte_price;

        $gram1g = floor($total_weight / $gram_per_pieces);

        $gram_balance = $total_weight - ($gram1g * $gram_per_pieces);

        $it_id = 1; // 1 = gold
        $pu_id = 1; // 1 = 999
        $itp_price = $this->m_item_type_purity->getRate($it_id, $pu_id);
        $myr_balance = $itp_price * $gram_balance;

        $myr_balance_rounded = $this->my_func->getRounded($myr_balance);

        $fees = $gram1g * $fte_price;

        $gst_rate = $this->my_func->getGST();
        $gst_tax = $gst_rate * $fees;

        $total_paid = $gst_tax + $fees;
        $tr_amount = $total_paid;

        $at_id = 1;
        $at_id_gram = 2;
        $tr_datetime = $startdatetime;

        $cust_username = $this->session->userdata('customer_username');
        $customer = $this->m_members->getByName($cust_username, 3, 'NU');
        $me_id_customer = $customer[0]->me_id;

        $arr_v_id = array();
        $vault_admin = $this->m_vault->getAll_personal(3, $me_id_admin, 1);
        $qty = $gram1g;
        for ($i = 0; $i < $qty; $i++) {
            if ($vault_admin[$i]->v_weight == $gram_per_pieces) {
                $v_ids2[] = $vault_admin[$i]->v_id;
                $arr_v_id[$i]['v_id'] = $vault_admin[$i]->v_id;
                $arr_v_id[$i]['v_price_rate'] = $vault_admin[$i]->itp_price;
                $arr_v_id[$i]['v_weight'] = $vault_admin[$i]->v_weight;
                $arr_v_id[$i]['it_id'] = $vault_admin[$i]->it_id;
            }
        }

//            print_r($v_ids2); die();
        // deduct from user's account of fees
        $bol_pay = $this->debit_kredit($me_id_customer, $tr_amount, $at_id, 2);
        if ($bol_pay) {

            // add into admin's account of fees
//                $bol_receive = $this->debit_kredit($me_id_admin, $tr_amount, $at_id, 1);
            $bol_receive = $this->debit_kredit_fund($me_id_admin, $fees, 'FEES', 1);
            $bol_receive = $this->debit_kredit_fund($me_id_admin, $gst_tax, 'GST', 1);
            if ($bol_receive) {

                // deduct from admin's account for balance money of gram
//                    $bol_give_balance = $this->debit_kredit($me_id_admin, $myr_balance_rounded, $at_id, 2);
                $bol_give_balance = $this->debit_kredit_fund($me_id_admin, $myr_balance_rounded, 'BUYBACK', 2);
                if ($bol_give_balance) {

                    $this->payGeneology($me_id_customer, $at_id, $fees, $startdatetime);

                    if (isset($arr2) && !empty($arr2) && sizeof($arr2) > 0) {
                        foreach ($arr2 as $caitem => $caval) {

                            $itc = $this->m_item_type_child->get($caval['options']['itc_id']);
                            $itp_price = (isset($itc) && !empty($itc)) ? ($itc[0]->itp_price) : (0.00);
                            $v_weight = $caval['options']['v_weight'];
                            $v_price_rate = $v_weight * $itp_price;
                            $caval['options']['v_price_rate'] = $v_price_rate;
                            $data_vault = $caval['options'];
                            unset($data_vault['it_id']);
                            unset($data_vault['pu_id']);
                            $data_vault['v_price_rate'] = $v_price_rate;

                            //                    print_r($caval); die();
                            // insert table vault
                            $v_id = $this->m_vault->add($data_vault);

                            $v_ids[] = $v_id;
                        }

                        if (isset($v_ids) && !empty($v_ids) && sizeof($v_ids) > 0) {

                            // 1.1. transaction in gram
                            $data_trans11 = array(
                                'me_id_from' => 0,
                                'me_id_to' => $me_id_admin,
                                'tr_amount' => $total_weight,
                                'at_id' => $at_id_gram,
                                'ft_id' => 18,
                                'tr_notes' => 'Withdrawal and Exchange Gram In',
                                'tr_datetime' => $tr_datetime,
                                'tt_id' => 43,
                                'ts_id' => 1,
                                'me_id_staff' => $me_id_staff
                            );
                            $tr_id11 = $this->m_transaction->add($data_trans11);

                            // 1.2. transaction in money fee
                            $data_trans12 = array(
                                'me_id_from' => $me_id_customer,
                                'me_id_to' => $me_id_admin,
                                'tr_amount' => $fees,
                                'at_id' => 6,
                                'ft_id' => 18,
                                'tr_notes' => 'Withdrawal and Exchange Gram In Fee',
                                'tr_datetime' => $tr_datetime,
                                'tt_id' => 44,
                                'ts_id' => 1,
                                'me_id_staff' => $me_id_staff
                            );
                            $tr_id12 = $this->m_transaction->add($data_trans12);

                            // 1.3. transaction in money gst
                            $data_trans13 = array(
                                'me_id_from' => $me_id_customer,
                                'me_id_to' => $me_id_admin,
                                'tr_amount' => $gst_tax,
                                'at_id' => 7,
                                'ft_id' => 13,
                                'tr_notes' => 'GST Tax Fee',
                                'tr_datetime' => $tr_datetime,
                                'tt_id' => 25,
                                'ts_id' => 1,
                                'me_id_staff' => $me_id_staff
                            );
                            $tr_id13 = $this->m_transaction->add($data_trans13);

                            // 2.1. transaction out gram
                            $data_trans21 = array(
                                'me_id_from' => $me_id_admin,
                                'me_id_to' => 0,
                                'tr_amount' => $gram1g,
                                'at_id' => $at_id_gram,
                                'ft_id' => 18,
                                'tr_notes' => 'Withdrawal and Exchange Gram Out',
                                'tr_datetime' => $tr_datetime,
                                'tt_id' => 43,
                                'ts_id' => 1,
                                'me_id_staff' => $me_id_staff
                            );
                            $tr_id21 = $this->m_transaction->add($data_trans21);

                            // 2.2. transaction out money pay
                            $data_trans22 = array(
                                'me_id_from' => $me_id_admin,
                                'me_id_to' => 0,
                                'tr_amount' => $myr_balance_rounded,
                                'at_id' => 12,
                                'ft_id' => 18,
                                'tr_notes' => 'Withdrawal and Exchange Gram Out Balance Money',
                                'tr_datetime' => $tr_datetime,
                                'tt_id' => 45,
                                'ts_id' => 1,
                                'me_id_staff' => $me_id_staff
                            );
                            $tr_id22 = $this->m_transaction->add($data_trans22);

                            // 3.1. withdrawal gram
                            $data_wg = array(
                                'tr_id' => $tr_id21,
                                'me_id' => $me_id_admin,
                                'wg_code' => $this->my_func->getRandomVal('numeric'),
                                'wg_datetime' => $tr_datetime,
                                'wg_type' => 'outlet_exchange',
                                'wg_address' => '',
                                'wgs_id' => 2
                            );
                            $wg_id = $this->m_withdrawal_gram->add($data_wg);

                            // 3.2. withdrawal gram child
                            if ($wg_id) {
                                foreach ($v_ids2 as $v_id2) {

                                    $data_wgc = array(
                                        'wg_id' => $wg_id,
                                        'v_id' => $v_id2,
                                        'wgc_collectdatetime' => $tr_datetime,
                                        'wgcs_id' => 2 // 2 = collected
                                    );
                                    $wgc_id = $this->m_withdrawal_gram_child->add($data_wgc);

                                    $data_v2 = array(
                                        'vt_id' => 6 // go to vault ghost
                                    );
                                    $this->m_vault->edit($v_id2, $data_v2);
                                }

                                // 3.2.1. exchange gram
                                $data_eg = array(
                                    'me_id' => $me_id_customer,
                                    'sl_id' => $sl_id,
                                    'wg_id' => $wg_id,
                                    'eg_datetime' => $tr_datetime,
                                    'eg_status' => 1
                                );
                                $eg_id = $this->m_exchange_gram->add($data_eg);

                                // 3.2.2. exchange gram child
                                if ($eg_id) {

                                    foreach ($v_ids as $v_id) {

                                        $data_egc = array(
                                            'eg_id' => $eg_id,
                                            'v_id' => $v_id,
                                            'egc_status' => 1
                                        );
                                        $egc_id = $this->m_exchange_gram_child->add($data_egc);

                                        $data_v = array(
                                            'vt_id' => 3 // go to vault keep
                                        );
                                        $this->m_vault->edit($v_id, $data_v);
                                    }
                                }
                            }
                        }
                    }

                    $this->session->set_userdata('tr_id', $tr_id11);
                    $total_weight = (isset($total_weight) && !empty($total_weight) && is_numeric($total_weight)) ? (number_format($total_weight, 4)) : ("0.0000");
                    $gram1g = (isset($gram1g) && !empty($gram1g) && is_numeric($gram1g)) ? (number_format($gram1g, 4)) : ("0.0000");
                    $gram_balance = (isset($gram_balance) && !empty($gram_balance) && is_numeric($gram_balance)) ? (number_format($gram_balance, 4)) : ("0.0000");
                    $myr_balance_rounded = (isset($myr_balance_rounded) && !empty($myr_balance_rounded) && is_numeric($myr_balance_rounded)) ? (number_format($myr_balance_rounded, 4)) : ("0.0000");
                    $fees = (isset($fees) && !empty($fees) && is_numeric($fees)) ? (number_format($fees, 4)) : ("0.0000");
                    $gst_tax = (isset($gst_tax) && !empty($gst_tax) && is_numeric($gst_tax)) ? (number_format($gst_tax, 4)) : ("0.0000");
                    $total_paid = (isset($total_paid) && !empty($total_paid) && is_numeric($total_paid)) ? (number_format($total_paid, 4)) : ("0.0000");
                    $tr_datetime = $this->my_func->sql_time_to_datetime($tr_datetime);
                    $this->session->set_userdata('gram_in', $total_weight);
                    $this->session->set_userdata('gram_out', $gram1g);
                    $this->session->set_userdata('gram_out_balance', $gram_balance);
                    $this->session->set_userdata('money_balance', $myr_balance_rounded);
                    $this->session->set_userdata('exchange_fee', $fees);
                    $this->session->set_userdata('exchange_gst', $gst_tax);
                    $this->session->set_userdata('total_paid', $total_paid);
                    $this->session->set_userdata('storage_location', $sl_name);
                    $this->session->set_userdata('staff_incharge', $amil);
                    $this->session->set_userdata('tr_datetime', $tr_datetime);

                    redirect(site_url('staff/keep/walkinexchange3/033x4'));
                } else {
//                        $this->debit_kredit($me_id_admin, $tr_amount, $at_id, 2);
                    $this->debit_kredit_fund($me_id_admin, $fees, 'FEES', 2);
                    $this->debit_kredit_fund($me_id_admin, $gst_tax, 'GST', 2);
                    $this->debit_kredit($me_id_customer, $tr_amount, $at_id, 1);
                    $this->session->set_flashdata('error', 'Opss! Admin not have enough money to give balance!');
                    redirect(site_url('staff/keep/walkinexchange2/033x3'));
                }
            } else {
                $this->debit_kredit($me_id_customer, $tr_amount, $at_id, 1);
                $this->session->set_flashdata('error', 'Opss! Admin cannot receive that payment!');
                redirect(site_url('staff/keep/walkinexchange2/033x3'));
            }
        } else {
            redirect(site_url('staff/keep/walkinexchange2/033x3'));
        }
    }

    function addCartKeep($stat = 1) {
        $arr = $this->input->post();

        $sess = $this->session->all_userdata();
//            print_r($sess); die();
        $sl_id = $sess['sl_id'];
        $me_id_admin = $this->my_func->getMeAdmin($sl_id);

        $url_goto1 = '';
        $url_goto2 = '';
        if ($stat == 1) {
            $url_goto1 = 'staff/keep/walkinbringkeep1/025';
            $url_goto2 = 'staff/keep/walkinbringkeep1/025x2#anchor1';
        } else if ($stat == 2) {
            $url_goto1 = 'staff/keep/walkinexchange1/033x2';
            $url_goto2 = 'staff/keep/walkinexchange1/033x2';
        } else if ($stat == 3) {
            $url_goto1 = 'staff/rahnuOperation/walkBringPawn1/x621';
            $url_goto2 = 'staff/rahnuOperation/walkBringPawn1/x621';
        }

//            print_r($arr); die();
        $this->session->set_userdata('customer_username', $arr['username']);

        if (!isset($arr['v_weight']) || empty($arr['v_weight']) || $arr['v_weight'] == 0 || $arr['v_weight'] == "0" || $arr['v_weight'] == "" || !is_numeric($arr['v_weight'])) {
            $this->session->set_flashdata('error', 'Invalid weight');
            redirect(site_url($url_goto1));
        }

        $v_image_1 = $this->my_func->do_upload('v_image', './assets/uploads/items/');
        $v_image2_1 = $this->my_func->do_upload('v_image2', './assets/uploads/items/');
        $v_image3_1 = $this->my_func->do_upload('v_image3', './assets/uploads/items/');
        $v_image4_1 = $this->my_func->do_upload('v_image4', './assets/uploads/items/');
        $v_image5_1 = $this->my_func->do_upload('v_image5', './assets/uploads/items/');
        $noImage = $this->my_func->getNoImage();
        $v_image = (isset($v_image_1['upload_data']) && !empty($v_image_1['upload_data'])) ? ($v_image_1['upload_data']['file_name']) : ($noImage);
        $v_image2 = (isset($v_image2_1['upload_data']) && !empty($v_image2_1['upload_data'])) ? ($v_image2_1['upload_data']['file_name']) : ($noImage);
        $v_image3 = (isset($v_image3_1['upload_data']) && !empty($v_image3_1['upload_data'])) ? ($v_image3_1['upload_data']['file_name']) : ($noImage);
        $v_image4 = (isset($v_image4_1['upload_data']) && !empty($v_image4_1['upload_data'])) ? ($v_image4_1['upload_data']['file_name']) : ($noImage);
        $v_image5 = (isset($v_image5_1['upload_data']) && !empty($v_image5_1['upload_data'])) ? ($v_image5_1['upload_data']['file_name']) : ($noImage);

        $members = $this->m_members->getByName($arr['username'], 3, 'NU');
        $me_id_user = (isset($members) && !empty($members)) ? ($members[0]->me_id) : (0);

        $me_id_owner = 0;
        if ($stat == 1 || $stat == 3) {
            $me_id_owner = $me_id_user;
        } else if ($stat == 2) {
            $me_id_owner = $me_id_admin;
        }

        $v_weight = $arr['v_weight'];
        $v_price_rate = $this->m_item_type_purity->getRate($arr['it_id'], $arr['pu_id']);
        $v_price_rate *= $v_weight;

        $ivt_id = $arr['ivt_id'];
        $ivmt_id = $arr['ivmt_id'];

        $data_vault_temp = array(
            'v_image' => $v_image,
            'v_image2' => $v_image2,
            'v_image3' => $v_image3,
            'v_image4' => $v_image4,
            'v_image5' => $v_image5,
            'me_id' => $me_id_owner,
            'v_price_rate' => $v_price_rate,
            'vt_id' => 3,
            'v_regdate' => date('Y-m-d H:i:s'),
            'ivmt_id' => $ivmt_id,
            'ivt_id' => $ivt_id
        );

        unset($arr['username']);
        $data_vault = array_merge($arr, $data_vault_temp);
//            print_r($data_vault); die();

        $data_cart = array(
            'id' => 'emasluar_' . $this->my_func->getRandomVal(),
            'qty' => 1,
            'price' => 1.00,
            'name' => '-',
            'options' => $data_vault
        );
        $this->cart->insert($data_cart);

        redirect(site_url($url_goto2));
    }

    public function keep($output = 'dashboaxrd', $menu1 = '11') {
        $sess = $this->session->all_userdata();
//            print_r($sess); die();
        $me_id = $sess['me_id'];
//            $sl_id = $sess['sl_id'];
        $data = array();
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {

                case '025':
                    $title = 'Walk - In Bring & Keep';
                    $this->cart->destroy();
                    $this->session->unset_userdata('customer_username');
                    $this->session->unset_userdata('arr');
                    $data['item_type'] = $this->m_item_type_child->getAll();
                    $data['brands'] = $this->m_brands->getAll();
                    $data['item_status_courier'] = $this->m_item_status_courier->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    $data['storage_location'] = $this->m_storage_location->getAll();
                    break;
                case '025x1':
                    $title = 'Walk - In Bring & Keep';
                    $data['item_type'] = $this->m_item_type_child->getAll();
                    $data['brands'] = $this->m_brands->getAll();
                    $data['item_status_courier'] = $this->m_item_status_courier->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    $data['storage_location'] = $this->m_storage_location->getAll();
                    if ($this->input->post('me_username')) {
                        $arr = $this->input->post();
//                                        print_r($arr); die();
                        $me_username = $arr['me_username'];
                        $data['me'] = $this->m_members->getByName($me_username, 3, 'NU');
                        if (!isset($data['me']) || empty($data['me'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/keep/walkinbringkeep/025'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/walkinbringkeep/025'));
                    }
                    break;
                case '025x2':
                    $title = 'Walk - In Bring & Keep';
                    $data['item_type'] = $this->m_item_type_child->getAll();
                    $data['brands'] = $this->m_brands->getAll();
                    $data['item_status_courier'] = $this->m_item_status_courier->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    $data['storage_location'] = $this->m_storage_location->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    $data['item_type2'] = $this->m_item_type->getAll();
                    $data['item_vault_type'] = $this->m_item_vault_type->getAll();
                    $data['item_vault_mining_type'] = $this->m_item_vault_mining_type->getAll();
                    if ($this->input->post('user')) {
                        $arr = $this->input->post();
                        $me_username = $this->my_func->dinarpal_decrypt($arr['user']);
//                                        print_r($arr); 
//                                        print_r($me_username); 
//                                        die();
                        $data['members'] = $this->m_members->getByName($me_username, 3, 'NU');
                        if (!isset($data['members']) || empty($data['members'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/keep/walkinbringkeep/025'));
                        } else {
                            $this->session->set_userdata('customer_username', $me_username);
                        }
                    } else if ($this->session->userdata('customer_username')) {
                        $me_username = $this->session->userdata('customer_username');
                        $data['members'] = $this->m_members->getByName($me_username, 3, 'NU');
                        if (!isset($data['members']) || empty($data['members'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/keep/walkinbringkeep/025'));
                        } else {
                            $this->session->set_userdata('customer_username', $me_username);
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/walkinbringkeep/025'));
                    }

//                                    print_r($sess); die();
                    $sl_id = $sess['sl_id'];
//                                    $sl_id = 1;
                    $data['sl_id'] = $sl_id;
                    $sl = $this->m_storage_location->get($sl_id);
                    $data['storage_location'] = (isset($sl) && !empty($sl)) ? ($sl[0]->sl_name) : ("-");
                    break;
                case '0251':
                    $title = 'Walk - In Bring & Keep (Confirmation)';
                    if ($this->session->userdata('customer_username')) {
                        $me_username = $this->session->userdata('customer_username');
                        $data['me'] = $this->m_members->getByName($me_username, 3, 'NU');
                        if (!isset($data['me']) || empty($data['me'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/keep/walkinbringkeep/025'));
                        } else {
                            $this->session->set_userdata('customer_username', $me_username);
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/walkinbringkeep/025'));
                    }
                    if ($this->input->post()) {
                        $arr = $this->input->post();
//                                        print_r($arr); die();
                        $data['arr'] = $arr;
                        $this->session->set_userdata('sl_id', $arr['sl_id']);
                        $this->session->set_userdata('arr', $arr);
                        $data['sl'] = $this->m_storage_location->get($arr['sl_id']);
                    } else if ($this->session->userdata('sl_id')) {
                        $sl_id = $this->session->userdata('sl_id');
                        $data['arr'] = $this->session->userdata('arr');
                        $data['sl'] = $this->m_storage_location->get($sl_id);
                    } else {
                        $this->session->set_flashdata('error', 'Opss! Something is wrong..');
                        redirect(site_url('staff/keep/walkinbringkeep/025'));
                    }
                    break;
                case '0252':
                    $title = 'Walk - In Bring & Keep (Receipt)';
                    $data['tr_id'] = $this->session->userdata('tr_id');
                    $data['k_id'] = $this->session->userdata('k_id');
                    break;
                case '026':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Walk - In Purchase & Keep';
                    break;
                case '027':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Purchase & Keep';
                    break;
                case '028':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Courier & Keep';
                    break;
                case '029':
//                                    $data['construction_dinarpal'] = 1;
                    $title = 'Keep Vault';
                    $data['dpsystem'] = $this->m_members->getAll_DP();
                    break;
                case '030':
                    $title = 'Keep Vault Summary';
                    if ($this->input->get('m') && $this->input->get('it')) {
                        $me_idx = $this->input->get('m');
                        $it_id = $this->input->get('it');
                        $me_id = $this->my_func->dinarpal_decrypt($me_idx);
                        $vault = $this->m_vault->getAll_personal(3, $me_id, -1, $it_id);
                        $data['vault'] = $vault;
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/keepvault/029'));
                    }
                    break;
                case '031':
                    $title = 'Keep Vault Item Detail';
                    if ($this->input->get('v') && $this->input->get('br') && $this->input->get('itc') && $this->input->get('m')) {
                        $v_namex = $this->input->get('v');
                        $br_idx = $this->input->get('br');
                        $itc_idx = $this->input->get('itc');
                        $me_idx = $this->input->get('m');
                        $v_name = $this->my_func->dinarpal_decrypt($v_namex);
                        $br_id = $this->my_func->dinarpal_decrypt($br_idx);
                        $itc_id = $this->my_func->dinarpal_decrypt($itc_idx);
                        $me_id = $this->my_func->dinarpal_decrypt($me_idx);
                        $vault = $this->m_vault->getAll_personalDetail(3, $me_id, $v_name, $br_id, $itc_id);
                        $data['vault'] = $vault;
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/keepvault/029'));
                    }
                    break;
                case '034':
//                                    $data['construction_dinarpal'] = 1;
                    $title = 'Manage Member\'s Vault';
                    $data['members'] = $this->m_members->getAll_DP('NU');
                    break;
                case '0341':
                    $title = 'Manage Member\'s Vault Detail';
                    if ($this->input->get('u')) {
                        $me_idx = $this->input->get('u');
                        $me_id_u = $this->my_func->dinarpal_decrypt($me_idx);
                        $vault = $this->m_vault->getVaultKeepAll($me_id_u);
                        if (!isset($vault) || empty($vault)) {
                            $this->session->set_flashdata('error', 'Access Denied!');
                            redirect(site_url('staff/keep/managemembervault/034'));
                        }
                        $data['vault'] = $vault;
//                                        echo "<pre>"; print_r($vault); echo "</pre>"; die();
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/managemembervault/034'));
                    }
                    break;
                case '033':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Walk-In Gold/Silver Exchange';
                    $this->cart->destroy();
                    $this->session->unset_userdata('customer_username');
                    $this->session->unset_userdata('arr');
                    $this->session->unset_userdata('customer_sl_id');
                    break;
                case '033x1':
                    $title = 'Walk-In Gold/Silver Exchange';
                    if ($this->input->post('me_username')) {
                        $arr = $this->input->post();
//                                        print_r($arr); die();
                        $me_username = $arr['me_username'];
                        $data['me'] = $this->m_members->getByName($me_username, 3, 'NU');
                        if (!isset($data['me']) || empty($data['me'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/keep/walkinexchange/033'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/walkinexchange/033'));
                    }
                    break;
                case '033x2':
                    $title = 'Walk-In Gold/Silver Exchange';
                    $data['item_type'] = $this->m_item_type_child->getAll();
                    $data['brands'] = $this->m_brands->getAll();
                    $data['item_status_courier'] = $this->m_item_status_courier->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    $data['storage_location'] = $this->m_storage_location->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    $data['item_type2'] = $this->m_item_type->getAll();

                    $sl_id = $sess['sl_id'];
//                                    $sl_id = 1;
                    $data['sl_id'] = $sl_id;

                    if ($this->input->post('user')) {
                        $arr = $this->input->post();
                        $me_username = $this->my_func->dinarpal_decrypt($arr['user']);
//                                        print_r($arr); 
//                                        print_r($me_username); 
//                                        die();
                        $data['members'] = $this->m_members->getByName($me_username, 3, 'NU');
                        if (!isset($data['members']) || empty($data['members'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/keep/walkinbringkeep/025'));
                        } else {
                            $this->session->set_userdata('customer_username', $me_username);
                        }
                    } else if ($this->session->userdata('customer_username')) {
                        $me_username = $this->session->userdata('customer_username');
                        $data['members'] = $this->m_members->getByName($me_username, 3, 'NU');
                        if (!isset($data['members']) || empty($data['members'])) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            redirect(site_url('staff/keep/walkinbringkeep/025'));
                        } else {
                            $this->session->set_userdata('customer_username', $me_username);
                            $this->session->set_userdata('customer_sl_id', $sl_id);
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/walkinbringkeep/025'));
                    }

//                                    print_r($sess); die();

                    $sl = $this->m_storage_location->get($sl_id);
                    $data['storage_location'] = (isset($sl) && !empty($sl)) ? ($sl[0]->sl_name) : ("-");
                    break;
                case '033x3':
                    $title = 'Walk-In Gold/Silver Exchange';
                    if ($this->input->post('sl_id') || $this->session->userdata('customer_sl_id')) {
                        $arr = $this->input->post();
                        $sl_id = (isset($arr['sl_id']) && !empty($arr['sl_id'])) ? ($arr['sl_id']) : (($this->session->userdata('customer_sl_id')) ? ($this->session->userdata('customer_sl_id')) : (1));
                        $sl = $this->m_storage_location->get($sl_id);
                        $data['sl_id'] = $sl_id;
                        $data['storage_location'] = (isset($sl) && !empty($sl)) ? ($sl[0]->sl_name) : ("-");
                        if ($this->session->userdata('customer_username')) {
                            $me_username = $this->session->userdata('customer_username');
                            $data['me'] = $this->m_members->getByName($me_username, 3, 'NU');
                            if (!isset($data['me']) || empty($data['me'])) {
                                $this->session->set_flashdata('error', 'Invalid User!');
                                redirect(site_url('staff/keep/walkinexchange/033'));
                            } else {
                                $this->session->set_userdata('customer_username', $me_username);
                            }
                        } else {
                            $this->session->set_flashdata('error', 'Access Denied!');
                            redirect(site_url('staff/keep/walkinexchange/033'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/walkinexchange/033'));
                    }
                    break;
                case '032view':
                    $v_idx = $this->input->get('v');
                    $v_namex = $this->input->get('name');
                    $br_idx = $this->input->get('br');
                    $itc_idx = $this->input->get('itc');
                    $sl_idx = $this->input->get('sl');

                    $v_id = $this->my_func->dinarpal_decrypt($v_idx);
                    $v_name = $this->my_func->dinarpal_decrypt($v_namex);
                    $br_id = $this->my_func->dinarpal_decrypt($br_idx);
                    $itc_id = $this->my_func->dinarpal_decrypt($itc_idx);
                    $sl_id = $this->my_func->dinarpal_decrypt($sl_idx);

                    $data['v_id'] = $v_idx;
                    $data['v_name'] = $v_name;
                    $data['br_id'] = $br_id;
                    $data['itc_id'] = $itc_id;
                    $data['sl_id'] = $sl_id;
                    $me_id_admin = $this->my_func->getMeAdmin($sl_id);
//                                    $data['vault'] = $this->m_vault->getAll_personalDetail(3, $me_id_admin, $v_name, $br_id, $itc_id);
                    $data['vault'] = $this->m_vault->get($v_id);

//                                    print_r($data); die();

                    if (isset($data['vault']) && !empty($data['vault'])) {
                        $data['items'] = $data['vault'][0];
                    } else {
                        $this->session->set_flashdata('error', 'Opss! Unknown product.');
                        redirect(site_url('member/muamalat/purchase2/34'));
                    }
                    break;
                case '032':
                    $title = 'Purchase and Pick-Up';
//                                    print_r($sess); die();
                    $sl_id = $sess['sl_id'];
                    $data['sl_id'] = $sl_id;
                    $me_admin = $this->m_members->getSL($sl_id);
                    $me_id_admin = (isset($me_admin) && !empty($me_admin)) ? ($me_admin[0]->me_id) : (0);
                    $data['vault'] = $this->m_vault->getAll_personal(3, $me_id_admin);
                    break;
                case '0321':
                    if ($this->input->get('keytwo')) {
                        $keyx = $this->input->get('keytwo');
                        $key = $this->my_func->dinarpal_decrypt($keyx);
                        if ($key == $this->config->item('system_name')) {
                            $title = 'Purchase and Pick-Up Confirmation';
                            $cart = $this->cart->contents();
                            if (sizeof($cart) > 0) {
                                $data['cart'] = $this->cart->contents();
                                $data['stat'] = 2; // not 1
                            } else {
                                $this->session->set_flashdata('error', 'Opss! Cart is empty!');
                                redirect(site_url('staff/keep/purchasepickup/032'));
                            }
                        } else {
                            $this->session->set_flashdata('error', 'Access Denied!');
                            redirect(site_url('staff/keep/purchasepickup/032'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/purchasepickup/032'));
                    }
                    break;
                case '0322':
                    $title = 'Purchase and Pick-Up - Member Verification';
                    if ($this->input->get('keythree')) {
                        $keyx = $this->input->get('keythree');
                        $key = $this->my_func->dinarpal_decrypt($keyx);
                        if ($key == $this->config->item('system_name')) {
                            
                        } else {
                            $this->session->set_flashdata('error', 'Access Denied!');
                            redirect(site_url('staff/keep/purchasepickup/032'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/purchasepickup/032'));
                    }
                    break;
                case '0323':
                    $title = 'Purchase and Pick-Up - Member Verification';
                    if ($this->input->get('keyfour')) {
                        $keyx = $this->input->get('keyfour');
                        $key = $this->my_func->dinarpal_decrypt($keyx);
                        if ($key == $this->config->item('system_name')) {
                            if ($this->input->post('me_username')) {

                                $me_username = $this->input->post('me_username');
                                $data['me'] = $this->m_members->getByName($me_username, 3, 'NU');
                                if (!isset($data['me']) || empty($data['me'])) {
                                    $this->session->set_flashdata('error', 'Invalid User!');
                                    $keyx1 = $this->my_func->dinarpal_encrypt($this->config->item('system_name'));
                                    redirect(site_url('staff/keep/purchasepickup3/0322?keythree=' . $keyx1));
                                } else {
                                    $this->session->set_userdata('customer_username', $me_username);
                                    $data['cart'] = $this->cart->contents();
                                    $data['stat'] = 2;
                                }
                            } else {
                                $this->session->set_flashdata('error', 'Access Denied!');
                                redirect(site_url('staff/keep/purchasepickup/032'));
                            }
                        } else {
                            $this->session->set_flashdata('error', 'Access Denied!');
                            redirect(site_url('staff/keep/purchasepickup/032'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/keep/purchasepickup/032'));
                    }
                    break;
                case '0324':
                    $title = 'Purchase and Pick-Up - Receipt';
                    if ($this->session->userdata('customer_username')) {
                        $customer_username = $this->session->userdata('customer_username');
                        $cart = $this->cart->contents();
                        $v_ids = array();
                        $price = 0.00;
                        $weight = 0.00;
                        $at_id_gram = 2;
                        foreach ($cart as $ca) {
//                                            print_r($ca); die();

                            $v_id = $ca['options']['v']->v_id;

                            $at_id_gram = ($ca['options']['v']->it_id == 1) ? (2) : (4);
                            $itp_price = $ca['options']['v']->itp_price;
                            $v_weight = $ca['options']['v']->v_weight;
                            $v_price_rate = $ca['options']['v']->v_price_rate;
//                            $price_rate = $itp_price * $v_weight;
                            $price_rate = $v_price_rate;

                            $v1 = $this->m_vault->get($v_id);

                            $v_error = false;
                            if (isset($v1) && !empty($v1)) {
                                if (isset($v1[0]->me_type) && !empty($v1[0]->me_type)) {
                                    $v_me_type = $v1[0]->me_type;
                                    if ($v_me_type != 'DP') {
                                        $v_error = true;
                                    }
                                } else {
                                    $v_error = true;
                                }
                            } else {
                                $v_error = true;
                            }

                            if ($v_error == true) {
                                $this->session->set_flashdata('error', 'Item ID V' . $v_id . ' is not available!');
                                redirect(site_url('member/muamalat/purchase2/34'));
                            }

                            $v_ids[] = array(
                                'v_id' => $v_id,
                                'itp_price' => $itp_price,
                                'v_weight' => $v_weight,
                                'price_rate' => $price_rate
                            );

                            $price += $price_rate;
                            $weight += $v_weight;
                        }

                        $gst_rate = $this->my_func->getGST();
                        $gst_tax = $gst_rate * $price;

                        $total_price = $gst_tax + $price;

                        $me = $this->m_members->getByName($customer_username, 3, 'NU');
                        if (!isset($me) || empty($me)) {
                            $this->session->set_flashdata('error', 'Invalid User!');
                            $keyx1 = $this->my_func->dinarpal_encrypt($this->config->item('system_name'));
                            redirect(site_url('staff/keep/purchasepickup/032'));
                        } else {
                            $me_id_customer = $me[0]->me_id;
//                                            print_r($cart); die();

                            $at_id_money = 1;
                            $sess = $this->session->all_userdata();
                            $sl_id = $sess['sl_id'];
                            $me_id_staff = $sess['me_id'];
                            $me_id_admin = $this->my_func->getMeAdmin($sl_id);

                            $tr_datetime = date('Y-m-d H:i:s');

                            $bol_pay = $this->debit_kredit($me_id_customer, $total_price, $at_id_money, 2);
                            if ($bol_pay) {

//                                                $bol_receive = $this->debit_kredit($me_id_admin, $total_price, $at_id_money, 1);
                                $bol_receive = true;
                                $this->debit_kredit_fund($me_id_admin, $price, 'SALES', 1);
                                $this->debit_kredit_fund($me_id_admin, $gst_tax, 'GST', 1);
                                if ($bol_receive) {

                                    // transaction money payment
                                    $data_tr1 = array(
                                        'me_id_from' => $me_id_customer,
                                        'me_id_to' => $me_id_admin,
                                        'tr_amount' => $price,
                                        'at_id' => 8,
                                        'ft_id' => 17,
                                        'tr_notes' => 'Purchase and Pick-Up',
                                        'tr_datetime' => $tr_datetime,
                                        'tt_id' => 41,
                                        'ts_id' => 1,
                                        'me_id_staff' => $me_id_staff
                                    );
                                    $tr_id1 = $this->m_transaction->add($data_tr1);

                                    // gst
                                    $data_gst1 = array(
                                        'me_id_from' => $me_id_customer,
                                        'me_id_to' => $me_id_admin,
                                        'tr_amount' => $gst_tax,
                                        'at_id' => 7,
                                        'ft_id' => 13,
                                        'tr_notes' => 'GST Tax',
                                        'tr_datetime' => $tr_datetime,
                                        'tt_id' => 25,
                                        'ts_id' => 1
                                    );
                                    $tr_idgst = $this->m_transaction->add($data_gst1);

                                    // transaction gram
                                    $data_tr2 = array(
                                        'me_id_from' => $me_id_customer,
                                        'me_id_to' => 0,
                                        'tr_amount' => $weight,
                                        'at_id' => $at_id_gram,
                                        'ft_id' => 17,
                                        'tr_notes' => 'Purchase and Pick-Up Gram',
                                        'tr_datetime' => $tr_datetime,
                                        'tt_id' => 41,
                                        'ts_id' => 1,
                                        'me_id_staff' => $me_id_staff
                                    );
                                    $tr_id2 = $this->m_transaction->add($data_tr2);

                                    $data_wg = array(
                                        'tr_id' => $tr_id2,
                                        'me_id' => $me_id_customer,
                                        'wg_datetime' => $tr_datetime,
                                        'wg_type' => 'outlet_purchased',
                                        'wgs_id' => 2
                                    );
                                    $wg_id = $this->m_withdrawal_gram->add($data_wg);
                                    if ($wg_id) {
                                        foreach ($v_ids as $v) {

                                            $v_id = $v['v_id'];
                                            $itp_price = $v['itp_price'];
                                            $v_price_rate = $v['price_rate'];

                                            $data_wgc = array(
                                                'wg_id' => $wg_id,
                                                'v_id' => $v_id,
                                                'wgc_collectdatetime' => $tr_datetime,
                                                'wgcs_id' => 2
                                            );
                                            $wgc_id = $this->m_withdrawal_gram_child->add($data_wgc);

                                            $data_va = array(
                                                'me_id' => $me_id_customer,
                                                'vt_id' => 6,
                                                'v_price_rate' => $v_price_rate
                                            );
                                            $this->m_vault->edit($v_id, $data_va);
                                        }
                                    }

                                    $weight = (isset($weight) && !empty($weight) && is_numeric($weight)) ? (number_format($weight, 4)) : ("0.0000");
                                    $price = (isset($price) && !empty($price) && is_numeric($price)) ? (number_format($price, 4)) : ("0.0000");
                                    $gst_tax = (isset($gst_tax) && !empty($gst_tax) && is_numeric($gst_tax)) ? (number_format($gst_tax, 4)) : ("0.0000");
                                    $total_price = (isset($total_price) && !empty($total_price) && is_numeric($total_price)) ? (number_format($total_price, 4)) : ("0.0000");
                                    $tr_datetime = $this->my_func->sql_time_to_datetime($tr_datetime);

                                    $this->session->set_userdata('total_weight', $weight);
                                    $this->session->set_userdata('total_price', $price);
                                    $this->session->set_userdata('gst_tax', $gst_tax);
                                    $this->session->set_userdata('tr_amount', $total_price);
                                    $this->session->set_userdata('tr_datetime', $tr_datetime);
                                    $this->session->unset_userdata('customer_username');

                                    $keyx2 = $this->my_func->dinarpal_encrypt($this->config->item('system_name'));
                                    redirect(site_url('staff/keep/purchasepickupConfirm/0324?keyfive=' . $keyx2));
                                } else {
                                    $bol_pay = $this->debit_kredit($me_id_customer, $total_price, $at_id, 1);
                                    $keyx1 = $this->my_func->dinarpal_encrypt($this->config->item('system_name'));
                                    redirect(site_url('staff/keep/purchasepickup4/0323?keyfour=' . $keyx1));
                                }
                            } else {
                                $keyx1 = $this->my_func->dinarpal_encrypt($this->config->item('system_name'));
                                redirect(site_url('staff/keep/purchasepickup4/0323?keyfour=' . $keyx1));
                            }
                        }
                    }
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function getSouqDelete() {
        $rowid = $this->input->post('row_id');
        $v_idx = $this->input->post('vx');

        $v_id = $this->my_func->dinarpal_decrypt($v_idx);
        $data_v = array('me_id_lock' => 0);
        $this->m_vault->edit($v_id, $data_v);

        $data = array(
            'rowid' => $rowid,
            'qty' => 0
        );
        $this->cart->update($data);
    }

    public function getSouqBuy($destroy = 1) {
        $data['sl_id'] = $this->input->post('sl_id');
        $data['br_id'] = $this->input->post('br_id');
        $data['it_id'] = $this->input->post('it_id');
        $data['pu_id'] = $this->input->post('pu_id');
//		$data['items'] = $this->m_itc_type->getAll_basedBI($data['br_id'], $data['itc_id']);
        $me_admin = $this->m_members->getSL($data['sl_id']);
        $me_id_admin = (isset($me_admin) && !empty($me_admin)) ? ($me_admin[0]->me_id) : (0);
//		$data['vault'] = $this->m_vault->getAll_personal(3, $me_id_admin);
        $data['vault'] = $this->m_vault->getAllByKeep(3, $me_id_admin, $data['br_id'], $data['it_id'], $data['pu_id']);
//                print_r($data['vault']); die();
        if ($destroy == 1) {
            $this->cart->destroy();
        }
        echo $this->load->view('staff/keep/ajax/getSouq_1.php', $data, true);
    }

    public function setAjaxList1($stat = 1) {
        if ($stat == 1) {
            $qty = $this->input->post('qty');
            $itct_id = $this->input->post('itct_id');
            $price = $this->input->post('price');
            $br_id = $this->input->post('brand');
            $data_post = $this->input->post();
            $itct = $this->m_itc_type->get($itct_id);
            $it = $this->m_item_type->get($this->input->post('metal_type'));
            $br = $this->m_brands->get($br_id);
            $data_post['itct_name'] = $itct[0]->itct_name;
            $data_post['itct_cert'] = $itct[0]->itct_cert;
            $data_post['it'] = $it[0];
            $data_post['br'] = $br[0];
            $data_post['itct'] = $itct[0];
            $data = array(
                'id' => $itct_id,
                'qty' => $qty,
                'price' => $price,
                'name' => '-',
                'options' => $data_post
            );
            $this->cart->insert($data);
            //print_r($data);
        } else if ($stat == 2) {
            $this->cart->destroy();
        } else if ($stat == 3) {
            $data = array(
                'rowid' => $this->input->post('rowid'),
                'qty' => 0
            );
            $this->cart->update($data);
        } else if ($stat == 11) {
            // buy gold souq
            $v_idx = $this->input->post('v');
            $v_id = $this->my_func->dinarpal_decrypt($v_idx);

            $v = $this->m_vault->get($v_id);

            $error1 = "0|-";

            $price = (isset($v[0]) && !empty($v[0])) ? ($v[0]->itp_price * $v[0]->v_weight) : (0);
            $data_post['v'] = $v[0];

//                        if ($this->cart->total_items() > 0) {
//                            $in_cart = array();
//                            // Fetch data for all products in cart
//                            foreach ($this->cart->contents() AS $item) {
//                                if ($item['id'] == $v_id) {
//                                    die("1|You already choose that item!");
//                                }
//                            }
//                        }

            $v_id = $v[0]->v_id;
            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
            $data_vault = array('me_id_lock' => $me_id);
            $this->m_vault->edit($v_id, $data_vault);

            $data = array(
                'id' => $v[0]->v_id,
                'qty' => 1,
                'price' => $price,
                'name' => $v[0]->v_name,
                'options' => $data_post
            );
            $this->cart->insert($data);

            echo $error1;
        }
    }

    function checkItemLocked() {
        $v_idx = $this->input->post('v');
        $v_id = $this->my_func->dinarpal_decrypt($v_idx);
        $v = $this->m_vault->get($v_id);
        if (isset($v) && !empty($v)) {
            $me_id_lock = $v[0]->me_id_lock;
            if ($me_id_lock != 0) {
                die("1");
            } else {
                die("0");
            }
        } else {
            die("0");
        }
    }

    public function getSouqList($stat = 1) {
        $data['cart'] = $this->cart->contents();
        $data['advertising_campaign'] = $this->m_advertising_campaign->getAll();
        $data['stat'] = $stat;
        echo $this->load->view('staff/keep/ajax/getSouqList.php', $data, true);
    }

    public function getITC() {
        $it_id = $this->input->post('it_id');
        $pu_id = $this->input->post('pu_id');
        $item_type = $this->m_item_type_child->getItPu($it_id, $pu_id);
        if (isset($item_type) && !empty($item_type)) {
            $data['item_type'] = $item_type;
            echo $this->load->view('staff/keep/ajax/ajaxGetITC', $data, true);
        } else {
            die('-1');
        }
    }

    public function getBalance() {
        $at_id = $this->input->post('at_id');
        $username = $this->input->post('username');
        $me = $this->m_members->getByName($username);
        if (isset($me) && !empty($me)) {
            $me_id = $me[0]->me_id;
            $balance = $this->get_balance($me_id, $at_id);
            if (isset($balance) && !empty($balance) && is_numeric($balance)) {
                die(number_format($balance, 4));
            } else {
                die("0.0000");
            }
        } else {
            die("0.0000");
        }
    }

    public function withdrawal($output = 'dashboaxrd', $menu1 = '11') {
        $data = array();
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {

                case '035':
//                                    $data['construction_dinarpal'] = 1;
                    $title = 'Withdrawal ' . $this->my_func->getCurrency();
                    break;
                case '0351x':
                    $title = 'Withdrawal ' . $this->my_func->getCurrency();
                    if ($this->input->post('username')) {
                        $me_username = $this->input->post('username');
                        $me = $this->m_members->getByName($me_username);
                        if (isset($me) && !empty($me)) {
                            $data['me'] = $me;
                        } else {
                            $this->session->set_flashdata('error', 'Invalid user!');
                            redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                    }
                    break;
                case '0351':
                    $title = 'Withdrawal ' . $this->my_func->getCurrency();
                    if ($this->input->post('username')) {
                        $me_username = $this->input->post('username');
                        $me = $this->m_members->getByName($me_username);
                        if (isset($me) && !empty($me)) {
                            $m = $me[0];
                            $data['me'] = $m;
                        } else {
                            $this->session->set_flashdata('error', 'Invalid user!');
                            redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                    }
                    break;
                case '0352':
                    $title = 'Withdrawal ' . $this->my_func->getCurrency();
                    if ($this->input->post('username')) {
                        $tr_amount = $this->input->post('tr_amount');
                        $tr_amount = str_replace(',', '', $tr_amount);
                        if (NULL == $tr_amount || '' == $tr_amount || 0 == $tr_amount || !is_numeric($tr_amount)) {
                            $this->session->set_flashdata('error', 'Invalid withdraw amount!');
                            redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                        }
                        $me_username = $this->input->post('username');
                        $me = $this->m_members->getByName($me_username);
                        if (isset($me) && !empty($me)) {
                            $m = $me[0];
                            
//                            print_r($m); die();
                            $me_type_user = $m->me_type;
//                            print_r($me_type_user); die();
                            
                            $data['me'] = $m;
                            $arr = $this->input->post();
                            $data['arr'] = $arr;

                            $me_id_user = $m->me_id;
                            $balance = $this->get_balance($me_id_user, $arr['at_id']);
                            
//                            print_r("$balance $tr_amount"); die();

//                            if ($tr_amount > $balance) {
//                                $this->session->set_flashdata('error', 'Insufficient Fund!');
//                                redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
//                            }

                            $ft_id = 5; // withdrawal fee money
                            $ft = $this->m_fee_type->get($ft_id);
                            $ft_price = 0.00;
                            if ($me_type_user != 'DP') {
                                if (isset($ft) && !empty($ft)) {
                                    $ft_type = $ft[0]->ft_type;
                                    if ($ft_type == 'STATIC') {
                                        $ft_price = $ft[0]->ft_price;
                                    } else if ($ft_type == 'DYNAMIC') {
                                        $ft_price = $ft[0]->ft_price * $tr_amount;
                                    }
                                }
                            }

                            $gst_rate = $this->my_func->getGST();
                            $gst_tax = $gst_rate * $ft_price;

//                            $total_get = $tr_amount - $ft_price - $gst_tax;
                            $total_draw = $tr_amount + $ft_price + $gst_tax;
                            $fee_tax = $ft_price + $gst_tax;
                            $total_get = $fee_tax;

                            $total_rounded = $this->my_func->getRounded($tr_amount);
                            
                            if ($total_draw > $balance) {
                                $this->session->set_flashdata('error', 'Insufficient Fund!');
                                redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                            }
                            
                            $balance -= $total_draw;

//                                            print_r($total_rounded . " | $total_get = $tr_amount - $ft_price - $gst_tax; | $fee_tax"); die();

                            $data['tr_amount'] = (isset($tr_amount) && !empty($tr_amount) && is_numeric($tr_amount)) ? (number_format($tr_amount, 4)) : ("0.0000");
                            $data['ft_price'] = (isset($ft_price) && !empty($ft_price) && is_numeric($ft_price)) ? (number_format($ft_price, 4)) : ("0.0000");
                            $data['gst_tax'] = (isset($gst_tax) && !empty($gst_tax) && is_numeric($gst_tax)) ? (number_format($gst_tax, 4)) : ("0.0000");
                            $data['total_get'] = (isset($total_get) && !empty($total_get) && is_numeric($total_get)) ? (number_format($total_get, 4)) : ("0.0000");
                            $data['total_rounded'] = (isset($total_rounded) && !empty($total_rounded) && is_numeric($total_rounded)) ? (number_format($total_rounded, 2)) : ("0.00");
                            $data['balance'] = (isset($balance) && !empty($balance) && is_numeric($balance)) ? (number_format($balance, 4)) : ("0.0000");
                        } else {
                            $this->session->set_flashdata('error', 'Invalid user!');
                            redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                    }
                    break;
                case '0353':
                    $title = 'Withdrawal ' . $this->my_func->getCurrency();
                    if ($this->input->post('username')) {
                        $tr_amount = $this->input->post('tr_amount');
                        $tr_amount = str_replace(',', '', $tr_amount);
                        if (NULL == $tr_amount || '' == $tr_amount || 0 == $tr_amount || !is_numeric($tr_amount)) {
                            $this->session->set_flashdata('error', 'Invalid withdraw amount!');
                            redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                        }
                        $me_username = $this->input->post('username');
                        $me = $this->m_members->getByName($me_username);
                        if (isset($me) && !empty($me)) {
                            $m = $me[0];
                            $data['me'] = $m;
                            $arr = $this->input->post();
                            $data['arr'] = $arr;
                            
                            $me_type_user = $m->me_type;
                            
//                            print_r($arr); die();
                            $tr_notes_admin = $arr['tr_notes'];
                            
                            $me_id_user = $m->me_id;
                            $at_id = $arr['at_id'];
                            $sess = $this->session->all_userdata();
                            
                            $balance = $this->get_balance($me_id_user, $arr['at_id']);
                            
//                            print_r($sess); die();
                            
                            $sl_id_admin = $sess['sl_id'];
                            $me_id_staff = $sess['me_id'];
                            $me_id_admin = $this->my_func->getMeAdmin($sl_id_admin);

                            $tr_datetime = date('Y-m-d H:i:s');

                            $ft_id = 5; // withdrawal fee money
                            $ft = $this->m_fee_type->get($ft_id);
                            $ft_price = 0.00;
                            if ($me_type_user != 'DP') {
                                if (isset($ft) && !empty($ft)) {
                                    $ft_type = $ft[0]->ft_type;
                                    if ($ft_type == 'STATIC') {
                                        $ft_price = $ft[0]->ft_price;
                                    } else if ($ft_type == 'DYNAMIC') {
                                        $ft_price = $ft[0]->ft_price * $tr_amount;
                                    }
                                }
                            }

                            $gst_rate = $this->my_func->getGST();
                            $gst_tax = $gst_rate * $ft_price;

//                            $total_get = $tr_amount - $ft_price - $gst_tax;                            
                            $total_draw = $tr_amount + $ft_price + $gst_tax;
                            $fee_tax = $ft_price + $gst_tax;
                            $total_get = $fee_tax;

                            $total_rounded = $this->my_func->getRounded($tr_amount);
                            $diff = $tr_amount - $total_rounded;

                            $up_shadow = 1 + $gst_rate;

                            $ft_price_new = $diff * 1.0 / $up_shadow;
                            $gst_tax_new = $diff - $ft_price_new;

                            print_r("amount: $tr_amount <br />");
                            print_r("fee : $ft_price <br />");
                            print_r("gst : $gst_tax <br />");
                            print_r("get : $total_get <br /><br />");
                            print_r("total fee : $fee_tax <br /><br />");
                            print_r("rounded : $total_rounded <br />");
                            print_r("diff : $diff <br />");
                            print_r("fee : $ft_price_new <br />");
                            print_r("gst : $gst_tax_new <br />");
                            print_r("total draw : $total_draw <br />");
//                                            die();

                            $bol_withdraw = $this->debit_kredit($me_id_user, $total_draw, $at_id, 2);
                            if ($bol_withdraw) {
//                                                $bol_receive = $this->debit_kredit($me_id_admin, $diff, $at_id, 1);
                                $bol_receive = true;
                                $this->debit_kredit_fund($me_id_admin, $ft_price, 'FEES', 1);
                                $this->debit_kredit_fund($me_id_admin, $gst_tax, 'GST', 1);
                                if ($bol_receive) {

                                    $this->payGeneology($me_id_user, $at_id, $ft_price, $tr_datetime);

                                    // withdraw money
                                    $tr_data1 = array(
                                        'me_id_from' => $me_id_user,
                                        'me_id_to' => 0,
                                        'tr_amount' => $total_rounded,
                                        'at_id' => $at_id,
                                        'ft_id' => 5,
                                        'tr_notes' => 'Withdrawals Money at Outlet. Note: '.$tr_notes_admin,
                                        'tr_datetime' => $tr_datetime,
                                        'tt_id' => 42,
                                        'ts_id' => 1,
                                        'me_id_staff' => $me_id_staff
                                    );
                                    $tr_id1 = $this->m_transaction->add($tr_data1);

                                    // withdraw money fee
                                    $tr_data2 = array(
                                        'me_id_from' => $me_id_user,
                                        'me_id_to' => $me_id_admin,
                                        'tr_amount' => $ft_price,
                                        'at_id' => 6,
                                        'ft_id' => 5,
                                        'tr_notes' => 'Withdrawals Money Fee at Outlet. Note: '.$tr_notes_admin,
                                        'tr_datetime' => $tr_datetime,
                                        'tt_id' => 29,
                                        'ts_id' => 1,
                                        'me_id_staff' => $me_id_staff
                                    );
                                    $tr_id2 = $this->m_transaction->add($tr_data2);

                                    // gst fee
                                    $tr_data3 = array(
                                        'me_id_from' => $me_id_user,
                                        'me_id_to' => $me_id_admin,
                                        'tr_amount' => $gst_tax,
                                        'at_id' => 7,
                                        'ft_id' => 13,
                                        'tr_notes' => 'GST Tax Fee. Note: '.$tr_notes_admin,
                                        'tr_datetime' => $tr_datetime,
                                        'tt_id' => 25,
                                        'ts_id' => 1,
                                        'me_id_staff' => $me_id_staff
                                    );
                                    $tr_id3 = $this->m_transaction->add($tr_data3);

                                    $this->session->set_userdata('withdrawal_from', $me_username);
                                    $this->session->set_userdata('withdrawal_type', 'Cash');

                                    $at = $this->m_account_type->get($at_id);
                                    $at_desc = (isset($at) && !empty($at)) ? ($at[0]->at_desc) : ('-');
                                    $this->session->set_userdata('account_type', $at_desc);
                                    
                                    $total_fees = $ft_price + $gst_tax;
                                    $total_balance = $balance - $tr_amount - $total_fees;

                                    $tr_amount = (isset($tr_amount) && !empty($tr_amount) && is_numeric($tr_amount)) ? (number_format($tr_amount, 4)) : ("0.0000");
                                    $total_rounded = (isset($total_rounded) && !empty($total_rounded) && is_numeric($total_rounded)) ? (number_format($total_rounded, 4)) : ("0.0000");
                                    $ft_price = (isset($ft_price) && !empty($ft_price) && is_numeric($ft_price)) ? (number_format($ft_price, 4)) : ("0.0000");
                                    $gst_tax = (isset($gst_tax) && !empty($gst_tax) && is_numeric($gst_tax)) ? (number_format($gst_tax, 4)) : ("0.0000");
                                    $total_fees = (isset($total_fees) && !empty($total_fees) && is_numeric($total_fees)) ? (number_format($total_fees, 4)) : ("0.0000");
                                    $total_balance = (isset($total_balance) && !empty($total_balance) && is_numeric($total_balance)) ? (number_format($total_balance, 4)) : ("0.0000");

                                    $this->session->set_userdata('withdrawal_amount', $tr_amount);
                                    $this->session->set_userdata('amount_get', $total_rounded);
                                    $this->session->set_userdata('withdrawal_fee', $ft_price);
                                    $this->session->set_userdata('withdrawal_gst_tax', $gst_tax);
                                    $this->session->set_userdata('total_fees', $total_fees);
                                    $this->session->set_userdata('total_balance', $total_balance);
                                    $this->session->set_userdata('tr_datetime', $tr_datetime);

                                    redirect(site_url('staff/withdrawal/withdrawalMyr3/0354'));
                                } else {
                                    $bol_withdraw = $this->debit_kredit($me_id_user, $tr_amount, $at_id, 1);
                                    redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                                }
                            } else {
                                redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                            }
                        } else {
                            $this->session->set_flashdata('error', 'Invalid user!');
                            redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                        }
                    } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        redirect(site_url('staff/withdrawal/withdrawalMyr/035'));
                    }
                    break;
                case '0354':
                    $title = 'Withdrawal ' . $this->my_func->getCurrency();
                    break;
                case '036':
//                                    $data['construction_dinarpal'] = 1;
                    $title = 'Withdrawal Gram';
                    $this->session->unset_userdata('wi_me_email');
                    $this->session->unset_userdata('wi_wg_code');
                    break;
                case '0362':
                    $title = 'Withdrawal Gram';
                    if (($this->input->post('me_username') && $this->input->post('wg_code')) || ($this->session->userdata('wi_me_username') && $this->session->userdata('wi_wg_code'))) {

                        if ($this->input->post('me_username') && $this->input->post('wg_code')) {
                            $me_username = $this->input->post('me_username');
                            $wg_code = $this->input->post('wg_code');
                        } else {
                            $me_username = $this->session->userdata('wi_me_username');
                            $wg_code = $this->session->userdata('wi_wg_code');
                        }

                        $me = $this->m_members->getByName($me_username);
                        $wgc = $this->m_withdrawal_gram_child->get_parentCode($wg_code);

                        if (!isset($me) || empty($me)) {
                            $this->session->set_flashdata('error', 'Invalid user!');
                            redirect(site_url('staff/withdrawal/wg1/036'));
                        } else {
                            $me_id = $me[0]->me_id;
                            $wgc_me = $this->m_withdrawal_gram_child->get_parentCodeAndMe($wg_code, $me_id);
                            if (!isset($wgc_me) || empty($wgc_me)) {
                                $this->session->set_flashdata('error', 'Invalid withdrawal code!');
                                redirect(site_url('staff/withdrawal/wg1/036'));
                            }
                        }
                        if (!isset($wgc) || empty($wgc)) {
                            $this->session->set_flashdata('error', 'Invalid withdrawal code!');
                            redirect(site_url('staff/withdrawal/wg1/036'));
                        }

                        $data['me'] = $me;
                        $data['wgc'] = $wgc;

                        $this->session->set_userdata('wi_me_username', $me_username);
                        $this->session->set_userdata('wi_wg_code', $wg_code);
                    } else {
                        $this->session->set_flashdata('error', 'Access denied!');
                        redirect(site_url('staff/withdrawal/wg1/036'));
                    }
                    break;
                case '0363':
                    $title = 'Withdrawal Gram';
                    if ($this->input->get('wg') && $this->input->get('v') && $this->input->get('s')) {
                        $wgc_idx = $this->input->get('wg');
                        $v_idx = $this->input->get('v');
                        $wgcs_id = $this->input->get('s');

                        $wgc_id = $this->my_func->dinarpal_decrypt($wgc_idx);
                        $v_id = $this->my_func->dinarpal_decrypt($v_idx);

                        // update withdrawal gram
                        $data_wgc = array(
                            'wgc_collectdatetime' => date('Y-m-d H:i:s'),
                            'wgcs_id' => $wgcs_id
                        );
                        $this->m_withdrawal_gram_child->edit($wgc_id, $data_wgc);

                        $vt_id = ($wgcs_id == 2) ? (6) : (($wgcs_id == 3) ? (3) : (5));
                        // update vault
                        $data_v = array(
                            'vt_id' => $vt_id
                        );
                        $this->m_vault->edit($v_id, $data_v);

                        // check if all item are reject or withdrawn
                        $isClear = true;
                        $wgcx = $this->m_withdrawal_gram_child->get($wgc_id);
                        if (isset($wgcx) && !empty($wgcx)) {

//                                            print_r($wgcx); die();

                            $wg_id = $wgcx[0]->wg_id;
                            $wgc2 = $this->m_withdrawal_gram_child->getAll($wg_id);
                            if (isset($wgc2) && !empty($wgc2)) {

//                                                print_r($wgc2); die();

                                foreach ($wgc2 as $wgc) {
                                    if ($wgc->wgcs_id == 1) {
                                        $isClear = false;
                                        break;
                                    }
                                }
                            }

//                                            echo '|'.$isClear.'|'; die();
                            $sess = $this->session->all_userdata();
                            $me_id_staff = $sess['me_id'];

                            if ($isClear == true) {
                                $data_wg = array(
                                    'wgs_id' => 2
                                );
                                $this->m_withdrawal_gram->edit($wg_id, $data_wg);

                                $wg = $this->m_withdrawal_gram->get($wg_id);
                                if (isset($wg) && !empty($wg)) {
                                    $tr_id = $wg[0]->tr_id;
                                    $data_tr = array(
                                        'ts_id' => 1,
                                        'me_id_staff' => $me_id_staff
                                    );
                                    $this->m_transaction->edit($tr_id, $data_tr);
                                }
                            }
                        }

//                                        $v_ids[0] = $v_id;
//                                        $this->session->set_userdata('items_withdraw', $v_ids);

                        redirect(site_url('staff/withdrawal/wg2/0362'));
                    } else {
                        $this->session->set_flashdata('error', 'Access denied!');
                        redirect(site_url('staff/withdrawal/wg1/036'));
                    }
                    break;
                case '040':
                    $data['construction_dinarpal'] = 1;
                    $title = 'Withdrawal Summary';

                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function manageConf($output = 'dashboard', $menu1 = '11') {
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            $crud = new grocery_CRUD();
            $crud->set_theme('twitter-bootstrap');
            $crud->unset_export();
            $crud->unset_print();
            $data = array();

            switch ($menu1) {
                case 'x101':
                    $currency = $this->my_func->getCurrency();
                    $title = 'Currency Type';
                    $crud->set_table('dinarpal_config');
                    $crud->display_as('dc_currency_type', 'Currency Type')
                            ->display_as('dc_admin_bank_account', 'DinarPal Bank Account')
                            ->display_as('dc_admin_bank_name', 'DinarPal Bank Name')
                            ->display_as('dc_gst_rate', 'GST Rate')
                            ->display_as('dc_hq_username', 'DP HQ Username')
                            ->display_as('dc_geneology_rate', 'Geneology Commission Rate')
                            ->display_as('dc_minting_maximum', 'Minting Max. Gram')
                            ->display_as('dc_minimum_trans', 'Minimum Transaction ('.$currency.')')
                            ->display_as('dc_limit_rows', 'Transaction Limit Rows');
                    $crud->columns('dc_currency_type', 'dc_admin_bank_account', 
                            'dc_admin_bank_name', 'dc_gst_rate', 'dc_geneology_rate', 
                            'dc_minting_maximum', 'dc_minimum_trans', 'dc_limit_rows');
                    $crud->fields('dc_currency_type', 'dc_admin_bank_account', 
                            'dc_admin_bank_name', 'dc_gst_rate', 'dc_geneology_rate', 
                            'dc_minting_maximum', 'dc_minimum_trans', 'dc_limit_rows');
                    $crud->unset_add();
                    $crud->unset_delete();
                    $data = $crud->render();
                    break;
                case 'x102':
                    $title = 'Payment Method';
                    $crud->set_table('payment_method');
                    $crud->display_as('pm_name', 'Payment Type');
                    $data = $crud->render();
                    break;
                case 'x103':
                    $title = 'Purity';
                    $crud->set_table('purity');
                    $crud->display_as('pu_desc', 'Purity');
                    $crud->unset_add();
                    $crud->unset_delete();
                    $crud->unset_edit();
                    $data = $crud->render();
                    break;
                case 'x1024':
                    $title = 'Item Type';
                    $crud->set_table('item_type');
                    $crud->unset_add();
                    $crud->unset_delete();
                    $crud->unset_edit();
                    $data = $crud->render();
                    break;
                case 'x1025':
                    $title = 'Item Type - Purity';
                    $data['item_type_child'] = $this->m_item_type_child->getAll();
                    $data['item_type_purity'] = $this->m_item_type_purity->getAll();
                    if ($this->input->post('form')) {
                        $itc_name = $this->input->post('itc_name');
                        $itp_id = $this->input->post('itp_id');
                        $data_itc = array(
                            'itc_name' => $itc_name,
                            'itp_id' => $itp_id
                        );
                        $form = $this->input->post('form');
                        if ($form == 'add') {
                            $itc_id = $this->m_item_type_child->add($data_itc);
                            if ($itc_id) {
                                $this->session->set_flashdata('sucess', 'Add Success');
                                redirect(site_url('staff/manageConf/itemTypeChild/x1025'));
                            } else {
                                $this->session->set_flashdata('error', 'Opss! Error while add.');
                                redirect(site_url('staff/manageConf/itemTypeChild/x1025/add'));
                            }
                        } else if ($form == 'edit') {
                            $itc_idx = $this->input->post('itc_id');
                            $itc_id = $this->my_func->dinarpal_decrypt($itc_idx);
                            $this->m_item_type_child->edit($itc_id, $data_itc);
                            $this->session->set_flashdata('sucess', 'Edit Success');
                            redirect(site_url('staff/manageConf/itemTypeChild/x1025'));
                        }
                    }
                    break;
                case 'x104':
                    $title = 'Transaction Type';
                    $crud->set_table('transaction_type');
                    $crud->display_as('tt_desc', 'Transaction Type');
                    $data = $crud->render();
                    break;
                case 'x105':
                    $title = 'Transaction Status';
                    $crud->set_table('transaction_status');
                    $crud->display_as('ts_desc', 'Transaction Status');
                    $data = $crud->render();
                    break;
                case 'x106':
                    $title = 'Fee Type';
                    $crud->set_table('fee_type');
                    $crud->display_as('ft_name', 'Fee Name')
                            ->display_as('ft_price', 'Fee Rate (MYR)')
                            ->display_as('ft_addon', 'Add-On Formula (MYR)')
                            ->display_as('ft_type', 'Fee Type');
                    $data = $crud->render();
                    break;
                case 'x107':
                    $title = 'Country';
                    $crud->set_table('countries');
                    $crud->display_as('co_name', 'Country Name');
                    $data = $crud->render();
                    break;
                case 'x108':
                    $title = 'Cards Type';
                    $crud->set_table('cards_type');
                    $crud->display_as('ct_name', 'Card Type');
                    $data = $crud->render();
                    break;
                case 'x109':
                    $title = 'Bank Category';
                    $crud->set_table('banks_category');
                    $crud->display_as('bc_name', 'Category Name')
                            ->display_as('bc_fee', 'Fee Rate (MYR)');
                    $data = $crud->render();
                    break;
                case 'x1010':
                    $title = 'Bank Account Type';
                    $crud->set_table('ba_account_type');
                    $crud->display_as('bat_name', 'Type Description');
                    $data = $crud->render();
                    break;
                case 'x1011':
                    $title = 'Brands';
                    $crud->set_table('brands');
                    $crud->display_as('br_name', 'Brand Name')
                            ->display_as('br_code', 'Brand Code');
                    $data = $crud->render();
                    break;
                case 'x1012':
                    $title = 'Item Type';
                    $crud->set_table('itc_type');
                    $crud->set_relation('pu_id', 'purity', 'pu_desc');
                    $crud->set_relation('bi_id', 'brands_itc', 'br_id');
                    //$crud->set_relation_n_n('Brands', 'brands_itc', 'brands', 'bi_id', 'br_id', 'br_name','bi_id');
                    //$crud->set_url_field('itct_image');
                    //$crud->set_image_path(base_url().'assets/uploads/items/');
                    $crud->set_field_upload('itct_image', 'assets/uploads/items/');
                    $crud->set_field_upload('itct_image2', 'assets/uploads/items/');
                    $crud->set_field_upload('itct_image3', 'assets/uploads/items/');
                    $crud->display_as('itct_image', 'Front Image');
                    $crud->display_as('itct_image2', 'Side Image ');
                    $crud->display_as('itct_image3', 'Back Image');
                    $crud->display_as('itct_desc', 'Description');
                    $crud->display_as('itct_name', 'Name');
                    $crud->display_as('itct_price_rate', 'Price (' . $this->my_func->getCurrency() . ')');
                    $crud->display_as('itct_weight', 'Weight');
                    $crud->display_as('itct_cert', 'Cert. No.');
                    $crud->display_as('pu_id', 'Purity');
                    $crud->required_fields('itct_image', 'itct_image2', 'itct_image3', 'itct_name', 'itct_price_rate', 'itct_weight', 'pu_id');
                    //$crud->callback_after_upload(array($this,'callback_after_upload1'));
                    $data = $crud->render();
                    break;
                case 'x1013':
                    $title = 'Storage Location';
                    $crud->set_table('storage_location');
                    $crud->display_as('sl_name', 'Storage Location');
                    $data = $crud->render();
                    break;
                case 'x1014':
                    $title = 'Amil';
                    $crud->set_table('amil');
                    $crud->display_as('am_name', 'Name')
                            ->display_as('am_image', 'Profile Picture')
                            ->display_as('am_phone', 'Phone No.')
                            ->display_as('am_email', 'Email Address')
                            ->display_as('am_address', 'Amils Address')
                            ->display_as('am_whatsapp', 'Whatsapp No.')
                            ->display_as('am_status', 'Amil Status');
                    $crud->set_relation('am_status', 'amil_status', 'as_desc');
                    $crud->set_field_upload('am_image', 'assets/uploads/profile/');
                    $data = $crud->render();
                    break;
                case 'x1015':
                    $title = 'Item Courier';
                    $crud->set_table('item_courier');
                    $crud->display_as('ic_name', 'Item Courier');
                    $data = $crud->render();
                    break;
                case 'x1016':
                    $title = 'Item Status Courier';
                    $crud->set_table('item_status_courier');
                    $crud->display_as('isc_name', 'Item Status Courier');
                    $data = $crud->render();
                    break;
                case 'x1017':
                    $title = 'Amil Status';
                    $crud->set_table('amil_status');
                    $crud->display_as('as_desc', 'Amil Status');
                    $data = $crud->render();
                    break;

                case 'x1018':
                    $title = 'Banners';
                    $crud->set_table('banners');
                    $crud->display_as('ban_name', 'Name')
                            ->display_as('ban_image', 'Banner Picture')
                            ->display_as('ban_date', 'Date')
                            ->display_as('bty_id', 'Banner Type');
                    $crud->set_relation('bty_id', 'banners_type', 'bty_desc');
                    $crud->set_field_upload('ban_image', 'assets/uploads/banners/');
                    //$crud->callback_after_upload(array($this,'callback_after_upload2'));
                    $data = $crud->render();
                    break;

                case 'x1019':
                    $title = 'Banners Type';
                    $crud->set_table('banners_type');
                    $crud->display_as('bty_desc', 'Banner Type');
                    $data = $crud->render();
                    break;

                case 'x1020':
                    $title = 'Landing Page';
                    $crud->set_table('landing_page');
                    $crud->display_as('lan_title', 'Title')
                            ->display_as('lan_image', 'Landing Page Picture')
                            ->display_as('lan_subtitle', 'Subtitle')
                            ->display_as('lan_status', 'Status')
                            ->display_as('lan_colour', 'Colour')
                            ->display_as('lan_order', 'Order');

                    $crud->field_type('lan_status', 'dropdown', array('1' => 'Show', '2' => 'Hidden'));
                    $crud->set_field_upload('lan_image', 'assets/uploads/landingpage/');
                    $data = $crud->render();
                    break;

                case 'x10201':
                    $title = 'Events';
                    $crud->set_table('events');
                    $crud->display_as('Region', 'Region')
                            ->display_as('Branch', 'Branch')
                            ->display_as('Date', 'Date')
                            ->display_as('Time', 'Time')
                            ->display_as('Day', 'Day')
                            ->display_as('Speaker', 'Speaker');

                    $crud->field_type('Region', 'dropdown', array('Malaysia', 'Brunei', 'UK', 'Singapore'));
                    $crud->field_type('Branch', 'dropdown', array('Melaka', 'Johor', 'Negeri Sembilan', 'Selangor'));
                    $crud->field_type('Day', 'dropdown', array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'));
                    $crud->field_type('Speaker', 'dropdown', array('Hj Azhar Yaacob', 'Arash Rashid', 'Zulkefli Hamdan'));
                    $data = $crud->render();
                    break;

                case 'x1021':
                    $title = 'Banks';
                    $crud->set_table('banks');
                    $crud->display_as('ba_name', 'Bank Name')
                            ->display_as('ba_addinfo', 'Additional Information');
                    $crud->field_type('ba_status', 'hidden');
                    $crud->columns('ba_name', 'ba_addinfo');
                    $data = $crud->render();
                    break;
                case 'x1022':
                    $title = 'Banks Branches';
                    $crud->set_table('banks_branch_info');
                    $crud->set_relation('ba_id', 'banks', 'ba_name');
                    $crud->set_relation('co_id', 'countries', 'co_name');
                    $crud->display_as('ba_id', 'Bank Name')
                            ->display_as('co_id', 'Country')
                            ->display_as('bbi_address', 'Branch Bank Address')
                            ->display_as('bbi_city', 'City')
                            ->display_as('bbi_zipcode', 'Postcode')
                            ->display_as('bbi_state', 'State')
                            ->display_as('bbi_phone', 'Bank Phone No.')
                            ->display_as('bbi_digitrouting', 'Bank Digit Routing')
                            ->display_as('bbi_swiftcode', 'Bank Swift Code')
                            ->display_as('bbi_addinfo', 'Additional Information');
                    $crud->field_type('bbi_status', 'hidden');
                    $crud->columns('ba_id', 'bbi_address', 'bbi_addinfo');
                    $data = $crud->render();
                    break;
                case 'x1023':
                    $title = 'Current Price Rate';
                    $stat = ($this->input->get('stat')) ? ($this->input->get('stat')) : (1);
                    if ($stat == 1) {
                        $data = array(
                            'item_type' => $this->m_item_type->getAll(),
                            'purity' => $this->m_purity->getAll()
                        );
                    } else {
                        $item_type = $this->m_item_type->getAll();
                        $purity = $this->m_purity->getAll();
                        if ($purity) {
                            foreach ($purity as $pu) {
                                if ($item_type) {
                                    foreach ($item_type as $it) {
                                        $itp_price = $this->input->post($pu->pu_id . '_' . $it->it_id . '_sell');
                                        $itp_price = (is_numeric($itp_price)) ? ($itp_price) : (0);
                                        $itp_price_buy = $this->input->post($pu->pu_id . '_' . $it->it_id . '_buy');
                                        $itp_price_buy = (is_numeric($itp_price_buy)) ? ($itp_price_buy) : (0);
                                        $itp_marhun = $this->input->post($pu->pu_id . '_' . $it->it_id . '_marhun');
                                        $itp_marhun = (is_numeric($itp_marhun)) ? ($itp_marhun) : (0);
                                        $itp_price_anon = $this->input->post($pu->pu_id . '_' . $it->it_id . '_anon');
                                        $itp_price_anon = (is_numeric($itp_price_anon)) ? ($itp_price_anon) : (0);
                                        $data = array(
                                            'itp_price' => $itp_price,
                                            'itp_price_buy' => $itp_price_buy,
                                            'itp_marhun' => $itp_marhun,
                                            'itp_price_anon' => $itp_price_anon
                                        );
                                        $this->m_item_type_purity->edit_calculator($pu->pu_id, $it->it_id, $data);
                                    }
                                }
                            }
                        }
                        $this->session->set_flashdata('sucess', 'Save success ...');
                        redirect(site_url('staff/manageConf/curPriceRate/x1023'));
                    }
                    break;
            }
            $this->_papar($data, $this->uri->segment(2) . '/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }
    
    public function sendIttihadPayment($stat = 1) {
        if ($stat == 1) {

            $arr = $this->input->post();

//            print_r($arr); die();
            // validation
            $bol_flag_failed = false;
            $error = '';
            $arr['tr_amount'] = str_replace(' ', '', $arr['tr_amount']);
            if (!is_numeric($arr['tr_amount']) || '0' == $arr['tr_amount'] || 0 == $arr['tr_amount'] || '' == $arr['tr_amount'] || NULL == $arr['tr_amount'] || $arr['tr_amount'] < 0) {
                $error .= 'Invalid amount transfer!<br />';
                $bol_flag_failed = true;
            }
            if (0 == $arr['me_id_to']) {
                $error .= 'Invalid receiver!<br />';
                $bol_flag_failed = true;
            }
//            print_r($bol_flag_failed); die();
            if ($bol_flag_failed) {
                $this->session->set_flashdata('error', $error);
                redirect(site_url('staff/commissions/sendPayment/d4'));
            }

            $this->session->set_userdata('payment_temp', $arr);
            redirect(site_url('staff/commissions/sendPaymentConfirm/d41'));
            
        } else if ($stat == 2) { 
            
            $arr = $this->input->post();

            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
            $me = $this->m_members->getStaff($me_id);
            $me_username = (isset($me) && !empty($me)) ? ($me[0]->me_username) : ("-");
            $inpu_pwd = $arr['password'];
            $isMatch = $this->simpleloginsecure->isValidPassword($me_username, $inpu_pwd);

            $me_id_to = $arr['me_id_to'];
            $me_to = $this->m_members->get($me_id_to);
            $me_to_email = (isset($me_to) && !empty($me_to)) ? ($me_to[0]->me_email) : ("umar@dinarpal.com");
            
            $me_id_admin = $this->my_func->getMeAdminHQ();
            
//            print_r($arr); die();

            if ($isMatch == false) {
                $this->session->set_flashdata('error', 'Invalid password!<br />Authorization denied!!');
                redirect(site_url('staff/commissions/sendPayment/d4'));
            }

            unset($arr['password']);

            // validation
            $bol_flag_failed = false;
            $error = '';
            if (!is_numeric($arr['tr_amount']) || '0' == $arr['tr_amount'] || 0 == $arr['tr_amount'] || '' == $arr['tr_amount'] || NULL == $arr['tr_amount'] || $arr['tr_amount'] < 0) {
                $error .= 'Invalid amount transfer!<br />';
                $bol_flag_failed = true;
            }
            if (0 == $arr['me_id_to']) {
                $error .= 'Invalid receiver!<br />';
                $bol_flag_failed = true;
            }
            if ($bol_flag_failed) {
                $this->session->set_flashdata('error', $error);
                redirect(site_url('staff/commissions/sendPayment/d4'));
            }

            unset($arr['username']);
            $arr['me_id_from'] = $me_id_admin;
            $arr['ts_id'] = 1;
            $tr_datetime = date('Y-m-d H:i:s');
            $arr['tr_datetime'] = $tr_datetime;
            $arr['tt_id'] = 38;
            $arr['me_id_staff'] = $me_id;
            $tr_notes = $arr['tr_notes'];
            $arr['tr_notes'] = 'Ittihad Commission send from DinarPal Administrator. Note: '.$tr_notes;
            
            $tr_amount = $arr['tr_amount'];
            $me_id_to = $arr['me_id_to'];
            $at_id = $arr['at_id'];

//            print_r($arr['me_id_to'].'|'.$arr['tr_amount'].'|'.$arr['at_id']); die();
//            print_r($arr); die();
            
            $bol_pay = $this->debit_kredit_fund($me_id_admin, $tr_amount, 'ITTIHAD', 2);
            if ($bol_pay) {
                $bol_send = $this->debit_kredit($me_id_to, $tr_amount, $at_id, 1); // 1 for add.
                if ($bol_send) {

                    $tr_id = $this->m_transaction->add($arr);
                    if ($tr_id) {

                        $subject = "DinarPal Send Ittihad Commission Transaction";

                        $tr_amount = $arr['tr_amount'];
                        $currency = $this->my_func->getCurrency();
                        $tr_datetime = $arr['tr_datetime'];
                        $msg = "DinarPal just send ittihad commission of "
                                . $currency
                                . " "
                                . number_format($tr_amount, 4)
                                . " into your dinarpal's account on "
                                . $tr_datetime;

//                    print_r("$me_id_to, $subject, $msg"); die();

                        $this->my_func->send_email($me_to_email, $subject, $msg);

                        $this->session->set_flashdata('sucess', 'Ittihad Send Payment success ..');
                    } else {
                        $this->session->set_flashdata('error', 'Ittihad Send Payment failed!');
                    }
                } else {
                    $this->debit_kredit_fund($me_id_admin, $arr['tr_amount'], 'ITTIHAD', 1);
                    $this->session->set_flashdata('error', 'Ittihad Send Payment failed!');
                }
            } else {
                $this->session->set_flashdata('error', 'Ittihad Send Payment failed!<br />Ittihad commission insufficient fund. ...');
            }
            
            redirect(site_url('staff/commissions/sendPayment/d4'));
            
        } else {
            
            $this->session->set_flashdata('error', 'Access Denied!');
            redirect(site_url('staff/commissions/sendPayment/d4'));
        }
    }

    public function sendSinglePayment($stat = 1) {
        if ($stat == 1) {

            $arr = $this->input->post();

            //print_r($arr); die();
            // validation
            $bol_flag_failed = false;
            $error = '';
            $arr['tr_amount'] = str_replace(' ', '', $arr['tr_amount']);
            if (!is_numeric($arr['tr_amount']) || '0' == $arr['tr_amount'] || 0 == $arr['tr_amount'] || '' == $arr['tr_amount'] || NULL == $arr['tr_amount'] || $arr['tr_amount'] < 0) {
                $error .= 'Invalid amount transfer!<br />';
                $bol_flag_failed = true;
            }
            if (0 == $arr['me_id_to']) {
                $error .= 'Invalid receiver!<br />';
                $bol_flag_failed = true;
            }
            if ($bol_flag_failed) {
                $this->session->set_flashdata('error', $error);
                redirect(site_url('staff/dinarpalAccount/topupCash/y12'));
            }

            $this->session->set_userdata('payment_temp', $arr);
            redirect(site_url('staff/dinarpalAccount/topupCashConfirm/y121'));
        } else if ($stat == 2) {

            $arr = $this->input->post();

            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
            $me = $this->m_members->getStaff($me_id);
            $me_username = (isset($me) && !empty($me)) ? ($me[0]->me_username) : ("-");
            $inpu_pwd = $arr['password'];
            $isMatch = $this->simpleloginsecure->isValidPassword($me_username, $inpu_pwd);

            $me_id_to = $arr['me_id_to'];
            $me_to = $this->m_members->get($me_id_to);
            $me_to_email = (isset($me_to) && !empty($me_to)) ? ($me_to[0]->me_email) : ("umar@dinarpal.com");

//                        print_r($arr); die();

            if ($isMatch == false) {
                $this->session->set_flashdata('error', 'Invalid password!<br />Authorization denied!!');
                redirect(site_url('staff/dinarpalAccount/topupCash/y12'));
            }

            unset($arr['password']);

            // validation
            $bol_flag_failed = false;
            $error = '';
            if (!is_numeric($arr['tr_amount']) || '0' == $arr['tr_amount'] || 0 == $arr['tr_amount'] || '' == $arr['tr_amount'] || NULL == $arr['tr_amount'] || $arr['tr_amount'] < 0) {
                $error .= 'Invalid amount transfer!<br />';
                $bol_flag_failed = true;
            }
            if (0 == $arr['me_id_to']) {
                $error .= 'Invalid receiver!<br />';
                $bol_flag_failed = true;
            }
            if ($bol_flag_failed) {
                $this->session->set_flashdata('error', $error);
                redirect(site_url('staff/dinarpalAccount/topupCash/y12'));
            }

            unset($arr['username']);
            $arr['ts_id'] = 1;
            $arr['tr_datetime'] = date('Y-m-d H:i:s');
            $arr['tt_id'] = 33;
            $arr['me_id_staff'] = $me_id;
            $arr['tr_notes'] = 'Inject Cash from DinarPal Administrator.';

//                        print_r($arr['me_id_to'].'|'.$arr['tr_amount'].'|'.$arr['at_id']); die();
//                        print_r($arr); die();

            $bol_send = $this->debit_kredit($arr['me_id_to'], $arr['tr_amount'], $arr['at_id'], 1); // 1 for add, inject cash.
            if ($bol_send) {

                $tr_id = $this->m_transaction->add($arr);
                if ($tr_id) {

                    $subject = "DinarPal Inject Cash Transaction";

                    $tr_amount = $arr['tr_amount'];
                    $currency = $this->my_func->getCurrency();
                    $tr_datetime = $arr['tr_datetime'];
                    $msg = "DinarPal just injecting cash of "
                            . $currency
                            . " "
                            . number_format($tr_amount, 4)
                            . " into your dinarpal's account on "
                            . $tr_datetime;

//                                        print_r("$me_id_to, $subject, $msg"); die();

                    $this->my_func->send_email($me_to_email, $subject, $msg);

                    $this->session->set_flashdata('sucess', 'Inject Cash success ..');
                } else {
                    $this->session->set_flashdata('error', 'Inject Cash failed!');
                }
            } else {
                $this->session->set_flashdata('error', 'Inject Cash failed!');
            }

            redirect(site_url('staff/dinarpalAccount/topupCash/y12'));
        }
    }

    public function deductSinglePayment($stat = 1) {
        if ($stat == 1) {

            $arr = $this->input->post();

//                        print_r($arr); die();
            // validation
            $bol_flag_failed = false;
            $error = '';
            $arr['tr_amount'] = str_replace(' ', '', $arr['tr_amount']);
            if (!is_numeric($arr['tr_amount']) || '0' == $arr['tr_amount'] || 0 == $arr['tr_amount'] || '' == $arr['tr_amount'] || NULL == $arr['tr_amount'] || $arr['tr_amount'] < 0) {
                $error .= 'Invalid deduction amount!<br />';
                $bol_flag_failed = true;
            }
            if (0 == $arr['me_id_from']) {
                $error .= 'Invalid user!<br />';
                $bol_flag_failed = true;
            }
            if ($bol_flag_failed) {
                $this->session->set_flashdata('error', $error);
                redirect(site_url('staff/dinarpalAccount/accountAdjustment/y16'));
            }

            $this->session->set_userdata('payment_temp', $arr);
            redirect(site_url('staff/dinarpalAccount/accountAdjustmentConfirm/y161'));
        } else if ($stat == 2) {

            $arr = $this->input->post();

            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
            $me = $this->m_members->getStaff($me_id);
            $me_username = (isset($me) && !empty($me)) ? ($me[0]->me_username) : ("-");
            $inpu_pwd = $arr['password'];
            $isMatch = $this->simpleloginsecure->isValidPassword($me_username, $inpu_pwd);

            $me_id_from = $arr['me_id_from'];
            $me_from = $this->m_members->get($me_id_from);
            $me_from_email = (isset($me_from) && !empty($me_from)) ? ($me_from[0]->me_email) : ("umaqgeek@gmail.com");

//                        print_r($arr); die();
            unset($arr['at_id1']);

            if ($isMatch == false) {
                $this->session->set_flashdata('error', 'Invalid password!<br />Authorization denied!!');
                redirect(site_url('staff/dinarpalAccount/accountAdjustment/y16'));
            }

            unset($arr['password']);

            // validation
            $bol_flag_failed = false;
            $error = '';
            if (!is_numeric($arr['tr_amount']) || '0' == $arr['tr_amount'] || 0 == $arr['tr_amount'] || '' == $arr['tr_amount'] || NULL == $arr['tr_amount'] || $arr['tr_amount'] < 0) {
                $error .= 'Invalid deduction amount!<br />';
                $bol_flag_failed = true;
            }
            if (0 == $arr['me_id_from']) {
                $error .= 'Invalid user!<br />';
                $bol_flag_failed = true;
            }
            if ($bol_flag_failed) {
                $this->session->set_flashdata('error', $error);
                redirect(site_url('staff/dinarpalAccount/accountAdjustment/y16'));
            }

            unset($arr['username']);
            $arr['ts_id'] = 1;
            $arr['tr_datetime'] = date('Y-m-d H:i:s');
            $arr['tt_id'] = 40;
            $arr['me_id_staff'] = $me_id;

//                        print_r($arr['me_id_to'].'|'.$arr['tr_amount'].'|'.$arr['at_id']); die();

            $bol_send = $this->debit_kredit($arr['me_id_from'], $arr['tr_amount'], $arr['at_id'], 2); // 2 for deduct, account adjustment.
            if ($bol_send) {

                $tr_id = $this->m_transaction->add($arr);
                if ($tr_id) {

                    $subject = "DinarPal Account Adjustment Transaction";

                    $tr_amount = $arr['tr_amount'];
                    $currency = $this->my_func->getCurrency();
                    $tr_datetime = $arr['tr_datetime'];
                    $msg = "DinarPal just deducting cash of "
                            . $currency
                            . " "
                            . number_format($tr_amount, 4)
                            . " from your dinarpal's account on "
                            . $tr_datetime;

//                                        print_r("$me_id_to, $subject, $msg"); die();

                    $this->my_func->send_email($me_from_email, $subject, $msg);

                    $this->session->set_flashdata('sucess', 'Account Adjustment success ..');
                } else {
                    $this->session->set_flashdata('error', 'Account Adjustment failed!');
                }
            } else {
                $this->session->set_flashdata('error', 'Account Adjustment failed!');
            }

            redirect(site_url('staff/dinarpalAccount/accountAdjustment/y16'));
        }
    }

    function debit_kredit_admin($daa_id, $amount, $at_id, $status) {
        /**
          status
          1 - add
          2 - minus
         */
        $daa = $this->m_dinarpal_admin_account->get($daa_id);
        if (empty($daa)) {
            $this->session->set_flashdata('error', 'Something wrong with Admin Account!');
            return false;
        }

        /**
          at 1 - daa_account_dinar
          at 2 - daa_account_dinar_gram
          at 3 - daa_account_dirham
          at 4 - daa_account_dirham_gram
         */
        $col_bal = '';
        switch ($at_id) {
            case 1:
                $currMoney = $daa[0]->daa_account_dinar;
                $col_bal = 'daa_account_dinar';
                break;
            case 2:
                $currMoney = $daa[0]->daa_account_dinar_gram;
                $col_bal = 'daa_account_dinar_gram';
                break;
            case 3:
                $currMoney = $daa[0]->daa_account_dirham;
                $col_bal = 'daa_account_dirham';
                break;
            case 4:
                $currMoney = $daa[0]->daa_account_dirham_gram;
                $col_bal = 'daa_account_dirham_gram';
                break;
            default:
                $currMoney = $daa[0]->daa_account_dinar;
                $col_bal = 'daa_account_dinar';
                break;
        }

        // add account
        if ($status == 1) {
            $currMoney += $amount;
            $dataArr = array($col_bal => $currMoney);
            $bol = $this->m_dinarpal_admin_account->edit($daa_id, $dataArr);
            if ($bol) {
                return true;
            } else {
                $this->session->set_flashdata('error', 'Unable to add!');
                return false;
            }
        } else if ($status == 2) { // substract account
            if ($currMoney < $amount) {
                $this->session->set_flashdata('error', 'Insufficient balance!');
                return false;
            } else {
                $currMoney -= $amount;
                $dataArr = array($col_bal => $currMoney);
                $bol = $this->m_dinarpal_admin_account->edit($daa_id, $dataArr);
                //print_r($dataArr); die();
                if ($bol) {
                    return true;
                } else {
                    $this->session->set_flashdata('error', 'Unable to substract!');
                    return false;
                }
            }
        }
    }

    function debit_kredit($me_id, $amount, $at_id, $status) {
        /**
          status
          1 - add
          2 - minus
         */
        $me = $this->m_members->get($me_id);
        $currMoney = 0;
        /**
          at 1 - da_gold_balance
          at 2 - da_gold_reserved
          at 3 - da_silver_balance
          at 4 - da_silver_reserved
          at 5 - da_point_balance
         */
        $col_bal = '';
        switch ($at_id) {
            case 1:
                $currMoney = $me[0]->da_gold_balance;
                $col_bal = 'da_gold_balance';
                break;
            case 2:
                $currMoney = $me[0]->da_gold_reserved;
                $col_bal = 'da_gold_reserved';
                break;
            case 3:
                $currMoney = $me[0]->da_silver_balance;
                $col_bal = 'da_silver_balance';
                break;
            case 4:
                $currMoney = $me[0]->da_silver_reserved;
                $col_bal = 'da_silver_reserved';
                break;
            case 5:
                $currMoney = $me[0]->da_point_balance;
                $col_bal = 'da_point_balance';
                break;
            default:
                $currMoney = $me[0]->da_gold_balance;
                $col_bal = 'da_gold_balance';
                break;
        }
        // add account
        if ($status == 1) {
            $currMoney += $amount;
            $dataArr = array($col_bal => $currMoney);
            $bol = $this->m_dinarpal_account->editByMeID($me_id, $dataArr);
            if ($bol) {
                return true;
            } else {
                $this->session->set_flashdata('error', 'Unable to add!');
                return false;
            }
        } else if ($status == 2) { // substract account
            if ($currMoney < $amount) {
                $this->session->set_flashdata('error', 'Insufficient balance!');
                return false;
            } else {
                $currMoney -= $amount;
                $dataArr = array($col_bal => $currMoney);
                $bol = $this->m_dinarpal_account->editByMeID($me_id, $dataArr);
                //print_r($dataArr); die();
                if ($bol) {
                    return true;
                } else {
                    $this->session->set_flashdata('error', 'Unable to substract!');
                    return false;
                }
            }
        }
    }

    function debit_kredit_fund($me_id, $amount, $df_code, $status) {
        /**
          status
          1 - add
          2 - minus
         */
        $me = $this->m_dinarpal_funds->getMe($me_id);
        $temp_arr = array();
        foreach ($me as $m) {
            $temp_arr[$m->df_code] = $m->df_balance;
        }

        $currMoney = $temp_arr[$df_code];
        /**
          df FEES
          df GST
          df SALES
          df RAHNU
          df ITTIHAD
          df AMANAH
          df BUYBACK
         */
        // add account
        if ($status == 1) {
            $currMoney += $amount;
            $dataArr = array('df_balance' => $currMoney);
            $bol = $this->m_dinarpal_funds->editMe($me_id, $df_code, $dataArr);
            if ($bol) {
                return true;
            } else {
                $this->session->set_flashdata('error', 'Unable to add!');
                return false;
            }
        } else if ($status == 2) { // substract account
            if ($currMoney < $amount) {
                $this->session->set_flashdata('error', 'Insufficient balance!');
                return false;
            } else {
                $currMoney -= $amount;
                $dataArr = array('df_balance' => $currMoney);
                $bol = $this->m_dinarpal_funds->editMe($me_id, $df_code, $dataArr);
                if ($bol) {
                    return true;
                } else {
                    $this->session->set_flashdata('error', 'Unable to substract!');
                    return false;
                }
            }
        }
    }

    function get_balance($me_id, $at_id) {
        /**
          status
          1 - add
          2 - minus
         */
        $me = $this->m_members->get($me_id);
        $currMoney = 0;
        /**
          at 1 - da_gold_balance
          at 2 - da_gold_reserved
          at 3 - da_silver_balance
          at 4 - da_silver_reserved
          at 5 - da_point_balance
         */
        $col_bal = '';
        switch ($at_id) {
            case 1:
                $currMoney = $me[0]->da_gold_balance;
                $col_bal = 'da_gold_balance';
                break;
            case 2:
                $currMoney = $me[0]->da_gold_reserved;
                $col_bal = 'da_gold_reserved';
                break;
            case 3:
                $currMoney = $me[0]->da_silver_balance;
                $col_bal = 'da_silver_balance';
                break;
            case 4:
                $currMoney = $me[0]->da_silver_reserved;
                $col_bal = 'da_silver_reserved';
                break;
            case 5:
                $currMoney = $me[0]->da_point_balance;
                $col_bal = 'da_point_balance';
                break;
            default:
                $currMoney = $me[0]->da_gold_balance;
                $col_bal = 'da_gold_balance';
                break;
        }

        return $currMoney;
    }

    public function reports($output = 'dashboard', $menu1 = '11') {
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            $data = array();
            switch ($menu1) {
                case '61':
                    $title = 'Summary Report';
                    // 1. total pawn.
                    $data['pawn'] = $this->m_pawn->getAll_total(1);
                    // 2. total pawn weight.
                    $data['pawn_weight'] = $this->m_pawn->getAll_total(2);
                    // 3. total pawn fee.
                    $data['pawn_fee'] = $this->m_pawn->getAll_total(3);
                    // 4. total withdrawal. 
                    $data['withdrawal'] = $this->m_transaction->getAll_withdrawals(1);
                    // 5. total withdrawal fee.
                    $data['withdrawal_fee'] = $this->m_transaction->getAll_withdrawals(2);
                    // 6. total souq. 
                    $data['souq'] = $this->m_souq->getAll_total(1);
                    // 7. total souq weight.
                    $data['souq_weight'] = $this->m_souq->getAll_total(2);
                    // 8. total souq in each vault.
                    // 9. total souq in courier.
                    // 10. total transaction.
                    break;
            }
            $this->_papar($data, 'reports/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function members($output = 'dashboard', $menu1 = '11') {
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                case '51':
                    $title = 'Members Management';
                    break;
                case '52':
                    $title = 'Add Members';
                    break;
            }
            $this->_papar('', 'members/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function overview($output = 'dashboard', $menu1 = '11') {
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            $data = array();
            switch ($menu1) {
                case '41':
                    $data['members']['members_active'] = sizeof($this->m_members->getAll(3, 1));
                    $data['members']['members_suspended'] = sizeof($this->m_members->getAll(3, 2));
                    $data['members']['members_closed'] = sizeof($this->m_members->getAll(3, 3));
                    $data['transactions']['all'] = sizeof($this->m_transaction->getAll(-1, 'ASC', $this->my_func->getLimitRows(), -1));
                    $data['transactions']['completed'] = sizeof($this->m_transaction->getAll(-1, 'ASC', $this->my_func->getLimitRows(), 1));
                    $data['transactions']['pending'] = sizeof($this->m_transaction->getAll(-1, 'ASC', $this->my_func->getLimitRows(), 2));
                    $data['transactions']['cancelled'] = sizeof($this->m_transaction->getAll(-1, 'ASC', $this->my_func->getLimitRows(), 3));
                    $title = 'General Overview';
                    break;
                case '42':
                    $title = 'Pawn Due Date';
                    break;
            }
            $this->_papar($data, 'overview/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function management($output = 'dashboard', $menu1 = '11') {
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            $crud = new grocery_CRUD();
            $crud->set_theme('twitter-bootstrap');
            $crud->unset_export();
            $crud->unset_print();

            switch ($menu1) {

                case '818':
                    $title = 'Dinarpal Admin Account';
                    $crud->set_table('dinarpal_admin_account');
                    $crud->unset_delete();
                    $crud->unset_add();
                    $crud->display_as('daa_account_dinar', 'Admin Dinar Balance');
                    $crud->display_as('daa_account_dinar_gram', 'Admin Gold Reserved');
                    $crud->display_as('daa_account_dirham', 'Admin Dirham Balance');
                    $crud->display_as('daa_account_dirham_gram', 'Admin Silver Reserved');
                    $data = $crud->render();
                    break;

                case '81':
                    $title = 'Amil';
                    $crud->set_table('amil');
                    $crud->fields('am_name', 'am_phone', 'am_email', 'am_address', 'am_whatsapp', 'am_status');
                    $crud->columns('am_name', 'am_phone', 'am_email', 'am_address', 'am_whatsapp', 'am_status');
                    $crud->display_as('am_name', 'Name')
                            ->display_as('am_phone', 'Phone')
                            ->display_as('am_email', 'Email')
                            ->display_as('am_address', 'Address')
                            ->display_as('am_whatsapp', 'Whatsapp')
                            ->display_as('am_status', 'Status');
                    $crud->set_subject('Amil');
                    $crud->set_field_upload('am_image', 'assets/uploads/profile');
                    $crud->required_fields('am_name', 'am_phone', 'am_email', 'am_address', 'am_whatsapp', 'am_status');
                    $crud->field_type('am_status', 'dropdown', array('1' => 'Active', '2' => 'Inactive'));
                    $data = $crud->render();
                    break;


                case '82':
                    $title = 'Banks Category';
                    $crud->set_table('banks_category');
                    $crud->fields('bc_name', 'bc_fee');
                    $crud->columns('bc_name', 'bc_fee');
                    $crud->display_as('bc_name', 'Bank Category Name')
                            ->display_as('bc_fee', 'Fee');
                    $crud->required_fields('bc_name', 'bc_fee');
                    $data = $crud->render();
                    break;

                case '83':
                    $title = 'Banks Account Type';
                    $crud->set_table('ba_account_type');
                    $crud->fields('bat_name');
                    $crud->columns('bat_name');
                    $crud->display_as('bat_name', 'Bank Account Type Name');
                    $crud->required_fields('bat_name');
                    $data = $crud->render();
                    break;

                case '84':
                    $title = 'Brands';
                    $crud->set_table('brands');
                    $crud->fields('br_code', 'br_name');
                    $crud->columns('br_code', 'br_name');
                    $crud->display_as('br_code', 'Code');
                    $crud->display_as('br_name', 'Name');
                    $crud->required_fields('br_code', 'br_name');
                    $data = $crud->render();
                    break;

                case '85':
                    $title = 'Cards Type';
                    $crud->set_table('cards_type');
                    $crud->fields('ct_name');
                    $crud->columns('ct_name');
                    $crud->display_as('ct_name', 'Name');
                    $crud->required_fields('ct_name');
                    $data = $crud->render();
                    break;

                case '86':
                    $title = 'Countries';
                    $crud->set_table('countries');
                    $crud->fields('co_name');
                    $crud->columns('co_name');
                    $crud->display_as('co_name', 'Name');
                    $crud->required_fields('co_name');
                    $data = $crud->render();
                    break;

                case '87':
                    $title = 'Config';
                    $crud->set_table('dinarpal_config');
                    $crud->fields('dc_currency_type');
                    $crud->columns('dc_currency_type');
                    $crud->display_as('dc_currency_type', 'Currency Type');
                    $crud->required_fields('dc_currency_type');
                    $data = $crud->render();
                    break;

                case '88':
                    $title = 'Fee Type';
                    $crud->set_table('fee_type');
                    $crud->fields('ft_name', 'ft_price');
                    $crud->columns('ft_name', 'ft_price');
                    $crud->display_as('ft_name', 'Name');
                    $crud->display_as('ft_price', 'Price');
                    $crud->required_fields('ft_name', 'ft_price');
                    $data = $crud->render();
                    break;

                case '89':
                    $title = 'Item Type';
                    $crud->set_table('itc_type');
                    //$crud->set_url_field('itct_image');
                    //$crud->set_image_path(base_url().'assets/uploads/items/');
                    $crud->set_field_upload('itct_image', 'assets/uploads/items/');
                    $crud->display_as('itct_name', 'Name');
                    $crud->display_as('itct_price_rate', 'Price');
                    $crud->required_fields('itct_name', 'itct_price_rate');
                    $crud->callback_after_upload(array($this, 'callback_after_upload1'));
                    $data = $crud->render();
                    break;

                case '811':
                    $title = 'Courier';
                    $crud->set_table('item_courier');
                    $crud->fields('ic_name');
                    $crud->columns('ic_name');
                    $crud->display_as('ic_name', 'Name');
                    $crud->required_fields('ic_name');
                    $data = $crud->render();
                    break;

                case '812':
                    $title = 'Status Courier';
                    $crud->set_table('item_status_courier');
                    $crud->fields('isc_name');
                    $crud->columns('isc_name');
                    $crud->display_as('isc_name', 'Name');
                    $crud->required_fields('isc_name');
                    $data = $crud->render();
                    break;

                case '813':
                    $title = 'Payment Methods';
                    $crud->set_table('payment_method');
                    $crud->fields('pm_name');
                    $crud->columns('pm_name');
                    $crud->display_as('pm_name', 'Name');
                    $crud->required_fields('isc_name');
                    $data = $crud->render();
                    break;

                case '814':
                    $title = 'Purity';
                    $crud->set_table('purity');
                    $crud->fields('pu_desc');
                    $crud->columns('pu_desc');
                    $crud->display_as('pu_desc', 'Description');
                    $crud->required_fields('pu_desc');
                    $data = $crud->render();
                    break;

                case '815':
                    $title = 'Storage Location';
                    $crud->set_table('storage_location');
                    $crud->fields('sl_name');
                    $crud->columns('sl_name');
                    $crud->display_as('sl_name', 'Name');
                    $crud->required_fields('sl_name');
                    $data = $crud->render();
                    break;

                case '816':
                    $title = 'Transaction Type';
                    $crud->set_table('transaction_type');
                    $crud->fields('tt_desc');
                    $crud->columns('tt_desc');
                    $crud->display_as('tt_desc', 'Description');
                    $crud->required_fields('tt_desc');
                    $data = $crud->render();
                    break;

                case '817':
                    $title = 'Transaction Status';
                    $crud->set_table('transaction_status');
                    $crud->fields('ts_desc');
                    $crud->columns('ts_desc');
                    $crud->display_as('ts_desc', 'Description');
                    $crud->required_fields('ts_desc');
                    $data = $crud->render();
                    break;
            }

            $this->_papartable($data, 'administration/', $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    function callback_after_upload1($uploader_response, $field_info, $files_to_upload) {
        $this->load->library('image_moo');

        //Is only one file uploaded so it ok to use it with $uploader_response[0].
        $file_uploaded = $field_info->upload_path . '/' . $uploader_response[0]->name;

        $this->image_moo->load($file_uploaded)
                ->resize(150, 150)
                ->save($file_uploaded, true);

        return true;
    }

    function callback_after_upload2($uploader_response, $field_info, $files_to_upload) {
        $this->load->library('image_moo');

        //Is only one file uploaded so it ok to use it with $uploader_response[0].
        $file_uploaded = $field_info->upload_path . '/' . $uploader_response[0]->name;

        $this->image_moo->load($file_uploaded)
                ->resize(400, 500)
                ->save($file_uploaded, true);

        return true;
    }

    public function getAjaxItemType() {
        $it_id = $this->input->post('it_id');

        $row = $this->input->post('row');
        $data['item_type'] = $this->m_item_type->get($it_id);
        $data['item_type_child'] = $this->m_item_type_child->getAll_byParent($it_id);
        $data['row'] = $row;
        echo $this->load->view($this->parent_page . '/pawnAndRegister/ajax/ajaxItemType', $data, true);
    }

    public function getAjaxItemChildType() {
        $this->load->model('m_item_type_child_type');
        $itc_id = $this->input->post('itc_id');

        $data['row'] = $this->input->post('row');
        $data['item_child_type'] = $this->m_item_type_child_type->getAll_byItemChildType($itc_id);
        echo $this->load->view($this->parent_page . '/pawnAndRegister/ajax/ajaxItemTypeChild', $data, true);
    }

    public function ajaxSaveTransactionSession() {
        print_r($this->input->post('pu1'));
    }

    public function pawnAndRegister($output = 'dashboard', $menu1 = '11') {
        $sess = $this->session->all_userdata();
        $me_id = $sess['me_id'];
        $data['dinarpal_account'] = $this->m_dinarpal_account->get_member($me_id);

        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                case '21':
                    $title = 'Calculator';

                    //destroy session if exist
                    //destory existing transaction session
                    if ($this->session->userdata('assigned_user')) {
                        $this->session->unset_userdata('assigned_user');
                    } elseif ($this->session->userdata('registered_user')) {
                        $this->session->unset_userdata('registered_user');
                    }

                    if ($this->session->userdata('store_transaction'))
                        $this->session->unset_userdata('store_transaction');

                    if ($this->session->userdata('me_initialize_value'))
                        $this->session->unset_userdata('me_initialize_value');

                    if ($this->session->userdata('am_id'))
                        $this->session->unset_userdata('am_id');

                    if ($this->session->userdata('pa_id'))
                        $this->session->unset_userdata('pa_id');

                    $data['item_type'] = $this->m_item_type->getAll();
                    $data['purity'] = $this->m_purity->getAll();
                    break;
                case '22':
                    $title = 'Pawn';

                    $da_gold_rahnu_gram = array();
                    $da_gold_rahnu_money = array();

                    $da_silver_rahnu_gram = array();
                    $da_silver_rahnu_money = array();

                    //get the data
                    $store_transaction = array();
                    for ($i = 1; $i <= 5; $i++) {
                        $store_transaction[$i]['it' . $i] = $this->my_func->getItemTypeName($this->input->post('it' . $i));
                        $store_transaction[$i]['itc' . $i] = $this->my_func->getItemTypeChildName($this->input->post('itc' . $i));
                        $store_transaction[$i]['itct' . $i] = $this->my_func->getItemItctName($this->input->post('itct' . $i));

                        $store_transaction[$i]['it_id' . $i] = $this->input->post('it' . $i);
                        $store_transaction[$i]['itc_id' . $i] = $this->input->post('itc' . $i);
                        $store_transaction[$i]['itct_id' . $i] = $this->input->post('itct' . $i);


                        $store_transaction[$i]['q' . $i] = $this->input->post('q' . $i);
                        $store_transaction[$i]['pu' . $i] = $this->input->post('pu' . $i);
                        $store_transaction[$i]['weight_' . $i] = $this->input->post('weight_' . $i);
                        $store_transaction[$i]['price_' . $i] = $this->input->post('price_' . $i);
                        $store_transaction[$i]['nilai_' . $i] = $this->input->post('nilai_' . $i);

                        if ($store_transaction[$i]['it' . $i] == "Gold") {
                            $da_gold_rahnu_gram[] = $store_transaction[$i]['weight_' . $i];
                            $da_gold_rahnu_money[] = $store_transaction[$i]['nilai_' . $i];
                        } elseif ($store_transaction[$i]['it' . $i] == "Silver") {
                            $da_silver_rahnu_gram[] = $store_transaction[$i]['weight_' . $i];
                            $da_silver_rahnu_money[] = $store_transaction[$i]['nilai_' . $i];
                        }
                    }

                    $total_gold_rahnu_gram = array_sum($da_gold_rahnu_gram);
                    $total_gold_rahnu_money = array_sum($da_gold_rahnu_money);

                    $total_silver_rahnu_gram = array_sum($da_silver_rahnu_gram);
                    $total_silver_rahnu_money = array_sum($da_silver_rahnu_money);

                    $store_transaction['total_gold_rahnu_gram'] = $total_gold_rahnu_gram;
                    $store_transaction['total_gold_rahnu_money'] = $total_gold_rahnu_money;

                    $store_transaction['total_silver_rahnu_gram'] = $total_silver_rahnu_gram;
                    $store_transaction['total_silver_rahnu_money'] = $total_silver_rahnu_money;

                    $store_transaction['totaPrice_1'] = $this->input->post('totaPrice_1');
                    $store_transaction['col_rate'] = $this->input->post('col_rate');
                    $store_transaction['col_nilai_1'] = $this->input->post('col_nilai_1');
                    $store_transaction['safe_keeping_fee_1'] = $this->input->post('safe_keeping_fee_1');
                    $store_transaction['keeping_period'] = $this->input->post('keeping_period');
                    $store_transaction['keeping_period_fee_1'] = $this->input->post('keeping_period_fee_1');

                    //save the session
                    if (!empty($store_transaction) AND $store_transaction['totaPrice_1'] != 0) {
                        $this->session->set_userdata('store_transaction', $store_transaction);
                    } else {

                        $store_transaction = $this->session->userdata('store_transaction');
                        if (!empty($store_transaction))
                            $this->session->set_userdata('store_transaction', $store_transaction);
                    }

                    $data['store_transaction'] = $store_transaction;
                    break;

                case '23':
                    $title = 'Register Account';

                    $start_period = $this->input->post('start_period');
                    $end_period = $this->input->post('end_period');


                    $store_transaction = $this->session->userdata('store_transaction');

                    if (!empty($store_transaction)) {
                        if ($start_period != null AND $end_period != null) {
                            $store_transaction['start_period'] = $start_period;
                            $store_transaction['end_period'] = $end_period;
                            $this->session->set_userdata('store_transaction', $store_transaction);
                        }
                    }

                    $this->load->model('m_account_type');
                    $data['account_types'] = $this->m_account_type->getAll();

                    break;
                case '24':
                    $title = "Confirmation";

                    if ($this->session->flashdata('sucess'))
                        $this->session->keep_flashdata('sucess');

                    $mode = $this->input->post('mode');

                    $data['amil'] = $this->m_amil->getAll();
                    $store_transaction = $this->session->userdata('store_transaction');

                    if ($mode == "assign") {
                        $store_transaction = $this->session->userdata('store_transaction');
                        $username = $this->input->post('username');
                        $isexist = $this->checkUsername($username);
                        $arrIsExist = $isexist[0];

                        //print_r($arrIsExist);

                        $me_id = $arrIsExist->me_id;
                        $account_type = $this->input->post('me_account_type');

                        if ($isexist != false) {
                            //save user info to session
                            $this->session->set_userdata('assigned_user', $arrIsExist);


                            $me_initialize_value = $this->input->post('me_initialize_value');

                            $user = $this->session->userdata('assigned_user');
                            $at_desc = $this->my_func->getAccountTypeName($account_type);
                            $account_type = "";

                            switch ($at_desc) {
                                case 'E-Dinar':
                                    $account_type = "da_gold_balance";
                                    break;
                                case 'E-Gold Reserved':
                                    $account_type = "da_gold_reserved";
                                    break;
                                case 'E-Dirham':
                                    $account_type = "da_silver_balance";
                                    break;

                                case 'E-Silver Reserved':
                                    $account_type = "da_silver_reserved";
                                    break;
                            }

                            $existing_money = 0;
                            $totaPrice_1 = $store_transaction['totaPrice_1'];
                            $updated_money = 0;

                            do {

                                //$existing_money=$this->m_dinarpal_account->getMoneyByMeId($me_id,$account_type);
                                $existing_money = $arrIsExist->$account_type;
                                if (isset($me_initialize_value)) {
                                    $updated_money = $existing_money + $me_initialize_value;

                                    /* $data_account=array(
                                      $account_type=>$updated_money
                                      );

                                      //store dinarpal_account
                                      $this->m_dinarpal_account->editByMeID($me_id, $data_account);
                                     */
                                    $existing_money = $updated_money;
                                    $arrIsExist->$account_type = $existing_money;
                                    $this->session->set_userdata($arrIsExist);
                                }

                                $updated_money = $existing_money - $totaPrice_1;

                                if ($updated_money > 0) {
                                    $arrIsExist->$account_type = $updated_money;
                                    $this->session->set_userdata($arrIsExist);
                                    /*
                                      $data_account=array(
                                      $account_type=>$updated_money
                                      );

                                      //store dinarpal_account
                                      $this->m_dinarpal_account->editByMeID($me_id, $data_account);
                                     */
                                } else {
                                    $this->session->set_flashdata('error', 'insuficient Balance, please enter your additonal money, minimum RM : ' . abs($updated_money));
                                    redirect(site_url('staff/pawnAndRegister/registerAccount/23'));
                                }
                            } while ($updated_money < 0);
                        } else {
                            $this->session->set_flashdata('error', 'Username not found');
                            redirect(site_url('staff/pawnAndRegister/registerAccount/23'));
                        }
                    } elseif ($mode == 'register') {
                        $me_username = $this->my_func->trim_username($this->input->post('me_firstname'));
                        $member = array(
                            'me_firstname' => $this->input->post('me_firstname'),
                            'me_lastname' => $this->input->post('me_lastname'),
                            'me_username' => $me_username,
                            'me_password' => $this->input->post('me_password'),
                            'me_address1' => $this->input->post('me_address'),
                            'me_phone_no' => $this->input->post('me_phone'),
                            'me_email' => $this->input->post('me_email'),
                            'me_description' => $this->input->post('me_description'),
                            'me_account_type' => $this->input->post('me_account_type'),
                            'me_register_date' => date('Y-m-d H:i:s'),
                            'me_account_type' => $this->input->post('me_account_type'),
                            'me_activation_status' => 1,
                            'me_magic_num' => md5($this->input->post('me_email')),
                            'me_unique_link' => md5($me_username),
                            'ml_id' => 3,
                            'me_image' => 'default-img.jpg'
                        );

                        $this->session->set_userdata('me_initialize_value', $this->input->post('me_initialize_value'));

                        $totaPrice_1 = $store_transaction['totaPrice_1'];

                        if ($this->input->post('me_initialize_value') < $totaPrice_1) {

                            $this->session->set_flatrshdata('error', 'insuficient Balance, please enter your additonal money, minimum RM : ' . abs($totaPrice_1));
                            redirect(site_url('staff/pawnAndRegister/registerAccount/23'));
                        }


                        $this->daftar_members($member);
                    } elseif ($mode == "confirmation") {
                        //save process
                        $am_id = $this->input->post('am_id');
                        $this->session->set_userdata('am_id', $am_id);

                        $error_status = array();
                        $store_transaction = $this->session->userdata('store_transaction');
                        // store user
                        $user = array();
                        if ($this->session->userdata('registered_user')) {

                            //process for new user

                            $user = $this->session->userdata('registered_user');
                            $me_id = $this->m_members->add($user);

                            $at_desc = $this->my_func->getAccountTypeName($user['me_account_type']);
                            $account_type = "";

                            switch ($at_desc) {
                                case 'E-Dinar':
                                    $account_type = "da_gold_balance";
                                    break;
                                case 'E-Gold Reserved':
                                    $account_type = "da_gold_reserved";
                                    break;
                                case 'E-Dirham':
                                    $account_type = "da_silver_balance";
                                    break;

                                case 'E-Silver Reserved':
                                    $account_type = "da_silver_reserved";
                                    break;
                            }


                            $me_initialize_value = $this->session->userdata('me_initialize_value');
                            $totaPrice_1 = $store_transaction['totaPrice_1'];
                            $updated_money = 0;
                            $da_id = 0;

                            do {

                                if (isset($me_initialize_value)) {
                                    $updated_money = $me_initialize_value - $totaPrice_1;
                                    if ($updated_money > 0) {

                                        $dinarpal_account = array(
                                            'me_id' => $me_id,
                                            $account_type => $updated_money
                                        );

                                        $da_id = $this->m_dinarpal_account->add($dinarpal_account);
                                    } else {
                                        $this->session->set_flashdata('error', 'insuficient Balance, please enter your additonal money, minimum RM : ' . abs($updated_money));
                                        redirect(site_url('staff/pawnAndRegister/registerAccount/23'));
                                    }
                                }
                            } while ($updated_money < 0);

                            //update the weight and nilai
                            //get existing weight and nilai and then add and update
                            if (!empty($da_id)) {
                                $ex_da_gold_rahnu_gram = $this->m_dinarpal_account->getByType($da_id, 'da_gold_rahnu_gram');
                                $ex_da_gold_rahnu_money = $this->m_dinarpal_account->getByType($da_id, 'da_gold_rahnu_money');

                                $ex_da_silver_rahnu_gram = $this->m_dinarpal_account->getByType($da_id, 'da_silver_rahnu_gram');
                                $ex_da_silver_rahnu_money = $this->m_dinarpal_account->getByType($da_id, 'da_silver_rahnu_money');

                                $new_da_gold_rahnu_gram = $ex_da_gold_rahnu_gram + $store_transaction['total_gold_rahnu_gram'];
                                $new_da_gold_rahnu_money = $ex_da_gold_rahnu_money + $store_transaction['total_gold_rahnu_money'];
                                $new_da_silver_rahnu_gram = $ex_da_silver_rahnu_gram + $store_transaction['total_silver_rahnu_gram'];
                                $new_da_silver_rahnu_money = $ex_da_silver_rahnu_money + $store_transaction['total_silver_rahnu_money'];

                                //update
                                $this->m_dinarpal_account->edit($da_id, array('da_gold_rahnu_gram' => $new_da_gold_rahnu_gram));
                                $this->m_dinarpal_account->edit($da_id, array('da_gold_rahnu_money' => $new_da_gold_rahnu_money));

                                $this->m_dinarpal_account->edit($da_id, array('da_silver_rahnu_gram' => $new_da_silver_rahnu_gram));
                                $this->m_dinarpal_account->edit($da_id, array('da_silver_rahnu_money' => $new_silver_rahnu_money));
                            }


                            if (empty($me_id))
                                $error_status[] = "cannot_create_user";

                            if (!is_null($me_id)) {
                                //store the pawn
                                $pawn = array();
                                $now = date('Y-m-d H:i:s');
                                $later = date('Y-m-d H:i:s', strtotime("+6 months", time()));

                                $pa_start_date = $now;
                                $pa_end_date = $later;


                                //$pa_start_date = $this->my_func->sql_time_to_datetime($now);
                                //$pa_end_date = $this->my_func->sql_time_to_datetime($later);

                                /* print_r($pa_start_date);
                                  echo "<br/>";
                                  print_r($pa_end_date);
                                  die();
                                 */

                                //get the grand weight for each row
                                //get store_transaction
                                $store_transaction = $this->session->userdata('store_transaction');
                                $grand_total = array();

                                foreach ($store_transaction as $key => $value) {
                                    if (is_numeric($key))
                                        $grand_total_weight[] = $this->my_func->getGrandTotalWeight($value['itct_id' . $key], $value['q' . $key]);
                                }

                                $pa_total_weight = array_sum($grand_total_weight);

                                $pawn = array(
                                    'me_id' => $me_id,
                                    'pa_start_date' => $pa_start_date,
                                    'pa_end_date' => $pa_end_date,
                                    'am_id' => $am_id,
                                    'pa_total_weight' => $pa_total_weight,
                                    'pa_grand_total' => $store_transaction['totaPrice_1'],
                                    'pa_rahnu_rate' => $store_transaction['col_rate'] / 100,
                                    'pa_safe_fee' => $store_transaction['safe_keeping_fee_1'],
                                    'pt_id' => 1
                                );

                                //store pawn to db
                                $pa_id = $this->m_pawn->add($pawn);

                                //save to pawn_child
                                if (!empty($pa_id)) {

                                    foreach ($store_transaction as $key => $value) {
                                        if (is_numeric($key)) {


                                            //store to pawn child
                                            $pawn_child = array(
                                                'pa_id' => $pa_id,
                                                'itct_id' => $value['itct_id' . $key],
                                                'pc_qty' => $value['q' . $key]
                                            );

                                            if (!empty($value['q' . $key]))
                                                $pc_id = $this->m_pawn_child->add($pawn_child);
                                        }
                                    }
                                }
                                else {
                                    $error_status[] = "cannot_save_pawn";
                                }
                            }
                        } elseif ($this->session->userdata('assigned_user')) {
                            $user = $this->session->userdata('assigned_user');

                            //update the dinarpal_accout
                            $me_id = $user->me_id;
                            $account_type = $user->me_account_type;

                            $at_desc = $this->my_func->getAccountTypeName($account_type);
                            $account_type = "";



                            switch ($at_desc) {
                                case 'E-Dinar':
                                    $account_type = "da_gold_balance";
                                    break;
                                case 'E-Gold Reserved':
                                    $account_type = "da_gold_reserved";
                                    break;
                                case 'E-Dirham':
                                    $account_type = "da_silver_balance";
                                    break;

                                case 'E-Silver Reserved':
                                    $account_type = "da_silver_reserved";
                                    break;
                            }

                            $updated_money = $user->$account_type;


                            $data_account = array(
                                $account_type => $updated_money
                            );

                            //store dinarpal_account
                            $this->m_dinarpal_account->editByMeID($me_id, $data_account);


                            //get existing weight and nilai and then add and update
                            if (!empty($me_id)) {
                                $ex_da_gold_rahnu_gram = $this->m_dinarpal_account->getMoneyByMeId($me_id, 'da_gold_rahnu_gram');
                                $ex_da_gold_rahnu_money = $this->m_dinarpal_account->getMoneyByMeId($me_id, 'da_gold_rahnu_money');

                                $ex_da_silver_rahnu_gram = $this->m_dinarpal_account->getMoneyByMeId($me_id, 'da_silver_rahnu_gram');
                                $ex_da_silver_rahnu_money = $this->m_dinarpal_account->getMoneyByMeId($me_id, 'da_silver_rahnu_money');

                                $new_da_gold_rahnu_gram = $ex_da_gold_rahnu_gram + $store_transaction['total_gold_rahnu_gram'];
                                $new_da_gold_rahnu_money = $ex_da_gold_rahnu_money + $store_transaction['total_gold_rahnu_money'];
                                $new_da_silver_rahnu_gram = $ex_da_silver_rahnu_gram + $store_transaction['total_silver_rahnu_gram'];
                                $new_da_silver_rahnu_money = $ex_da_silver_rahnu_money + $store_transaction['total_silver_rahnu_money'];

                                //update
                                $this->m_dinarpal_account->editByMeID($me_id, array('da_gold_rahnu_gram' => $new_da_gold_rahnu_gram));
                                $this->m_dinarpal_account->editByMeID($me_id, array('da_gold_rahnu_money' => $new_da_gold_rahnu_money));

                                $this->m_dinarpal_account->editByMeID($me_id, array('da_silver_rahnu_gram' => $new_da_silver_rahnu_gram));
                                $this->m_dinarpal_account->editByMeID($me_id, array('da_silver_rahnu_money' => $new_silver_rahnu_money));
                            }


                            //store pawn and pawn child
                            //store the pawn
                            $pawn = array();
                            $now = date('Y-m-d H:i:s');
                            $later = date('Y-m-d H:i:s', strtotime("+6 months", time()));

                            $pa_start_date = $now;
                            $pa_end_date = $later;

                            //get the grand weight for each row
                            //get store_transaction
                            $store_transaction = $this->session->userdata('store_transaction');
                            $grand_total = array();

                            foreach ($store_transaction as $key => $value) {
                                if (is_numeric($key))
                                    $grand_total_weight[] = $this->my_func->getGrandTotalWeight($value['itct_id' . $key], $value['q' . $key]);
                            }

                            $pa_total_weight = array_sum($grand_total_weight);

                            $pawn = array(
                                'me_id' => $me_id,
                                'pa_start_date' => $pa_start_date,
                                'pa_end_date' => $pa_end_date,
                                'am_id' => $am_id,
                                'pa_total_weight' => $pa_total_weight,
                                'pa_grand_total' => $store_transaction['totaPrice_1'],
                                'pa_rahnu_rate' => $store_transaction['col_rate'] / 100,
                                'pa_safe_fee' => $store_transaction['safe_keeping_fee_1'],
                                'pt_id' => 1
                            );

                            //store pawn to db
                            $pa_id = $this->m_pawn->add($pawn);

                            //save to pawn_child
                            if (!empty($pa_id)) {
                                $this->session->set_userdata('pa_id', $pa_id);

                                foreach ($store_transaction as $key => $value) {
                                    if (is_numeric($key)) {


                                        //store to pawn child
                                        $pawn_child = array(
                                            'pa_id' => $pa_id,
                                            'itct_id' => $value['itct_id' . $key],
                                            'pc_qty' => $value['q' . $key]
                                        );

                                        if (!empty($value['q' . $key]))
                                            $pc_id = $this->m_pawn_child->add($pawn_child);
                                    }
                                }
                            }
                            else {
                                $error_status[] = "cannot_save_pawn";
                            }
                        }



                        //sucess
                        if (empty($error_status)) {

                            $this->session->set_flashdata('success', 'Alhamdulillah, your transaction is sucessful');
                        } else {
                            $this->session->set_flashdata('fail', 'something went wrong');
                        }

                        //show receipt
                        redirect(site_url('staff/pawnAndRegister/receipt/241'));
                    }

                    break;

                case '241':
                    $title = "Receipt";

                    if ($this->session->flashdata('success'))
                        $this->session->keep_flashdata('success');
                    else
                        $this->session->keep_flashdata('fail');

                    break;

                case '25':
                    $title = 'Inventory Management';
                    break;
            }
            $this->_papar($data, 'pawnAndRegister/' . $output, $menu1, $title);
        }
        else {
            $this->_papar();
        }
    }

    public function getAjaxGetMember() {
        $username = $this->input->post('username');
        $process = $this->input->post('num');
        switch ($process) {
            case '2':
                $member = $this->m_members->getByIC($username);
                break;
            case '3':
                $member = $this->m_members->searchByName($username);
                break;
            case '4':
                $member = $this->m_members->getByEmail($username);
                break;

            default:
                $member = $this->m_members->getByName($username);
                break;
        }

        if (isset($member[0])) {
            echo '<span class="label label-success">Found &radic;</span>';
            if ($process == 3) {
                echo "<pre>";
                print_r($member);
                echo "</pre>";
            }
        } else if ($username == '') {
            echo '';
        } else {
            echo '<span class="label label-danger">Not Found X</span>';
        }
    }

    public function getAjaxGetMeID() {
        $username = $this->input->post('username');
        $process = $this->input->post('num');
        switch ($process) {
            case '2':
                $member = $this->m_members->getByIC($username);
                break;
            case '3':
                //nie by name
                //$member = $this->m_members->searchByName($username);
                break;
            case '4':
                $member = $this->m_members->getByEmail($username);
                break;

            default:
                $member = $this->m_members->getByName($username);
                break;
        }
        if (isset($member[0])) {
            echo $member[0]->me_id;
        } else {
            echo 0;
        }
    }

    public function getAjaxMemberTable() {
        $userId = $this->input->post("userId");
        $member = $this->m_members->get($userId);
        if (sizeof($member) > 1) {
            echo "Multi same userId Error Detect";
        } else {
            if (sizeof($member) == 0) {
                echo "";
            } else {
                //echo "<pre>";
                //print_r($member[0]);
                $data['name'] = $member[0]->me_firstname . " " . $member[0]->me_lastname;
                $data['username'] = $member[0]->me_username;
                $data['ic'] = $member[0]->me_government_issue_id;
                $data['image'] = $member[0]->me_image;
                $data['email'] = $member[0]->me_email;
                //print_r($data);
                //echo "</pre>";
                echo $this->load->view('staff/dinarDirhamOperation/ajax/getAjaxMemberTable', $data, true);
            }
        }
    }

    public function daftar_members($member = array()) {
        $pwd_status = $this->my_func->isValidPassword($member['me_password']);

        if (strpos($pwd_status, 'strong') === false) {
            $this->session->set_flashdata('error', $pwd_status);
            redirect(site_url('staff/pawnAndRegister/registerAccount/23'));
        }

        //$flag=$this->simpleloginsecure->create_members($member);
        $flag = $this->session->set_userdata('registered_user', $member);
        (($this->session->userdata('registered_user'))) ? $flag = true : $flag = false;

        if ($flag) {
            $this->session->set_flashdata('sucess', 'Registration Success .. Check your email for account activation after confirmation page.');
        } else {
            $this->session->set_flashdata('error', 'Registration Failed!');
        }

        redirect(site_url('staff/pawnAndRegister/confirmation/24'));
    }

    public function getAmil($am_id = null) {
        $am_id = $this->input->post('am_id');
        $am = $this->m_amil->get($am_id);
        echo $am[0]->am_name;
    }

    public function resitPurchase2() {
        $this->load->view($this->parent_page . '/header');
        $this->load->view($this->parent_page . '/pawnAndRegister/receipt2');
        $this->load->view($this->parent_page . '/footer');
    }

    public function checkUsername($username = "") {
        $result = $this->m_members->getByName($username);

        if (!empty($result)) {

            if ($result[0]->me_username == $username)
                return $result;
            else
                return false;
        }
        else {
            return false;
        }
    }

    public function auctionManagement($output = 'dashboard', $menu1 = '11', $title = 'Dashboard') {
        if ($output != 'dashboard') {
            $title = 'Dashboard';
            switch ($menu1) {
                case '31':
                    $title = 'Auction';
                    break;
            }
            $this->_papar('', 'auctionManagement/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function getUserAccount($username = "") {
        $username = $this->input->post('me_username');
        if (!empty($username)) {
//			$result=$this->m_dinarpal_account->getAccount($username);
            $result = $this->m_members->getByName($username, 3, 'NU');

            if (!empty($result)) {
                $rresult = $result[0];
                echo '<table class="table table-striped">
    <thead>
      <tr>
        <td><strong>E-Dinar Balance</strong></td>
        <td><strong>E-Gold Reserved</strong></td>
		<td><strong>E-Dirham Balance</strong></td>
        <td><strong>E-Dirham Reserved</strong></td>
		
      </tr>
    </thead>
   	<tbody>
   	<tr>

   	<td>' . $rresult->da_gold_balance . '</td>
   	<td>' . $rresult->da_gold_reserved . '</td>
   	<td>' . $rresult->da_silver_balance . '</td>
   	<td>' . $rresult->da_silver_reserved . '</td>
	
   <td>-</td>
   <td>-</td>
   <td>-</td>
   <td>-</td>
   	</tr>
   	</tbody>
   	</table>';
            } else {
                //echo "not found";
            }
        }
    }

    public function logout() {
        
        $dinarpal_cookie = array(
            'name'   => 'vpurchase',
            'value'  => '',
            'expire' => '0'
        );
        delete_cookie($dinarpal_cookie);
        
        $sess = $this->session->all_userdata();
        $me_id = $sess['me_id'];
        $data_me = array(
            'mos_id' => 1
        );
        $this->m_members->edit($me_id, $data_me);

        $this->simpleloginsecure->logout();
        redirect(site_url());
    }

}

/* End of file welcome.php */
/* Location: ./application/controllers/bootigniter.php */