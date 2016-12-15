<?php if ( ! defined('BASEPATH')) die();
class Member extends MY_Controller {

	var $parent_page = "member";
        var $file_users = "./assets/uploads/chatrooms/users.txt";
        var $delimeter = "\\";

 	function __construct()
        {
                parent::__construct();
                
 	}
        
        public function document()
        {
            $data['a'] = 'haha';
            $data['b'] = 'hehe';
            $this->_viewpage('document/document', $data);
        }
        
        public function share() {
        $data['a'] = 'haha';
        $data['b'] = 'hehe';
        $this->_viewpage('share/share', $data);
    }

    function _viewpage($page = 'profile', $data = '') {
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
    }

    public function member_menu() 
     {
        $this->load->view("member/header");
        $this->load->view("member/nav");
        $this->load->view("member/newMenu/profile", true);
        $this->load->view("member/footer");
    }
    
    public function member_profile() {
        $this->load->view("member/header");
        $this->load->view("member/nav");
        $this->load->view("member/profile/myprofile", true);
        $this->load->view("member/footer");
    }
    
    public function member_payment() {
        $this->load->view("member/header");
        $this->load->view("member/nav");
        $this->load->view("member/payment/payment", true);
        $this->load->view("member/footer");
    }
    
    public function member_share() {
        $this->load->view("member/header");
        $this->load->view("member/nav");
        $this->load->view("member/share/share", true);
        $this->load->view("member/footer");
    }
    
    public function member_document() {
        $this->load->view("member/header");
        $this->load->view("member/nav");
        $this->load->view("member/document/document", true);
        $this->load->view("member/footer");
    }

    public function _papar($data='', $output='dashboard', $menu1='11', $title='E-Favorite') 
	{		
		$menux['menu1'] = $menu1;
		$menux['title1'] = $title;
                
                $sess = $this->session->all_userdata();
                $menux['me_type'] = $sess['me_type'];
                $me_id = $sess['me_id'];
                $menux['me_id'] = $me_id;
                $me_temp = $this->m_members->get($me_id);
                $menux['me_temp'] = $me_temp;
                $ranks = $this->my_func->getMembersRank($me_id);
                $menux['ranks'] = $ranks;
                $menux['allItemLifeSpan'] = $this->my_func->getAllItemLifeSpan($me_id);
		
		$this->load->view($this->parent_page.'/header');
		$this->load->view($this->parent_page.'/nav', $menux);
		
		// check for the flashdata
		if ($this->session->flashdata('error') != "") 
			$data['error'] = $this->session->flashdata('error');
		if ($this->session->flashdata('sucess') != "") 
			$data['sucess'] = $this->session->flashdata('sucess');
		if ($this->session->flashdata('info') != "") 
			$data['info'] = $this->session->flashdata('info');
		
		$this->load->view($this->parent_page.'/menu', $menux);
		$this->load->view($this->parent_page.'/nav', $menux);

                if (!isset($data->js_files) && isset($data['construction_dinarpal']) && !empty($data['construction_dinarpal'])) {
//                    $this->load->view('v_construction');
                    $this->load->view('test2.html');
                } else {
                    $this->load->view($this->parent_page.'/'.$output, $data);
                }
                
		$this->load->view($this->parent_page.'/footer');
	}
        
        public function newMenu($output = 'dashboard', $menu1 = '11') {
        $sess = $this->session->all_userdata();
        $me_id = $sess['me_id'];
        $me_type = $sess['me_type'];
        $data['me_id'] = $me_id;
        $data['me_type'] = $me_type;

        if ($output != 'dashboard') {

            $title = 'E-Favorite';
            switch ($menu1) {
                case '01': $title = 'Rahnu';
                    break;
                case '02': $title = 'Send Payment';
                    break;
                case '03': $title = 'Keep';
                    break;
                case '04': $title = 'Sell-Buy';
                    break;
                case '05': $title = 'Bid';
                    break;
                case '07':
                    $title = 'Merchant';

                    break;
                case '08': $title = 'Profile';
                    break;
                case '09': $title = '9';
                    break;
                case '10': $title = 'Deposit';
                    break;
                case '11': $title = 'Withdrawal';
                    break;
                case '12': $title = 'Redeem';
                    break;
                case '13':
                    $title = 'Regular Transaction';
                    break;
                case '14': $title = 'Amanah Deal';
                    break;
                case '15': $title = 'Gold & Silver Souq';
                    break;
                case '16':
                    $title = 'Ittihad';
                    break;
                case '17':
                    $title = 'Ads Campaign';
                    break;
            }

            $this->_papar($data, 'newMenu/' . $output, $menu1, $title);
        } else {
            $this->_papar();
        }
    }

    public function haha()
        {
//            $this->_papar('', 'resit/BTF');
            $this->load->view('member/resit/BTF');
        }

	public function index()
	{
//            echo "haha nur"; die();
		//$this->_papar(); 
		redirect(site_url('member/dinarDirham/overview/51'));
	}
	
	public function resitEmas($resit) 
	{
		$this->load->view($this->parent_page.'/header');
		$this->load->view($this->parent_page.'/purchaseAndPawn/resitEmas');
		$this->load->view($this->parent_page.'/footer');
	}
	
	public function viewAmil($amil_id_enc) 
	{
		$amil_all = $this->m_members->getAll_Amil();
		$amil_id = 0;
		$data['a'] = array();
		if ($amil_all) {
			foreach ($amil_all as $aa) {
				$data['a'][] = '|' . $amil_id_enc . '|' . md5($aa->me_id) . '|' . $aa->me_id . '|';
				if ($amil_id_enc == md5($aa->me_id)) {
					$amil_id = $aa->me_id;
				}
			}
		}
		$data['amil'] = $this->m_members->getAll_Amil($amil_id);
		$this->load->view($this->parent_page.'/header');
		
		$this->load->view($this->parent_page.'/purchaseAndPawn/viewAmil', $data);
		$this->load->view($this->parent_page.'/footer');
	}
        
        public function viewResit($id=-1, $type='deposit') 
	{
                $data = array();
                $page = "depositPrint";
                if ($type == 'deposit') {
                    $page = "dinarDirham/depositPrint";
                } else if ($type == 'pawncourier') {
                    $page = "purchaseAndPawn/post2Resit";
                }
		$this->load->view($this->parent_page.'/header');
		$this->load->view($this->parent_page.'/'.$page, $data);
		$this->load->view($this->parent_page.'/footer');
	}
        
        public function viewResit2($page='')
        {
            $this->load->view($this->parent_page.'/header');
            $this->load->view($this->parent_page.'/resit/'.$page);
            $this->load->view($this->parent_page.'/footer');
        }
	
	public function resitPurchase2()
	{
                $me_id = $this->session->userdata('me_id');
                $me = $this->m_members->get($me_id);
                $data['me'] = $me;
		$this->load->view($this->parent_page.'/header');
		$this->load->view($this->parent_page.'/purchaseAndPawn/resitPurchase2', $data);
		$this->load->view($this->parent_page.'/footer');
	}
	
	/*public function adscampaign($output='dashboard', $menu1='11')
	{
		if ($output != 'dashboard')
		{
			$title = 'E-Favorite';
			switch($menu1) {
				case '71':
				case '74':
					$title = 'Order &amp; Pay';
					break;
				case '72':
					$title = 'Offer &amp; Get Paid';
					break;
				case '73':
					$title = 'Cash Discount';
					break;
			}
			$this->_papar('adscampaign/'.$output, $menu1, $title);
		}
		else
		{
			$this->_papar(); 
		}
	}*/
	
	public function getAjaxGetMember()
	{
		$username = $this->input->post('username');
		$member = $this->m_members->getByName($username);
		if (isset($member[0])) {
			echo '<span class="label label-success">Correct &radic;</span>';
		} else if ($username == '') {
			echo '';
		} else {
			echo '<span class="label label-danger">Not Found X</span>';
		}
	}
	
	public function getAjaxGetMeID()
	{
		$username = $this->input->post('username');
		$member = $this->m_members->getByName($username);
		if (isset( $member[0] )) {
			echo $member[0]->me_id;
		} else {
			echo 0;
		}
	}
	
	function debit_kredit($me_id, $amount, $at_id, $status)
	{
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
                at 6 - da_gold_rahnu_gram
                at 7 - da_gold_rahnu_money
                at 8 - da_silver_rahnu_gram
                at 9 - da_silver_rahnu_money
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
			case 6:
				$currMoney = $me[0]->da_gold_rahnu_gram;
				$col_bal = 'da_gold_rahnu_gram';
				break;
			case 7:
				$currMoney = $me[0]->da_gold_rahnu_money;
				$col_bal = 'da_gold_rahnu_money';
				break;
			case 8:
				$currMoney = $me[0]->da_silver_rahnu_gram;
				$col_bal = 'da_silver_rahnu_gram';
				break;
			case 9:
				$currMoney = $me[0]->da_silver_rahnu_money;
				$col_bal = 'da_silver_rahnu_money';
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
        
        function debit_balance($me_id, $amount, $at_id, $status)
	{
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
                at 6 - da_gold_rahnu_gram
                at 7 - da_gold_rahnu_money
                at 8 - da_silver_rahnu_gram
                at 9 - da_silver_rahnu_money
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
			case 6:
				$currMoney = $me[0]->da_gold_rahnu_gram;
				$col_bal = 'da_gold_rahnu_gram';
				break;
			case 7:
				$currMoney = $me[0]->da_gold_rahnu_money;
				$col_bal = 'da_gold_rahnu_money';
				break;
			case 8:
				$currMoney = $me[0]->da_silver_rahnu_gram;
				$col_bal = 'da_silver_rahnu_gram';
				break;
			case 9:
				$currMoney = $me[0]->da_silver_rahnu_money;
				$col_bal = 'da_silver_rahnu_money';
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
			return true;
		} else if ($status == 2) { // substract account
                        
			if ($currMoney < $amount) {
				$this->session->set_flashdata('error', 'Insufficient balance!');
				return false;
			} else {
				return true;
			}
		} else {
                    return false;
                }
	}
	
	public function sendSinglePayment($stat=1)
	{
            
            $sess = $this->session->all_userdata();
            $me_type = $sess['me_type'];
                
                if ($stat==32) {
                    
                        $postArr = $this->input->post();
                        
                        $pcc_id = $postArr['pcc_id'];
                        $statpcc = $postArr['statpcc'];
                        $pay = $postArr['pay'];
                        $postArr['tr_amount'] = str_replace(',', '', $postArr['tr_amount']);
                        $tr_amount = $postArr['tr_amount'];
                        $pa_id = $postArr['pa_id'];
                        $pa_id_enc = $this->my_func->dinarpal_encrypt($pa_id);
                        $me_id = $postArr['me_id_from'];
                        
//                        print_r($postArr); die();
//                        
                        // validation
			$bol_flag_failed = false;
			$error = '';
			if ('0' == $postArr['tr_amount'] || 0 == $postArr['tr_amount'] || '' == $postArr['tr_amount'] || NULL == $postArr['tr_amount'] || $postArr['tr_amount'] < 0) {
				$error .= 'Invalid amount transfer!<br />';
				$bol_flag_failed = true;
			}
			if ($bol_flag_failed) {
				$this->session->set_flashdata('error', $error);
                                $pcc_id_encrypted = $this->my_func->dinarpal_encrypt($pcc_id);
				redirect(site_url('member/dinarDirham/payment/52/?stat='.$statpcc.'&pcc='.$pcc_id_encrypted));
			}
                        
                        $bol_substract = $this->debit_kredit($postArr['me_id_from'], $postArr['tr_amount'], $postArr['at_id'], 2); // 2 for substract
			if ($bol_substract == false) {
                            redirect(site_url('member/purchaseAndPawn/rahnuDetail/231/?rh='.$pa_id_enc));
                        } else {

                            $data_trans = array(
                                    'me_id_from' => $postArr['me_id_from'],
                                    'tr_amount' => $postArr['tr_amount'],
                                    'at_id' => $postArr['at_id'],
                                    'ft_id' => $postArr['ft_id'],
                                    'tr_datetime' => date('Y-m-d H:i:s'),
                                    'tt_id' => 1,
                                    'ts_id' => 1 //pending
                            );
                            $bol_trans = $this->m_transaction->add($data_trans);
                            
                            if ($bol_trans) {
                             
                                $pcc = $this->m_pawn_child_child->get($pcc_id, $statpcc);
                                $old_price = (isset($pcc) && !empty($pcc)) ? (($pay == 'fee') ? ($pcc[0]->pcc_fee) : ($pcc[0]->pcc_price)) : (0);
                                $new_price = $old_price + $tr_amount;
                                $arr_pcc = ($pay == 'fee') ? (array('pcc_fee' => $new_price)) : (array('pcc_price' => $new_price));
                                $this->m_pawn_child_child->edit($pcc_id, $arr_pcc);
                                
                                // .. check da abih bayar atau belum
                                $ft_id = 3;
                                $ft = $this->m_fee_type->get($ft_id);
                                $ft_price = (isset($ft) && !empty($ft)) ? ($ft[0]->ft_price) : (0);
                                $pcc = $this->m_pawn_child_child->get($pcc_id, $statpcc);
                                if (!isset($pcc) || empty($pcc)) {
                                    $this->session->set_flashdata('error', 'Something wrong with the pay loan transaction!');
                                    redirect(site_url('member/purchaseAndPawn/rahnuDetail/231/?rh='.$pa_id_enc));
                                }
                                $loan = -1;
                                if ($statpcc == 1) {
                                    $loan = $pcc[0]->itct_price_rate * $pcc[0]->pa_rahnu_rate;
                                } else if ($statpcc == 2) {
                                    $loan = ($pcc[0]->ui_weight * $pcc[0]->itp_price) * $pcc[0]->pa_rahnu_rate;
                                }
                                $price_after = $loan - $pcc[0]->pcc_price;
                                $fee_after = $loan * ($ft_price * 1.0 / 100) - $pcc[0]->pcc_fee;
                                if ($loan != -1) {
                                    if (number_format($price_after, 2) <= 0.00 && number_format($fee_after, 2) <= 0.00) {
                                        
                                        // .. proses pindah gram ke vault
                                        
                                        // 1. kurang quantity pawn_child
                                        $pc_id = $pcc[0]->pc_id;
                                        $pc = $this->m_pawn_child->get($pc_id);
                                        $pc_qty_old = (isset($pc) && !empty($pc)) ? ($pc[0]->pc_qty) : (0);
                                        $pc_qty_new = ($pc_qty_old - 1 <= 0) ? (0) : ($pc_qty_old - 1);
                                        $data_pc = array('pc_qty' => $pc_qty_new);
                                        
                                        // 2. jika pawn_child quantity kosong, status pawn_child = 2
                                        if ($pc_qty_new <= 0) {
                                            $data_pc['pc_status'] = 2;
                                        }
                                        $this->m_pawn_child->edit($pc_id, $data_pc);
                                        
                                        // 3. jika semua pawn_child status = 2, status pawn = 3 (redeemed)
                                        $pa_id = $pcc[0]->pa_id;
                                        $pc2 = $this->m_pawn_child->getAll_basedPawn($pa_id, 1);
                                        if (!isset($pc2) || empty($pc2)) {
                                            $data_pa = array('pa_status' => 3);
                                            $this->m_pawn->edit($pa_id, $data_pa);
                                        }
                                        
                                        // 4. tambah 1 item storage
                                        $itct_id = ($statpcc == 1) ? ($pcc[0]->itct_id) : ($pcc[0]->ui_id);
                                        $is = $this->m_item_storage->get_byMeItem($me_id, $itct_id, $statpcc);
                                        $is_id = 0;
                                        if (isset($is) && !empty($is)) {
                                            $is_id = $is[0]->is_id;
                                            $is_qty_old = $is[0]->is_qty;
                                            $is_qty_new = $is_qty_old + 1;
                                            $data_is = array('is_qty' => $is_qty_new);
                                            $this->m_item_storage->edit($is_id, $data_is);
                                        } else {
                                            $data_is = array(
                                                'me_id' => $me_id,
                                                'itct_id' => 0,
                                                'ui_id' => 0,
                                                'is_qty' => 1,
                                                'is_status' => 1
                                            );
                                            if ($statpcc == 1) {
                                                $data_is['itct_id'] = $itct_id;
                                            } else {
                                                $data_is['ui_id'] = $itct_id;
                                            }
                                            $is_id = $this->m_item_storage->add($data_is);
                                        }                                        
                                        
                                        // 5. add item storage child dari pawn child child
                                        if ($is_id != 0) {
                                            $data_isc = array(
                                                'is_id' => $is_id,
                                                'isc_image' => $pcc[0]->pcc_image,
                                                'isc_datetime' => date('Y-m-d H:i:s'),
                                                'isc_price' => 0,
                                                'isc_status' => 1
                                            );
                                            $isc_id = $this->m_item_storage_child->add($data_isc);
                                        }
                                        
                                        // 6. pawn child child status = 2
                                        $data_pcc2 = array('pcc_status' => 2);
                                        $this->m_pawn_child_child->edit($pcc_id, $data_pcc2);
                                    }
                                    $this->session->set_flashdata('sucess', 'Transaction success.');
                                } else {
                                    $this->session->set_flashdata('error', 'Something wrong with the pay loan transaction!');
                                    redirect(site_url('member/purchaseAndPawn/rahnuDetail/231/?rh='.$pa_id_enc));
                                }    
                            } else {
                                $this->session->set_flashdata('error', 'Something wrong with the transaction!');
                                redirect(site_url('member/purchaseAndPawn/rahnuDetail/231/?rh='.$pa_id_enc));
                            }
                            redirect(site_url('member/purchaseAndPawn/rahnuDetail/231/?rh='.$pa_id_enc));
                        }
                    
                } else if ($stat==33) {
                    
                        $postArr = $this->input->post();
                        
//                        print_r($postArr); die();
//                        statpcc
                        $me_id = $postArr['me_id_from'];
                        $pa_id = $postArr['pa_id'];
                        $statpcc = $postArr['statpcc'];
			$pcc_data = $this->m_pawn_child_child->getAll($pa_id, $statpcc);
			$pa_pay_loan = $pcc_data[0]->pa_pay_loan;
//                        print_r($pcc_data); die();
                        $pa_safe_fee = $pcc_data[0]->pa_safe_fee;
                        $total = $postArr['total'];
                        $feetotal = $postArr['feetotal'];
                        $postArr['tr_amount'] = $total + $feetotal;
                        
                        // original price
                        $ptp_temp = 0;
                        $weight_temp = 0;
                        if (isset($pcc_data) && !empty($pcc_data)) {
                            foreach ($pcc_data as $pcc) {
                                if ($statpcc == 1) {
                                    $ptp_temp += $pcc->itct_price_rate;
                                    $weight_temp += $pcc->itct_weight;
                                } else if ($statpcc == 2) {
                                    $ptp_temp += ($pcc->itp_price * $pcc->ui_weight);
                                    $weight_temp += $pcc->ui_weight;
                                }
                            }
                        }
                        
//                        echo $weight_temp; echo $ptp_temp; die();
                        
                        // validation
			$bol_flag_failed = false;
			$error = '';
			if ('0' == $postArr['tr_amount'] || 0 == $postArr['tr_amount'] || '' == $postArr['tr_amount'] || NULL == $postArr['tr_amount'] || $postArr['tr_amount'] < 0) {
				$error .= 'Invalid amount transfer!<br />';
				$bol_flag_failed = true;
			}
			if ($bol_flag_failed) {
				$this->session->set_flashdata('error', $error);
                                $pcc_id_encrypted = $this->my_func->dinarpal_encrypt($pcc_id);
				redirect(site_url('member/dinarDirham/payment/52/?stat='.$statpcc.'&pcc='.$pcc_id_encrypted));
			}
			
                        // safe keeping fee 
                        $new_pa_safe_fee = $feetotal + $pa_safe_fee;
                        
			$new_pa_pay_loan = $total + $pa_pay_loan;
                        
//                        echo "$new_pa_safe_fee = $feetotal + $pa_safe_fee;<br />";
//                        echo "$new_pa_pay_loan = $total + $pa_pay_loan;"; die();
                        
//                        print_r($postArr); print_r($pcc); die();
                        
                        $bol_substract = $this->debit_kredit($postArr['me_id_from'], $postArr['tr_amount'], $postArr['at_id'], 2); // 2 for substract
			if ($bol_substract == false) {
                            redirect(site_url('member/purchaseAndPawn/listSafeFee/2111'));
                        }
                        
                        unset($postArr['tr_amount1']);
                        unset($postArr['statpcc']);
                        $data_pawn = array(
				'pa_pay_loan' => $new_pa_pay_loan,
                                'pa_safe_fee' => $new_pa_safe_fee
			);
			$bol_pa = $this->m_pawn->edit($pa_id, $data_pawn);
                        
                        if ($bol_pa) {
                            
				$data_trans = array(
					'me_id_from' => $postArr['me_id_from'],
					'tr_amount' => $postArr['tr_amount'],
					'at_id' => $postArr['at_id'],
					'ft_id' => $postArr['ft_id'],
					'tr_datetime' => date('Y-m-d H:i:s'),
					'tt_id' => 1,
					'ts_id' => 1 //success
				);
				$bol_trans = $this->m_transaction->add($data_trans);
				if ($bol_trans) {
                                    
                                        // 1. if pa_pay_loan equal to pawn loan
                                        $pawnAfter = $this->m_pawn_child_child->getAll($pa_id, $statpcc);
                                        $totalDaBayau = 0.0;
                                        $totalRahnuRate = 0.0;
                                        if (isset($pawnAfter) && !empty($pawnAfter)) {
                                            foreach ($pawnAfter as $pA) {
                                                $totalRahnuRate = $pA->pa_rahnu_rate;
                                                if ($statpcc == 1) {
                                                    $totalDaBayau += $pA->itct_price_rate;
                                                } else if ($statpcc == 2) {
                                                    $totalDaBayau += ($pA->itp_price * $pA->ui_weight);
                                                }
                                            }
                                        }
                                        $totalDaBayau *= $totalRahnuRate;
//                                        echo "number_format($new_pa_pay_loan, 2) == number_format($totalDaBayau, 2)<br />|" 
//                                                . (number_format($new_pa_pay_loan, 2) == number_format($totalDaBayau, 2)) . "|"; die();
                                        if (number_format($new_pa_pay_loan, 2) == number_format($totalDaBayau, 2)) {
                                            
                                            // 1.1 update dinarpal_account
                                            $bol1 = $this->debit_kredit($me_id, $weight_temp, 6, 2); // 2 - minus
                                            if ($bol1 == false) {
                                                redirect(site_url('member/purchaseAndPawn/listSafeFee/2111'));
                                            }
                                            $bol2 = $this->debit_kredit($me_id, $ptp_temp, 7, 2); // 2 - minus
                                            if ($bol2 == false) {
                                                redirect(site_url('member/purchaseAndPawn/listSafeFee/2111'));
                                            }
                                            $bol3 = $this->debit_kredit($me_id, $weight_temp, 2, 1); // 1 - add
                                            
                                            // 1.2. move pawn_child to item_storage
                                            $pawnChild = $this->m_pawn_child->getAll_basedPawn($pa_id);
                                            if (isset($pawnChild) && !empty($pawnChild)) {
                                                foreach ($pawnChild as $pC) {
                                                    $item_id_temp = ($statpcc == 1) ? ($pC->itct_id) : ($pC->ui_id);
                                                    $checkItemStorage = $this->m_item_storage->get_byMeItem($me_id, $item_id_temp, $statpcc);
                                                    $is_id = 0;
                                                    $pc_id = $pC->pc_id;
                                                    if (isset($checkItemStorage) && !empty($checkItemStorage)) {
                                                        // if item already exist
                                                        $old_is_qty = $checkItemStorage[0]->is_qty;
                                                        $new_is_qty = $old_is_qty + $pC->pc_qty;
                                                        $is_id = $checkItemStorage[0]->is_id;
                                                        $isDataEdit = array('is_qty' => $new_is_qty);
                                                        $this->m_item_storage->edit($is_id, $isDataEdit);
//                                                        echo "exist<br />";
                                                    } else {
                                                        // else item not exist
                                                        $dataItemStorage = array(
                                                            'me_id' => $me_id,
                                                            'itct_id' => $pC->itct_id,
                                                            'ui_id' => $pC->ui_id,
                                                            'is_qty' => $pC->pc_qty,
                                                            'is_status' => $pC->pc_status
                                                        );
                                                        $is_id = $this->m_item_storage->add($dataItemStorage);
//                                                        echo "not exist<br />";
                                                    }
                                                    
//                                                    echo "is_id: " . $is_id . "<br />";
                                                    
                                                    // 1.2.1. move pawn_child_child to item_storage_child
                                                    if ($is_id != 0) {
//                                                        echo "is_id: " . $is_id . "<br />";
                                                        $pawnChildChild = $this->m_pawn_child_child->getParent($pc_id, $statpcc);
//                                                        print_r($pawnChildChild);
                                                        if (isset($pawnChildChild) && !empty($pawnChildChild)) {
                                                            foreach ($pawnChildChild as $pCC) {
                                                                $itemStorageChildAdd = array(
                                                                    'is_id' => $is_id,
                                                                    'isc_image' => $pCC->pcc_image,
                                                                    'isc_datetime' => date('Y-m-d H:i:s'),
                                                                    'isc_price' => 0,
                                                                    'isc_status' => 1
                                                                );
                                                                $isc_id = $this->m_item_storage_child->add($itemStorageChildAdd);
                                                            }
                                                        }
                                                    }
                                                    
//                                                    die();
                                                }
                                            }
                                            
                                            
                                            // 1.3. pawn pa_status change status to 'claimed'
                                            $pawnDataEdit = array('pa_status' => 3);
                                            $this->m_pawn->edit($pa_id, $pawnDataEdit);
                                        }

                                        $this->session->set_flashdata('sucess', 'Transaction success.');
                                        redirect(site_url('member/purchaseAndPawn/listSafeFee/2111'));
                                    
				} else {
					$this->session->set_flashdata('error', 'Something wrong with the transaction!');
					$pcc_id_encrypted = $this->my_func->dinarpal_encrypt($pcc_id);
                                        redirect(site_url('member/dinarDirham/payment/52/?stat='.$statpcc.'&pcc='.$pcc_id_encrypted));
				}
			} else {
				$this->session->set_flashdata('error', 'Something wrong while paying the fees!');
				$pcc_id_encrypted = $this->my_func->dinarpal_encrypt($pcc_id);
				redirect(site_url('member/dinarDirham/payment/52/?stat='.$statpcc.'&pcc='.$pcc_id_encrypted));
			}
                    
		} else if ($stat==3) {
			
			$postArr = $this->input->post();
                        
                        //print_r($postArr); die();
			
			$pa_id = $postArr['pa_id'];
			$pa = $this->m_pawn->get($pa_id);
			$pa_safe_fee = $pa[0]->pa_safe_fee;
			$tr_amount = $postArr['tr_amount'];
			
			// validation
			$bol_flag_failed = false;
			$error = '';
			if ('0' == $postArr['tr_amount'] || 0 == $postArr['tr_amount'] || '' == $postArr['tr_amount'] || NULL == $postArr['tr_amount'] || $postArr['tr_amount'] < 0) {
				$error .= 'Invalid amount transfer!<br />';
				$bol_flag_failed = true;
			}
			if ($bol_flag_failed) {
				$this->session->set_flashdata('error', $error);
				$code = $pa[0]->pt_code . $this->my_func->format_digit($pa_id);
				redirect(site_url('member/dinarDirham/payment/52/?pp='.$code));
			}
			
			$new_pa_safe_fee = $pa_safe_fee + $tr_amount;
			
			//print_r($postArr);
			//print_r($pa);

                        $bol_substract = $this->debit_kredit($postArr['me_id_from'], $postArr['tr_amount'], $postArr['at_id'], 2); // 2 for substract
                        if ($bol_substract == false) {
                            redirect(site_url('member/purchaseAndPawn/listSafeFee/2111'));
                        }
                        
                        $data_pawn = array(
				'pa_safe_fee' => $new_pa_safe_fee
			);
			$bol_pawn = $this->m_pawn->edit($pa_id, $data_pawn);
			if ($bol_pawn) {
				$data_trans = array(
					'me_id_from' => $postArr['me_id_from'],
					'tr_amount' => $postArr['tr_amount'],
					'at_id' => $postArr['at_id'],
					'ft_id' => $postArr['ft_id'],
					'tr_datetime' => date('Y-m-d H:i:s'),
					'tt_id' => 1,
					'ts_id' => 1 //completed
				);
				$bol_trans = $this->m_transaction->add($data_trans);
				if ($bol_trans) {
					redirect(site_url('member/purchaseAndPawn/listSafeFee/2111'));
				} else {
					$this->session->set_flashdata('error', 'Something wrong with the transaction!');
					redirect(site_url('member/dinarDirham/payment/52/?pp='.$code));
				}
			} else {
				$this->session->set_flashdata('error', 'Something wrong while paying the fees!');
				redirect(site_url('member/dinarDirham/payment/52/?pp='.$code));
			}
			
                } else if ($stat==12) { 
                    
                        $arr = $this->input->post();
                        
//                        print_r($arr); die();
			
			// validation
			$bol_flag_failed = false;
			$error = '';
                        
                        $arr['username'] = str_replace(" ", "", $arr['username']);
                        $username = $arr['username'];
                        $member = $this->m_members->getByName($username);
                        if (!isset( $member[0] )) {
                                $error .= 'Invalid receiver!<br />';
				$bol_flag_failed = true;
                        } else {
                                $arr['me_id_to'] = $member[0]->me_id;
                        }
                        
                        if (sizeof($arr['v_ids']) <= 0) {
                                $error .= 'No item to be sent!<br />';
                                $bol_flag_failed = true;
                        } else {
                                $bol1 = true;
                                foreach ($arr['v_ids'] as $tos) {
                                    if ($tos != 0) {
                                        $bol1 = false;
                                        break;
                                    }
                                }
                                if ($bol1) {
                                    $error .= 'Invalid quantity! You sent nothing!<br />';
                                    $bol_flag_failed = true;
                                }
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
				redirect(site_url('member/dinarDirham/paymentGram/52'));
			}
			
			$this->session->set_userdata('payment_temp', $arr);
			redirect(site_url('member/dinarDirham/paymentConfirm2/521'));
                        
                        
                } else if ($stat==4) {
                    
                        $arr = $this->input->post();
                        
                        //print_r($arr); die();
			
			// validation
			$bol_flag_failed = false;
			$error = '';
			if ('0' == $arr['ad_amount'] || 0 == $arr['ad_amount'] || '' == $arr['ad_amount'] || NULL == $arr['ad_amount'] || $arr['ad_amount'] < 0) {
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
				redirect(site_url('member/dinarDirham/payment/52'));
			}
			
			$this->session->set_userdata('payment_temp', $arr);
			redirect(site_url('member/dinarDirham/amanahConfirm/521'));
                    
                } else if ($stat==1) {
			
			$arr = $this->input->post();
                        
//                        print_r($arr); die();
                        
                        // validation
			$bol_flag_failed = false;
			$error = '';
                        
                        $arr['username'] = str_replace(" ", "", $arr['username']);
                        $username = $arr['username'];
                        $member = $this->m_members->getByName($username);
                        if (!isset( $member[0] )) {
                                $error .= 'Invalid receiver!<br />';
				$bol_flag_failed = true;
                        } else {
                                $arr['me_id_to'] = $member[0]->me_id;
                        }
			
			if (!is_numeric($arr['tr_amount']) || '0' == $arr['tr_amount'] || 0 == $arr['tr_amount'] || '' == $arr['tr_amount'] || NULL == $arr['tr_amount'] || $arr['tr_amount'] < 0) {
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
				redirect(site_url('member/dinarDirham/payment/52'));
			}
			
			$this->session->set_userdata('payment_temp', $arr);
			redirect(site_url('member/dinarDirham/paymentConfirm/521'));
			
                } else if ($stat==22) {
                    
                        $arr = $this->input->post();
//			print_r($arr); die();
			
                        // validation
			$bol_flag_failed = false;
			$error = '';
                        if (sizeof($arr['v_ids']) <= 0) {
                                $error .= 'No item to be sent!<br />';
                                $bol_flag_failed = true;
                        } else {
                                $bol1 = true;
                                foreach ($arr['v_ids'] as $tos) {
                                    if ($tos != 0) {
                                        $bol1 = false;
                                        break;
                                    }
                                }
                                if ($bol1) {
                                    $error .= 'Invalid quantity! You sent nothing!<br />';
                                    $bol_flag_failed = true;
                                }
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
				redirect(site_url('member/dinarDirham/paymentGram/52'));
			}
                        
                        unset($arr['username']);
			unset($arr['pt_desc']);
			unset($arr['at_desc']);
			$arr['ts_id'] = 1;
			$arr['tt_id'] = 1;
			$arr['tr_datetime'] = date('Y-m-d H:i:s');
                        
                        $me_id_to = $arr['me_id_to'];
                        $me_id_from = $arr['me_id_from'];
                        
//                        print_r($arr); die();

                        $me_from = $this->m_members->get($me_id_from);
                        $me_type_from = (isset($me_from) && !empty($me_from)) ? ($me_from[0]->me_type) : ('NU');
                        $me_to = $this->m_members->get($me_id_to);
                        $me_type_to = (isset($me_to) && !empty($me_to)) ? ($me_to[0]->me_type) : ('NU');
                        
                        $v_ids = $arr['v_ids'];
                        $arr['tr_amount'] = 0;
                        
                        $fee_price_receive = 0.0;
                        $ft_id_receive = 10;
                        
                        $v_price_money = 0;
                        $v_weigth_total = 0;
                        
                        foreach ($v_ids as $iiv) {
                            $v_id = $iiv;
                            $v = $this->m_vault->get($v_id);
                            
                            $v_price_rate = (isset($v) && !empty($v) && is_numeric($v[0]->v_price_rate)) ? ($v[0]->v_price_rate) : (0);
                            $v_weight = (isset($v) && !empty($v) && is_numeric($v[0]->v_weight)) ? ($v[0]->v_weight) : (0.0);
                            
                            $arr['tr_amount'] += $v_weight;
                            
                            $ft = $this->m_fee_type->get($ft_id_receive);
                            $ft_type = (isset($ft) && !empty($ft)) ? ($ft[0]->ft_type) : ('STATIC');
                            $ft_rate = (isset($ft) && !empty($ft)) ? ($ft[0]->ft_price) : (0);
                            $ft_rate_receive = 0.00;
                            if ($me_type_to != 'DP') {
                                if ($ft_type == 'STATIC') {
                                    $ft_rate_receive = $ft_rate;
                                } else if ($ft_type == 'DYNAMIC') {
                                    $ft_rate_receive = $v_price_rate * $ft_rate;
                                }
                            }
                            
//                            $v_price_rate = (isset($v) && !empty($v)) ? ($v[0]->itp_price * $v[0]->v_weight * $ft_rate_receive) : (0.0);
                            $fee_price_receive_child = (isset($v) && !empty($v)) ? ($ft_rate_receive) : (0.0);
                            $v_price_money += (isset($v) && !empty($v)) ? ($v_price_rate) : (0.0);
                            $v_weigth_total += (isset($v) && !empty($v)) ? ($v_weight) : (0.0);
                            
//                            echo $v_price_rate."\n";
                            $fee_price_receive += ($fee_price_receive_child);
                        }
                        
//                        print_r($arr); die();
                        
                        $arrTrans1 = $arr;
                        unset($arrTrans1['v_ids']);
                        unset($arrTrans1['table1_length']);
                        $arrTrans1['ft_id'] = 9;
                        $arrTrans1['ts_id'] = 1;
                        
//                        print_r($arrTrans1); die();
                        
                        $tr_id = $this->m_transaction->add($arrTrans1);
                        if ($tr_id) {
                            foreach ($arr['v_ids'] as $v_id) {
                                
                                $data_vault = array(
                                    'vt_id' => 2, //ghost vault
                                    'me_id' => $arrTrans1['me_id_to']
                                );
                                $this->m_vault->edit($v_id, $data_vault);
                                
                                $data_spg = array(
                                    'me_id_to' => $arrTrans1['me_id_to'],
                                    'me_id_from' => $arrTrans1['me_id_from'],
                                    'pt_id' => $arrTrans1['pt_id'],
                                    'at_id' => $arrTrans1['at_id'],
                                    'v_id' => $v_id,
                                    'spg_notes' => $arrTrans1['tr_notes'],
                                    'tr_id' => $tr_id
                                );
                                $spg_id = $this->m_send_payment_gram->add($data_spg);
                            }
                            
                            $pt_id = $arrTrans1['pt_id'];
                            $at_id = $arrTrans1['at_id'];
                            $tr_amount = $v_price_money;
                            $total_weight = (isset($v_weigth_total) && !empty($v_weigth_total) 
                                    && is_numeric($v_weigth_total)) ? (number_format($v_weigth_total, 4)) : ("0.0000");
                            $tr_datetime = date('Y-m-d H:i:s');
                            $tr_notes = $arrTrans1['tr_notes'];
                            
                            $me_receiver = $this->m_members->get($me_id_to);
                            $me_sender = $this->m_members->get($me_id_from);
                            
                            $me_username_sender = (isset($me_sender) && !empty($me_sender)) ? ($me_sender[0]->me_username) : ("-");
                            
                            $payment_type = $this->m_payment_type->get($pt_id);
                            $account_type = $this->m_account_type->get($at_id);
                            $amount_trans = (is_numeric($tr_amount)) ? (number_format($tr_amount, 4)) : ("0.0000");
                            
                            // send email
                            $me_rec_email = (isset($me_receiver) && !empty($me_receiver)) ? ($me_receiver[0]->me_email) : ("-");
                            $to = $me_rec_email;
                            $subject = "DinarPal Receive Send Payment";
                            $currency = $this->my_func->getCurrency();
                            $msg = "You just receive " 
                                    . $currency 
                                    . " " 
                                    . $amount_trans 
                                    . " within " 
                                    . $total_weight 
                                    . " GRM of item from " 
                                    . $me_username_sender 
                                    . ".";
                            $this->my_func->send_email($to, $subject, $msg);

                            $me_rec_fullname = (isset($me_receiver) && !empty($me_receiver)) ?
                                    ($me_receiver[0]->me_firstname . " " . $me_receiver[0]->me_lastname) : ("-");
                            $me_rec_username = (isset($me_receiver) && !empty($me_receiver)) ?
                                    ($me_receiver[0]->me_username) : ("-");
                            $pt_desc = (isset($payment_type) && !empty($payment_type)) ?
                                    ($payment_type[0]->pt_desc) : ("-");
                            $at_desc = (isset($account_type) && !empty($account_type)) ?
                                    ($account_type[0]->at_desc) : ("-");
                            
                            $this->session->set_userdata('me_rec_fullname', $me_rec_fullname);
                            $this->session->set_userdata('me_rec_username', $me_rec_username);
                            $this->session->set_userdata('pt_desc', $pt_desc);
                            $this->session->set_userdata('at_desc', $at_desc);
                            $this->session->set_userdata('amount_trans', $amount_trans);
                            $this->session->set_userdata('tr_datetime', $tr_datetime);
                            $this->session->set_userdata('tr_notes', $tr_notes);
                            $this->session->set_userdata('total_weight', $total_weight);
                        }
			
                        redirect(site_url('member/dinarDirham/paymentSummary/521'));
                        
                } else if ($stat==41) {
                    
                        $arr = $this->input->post();
			
			// validation
			$bol_flag_failed = false;
			$error = '';
			if ('0' == $arr['ad_amount'] || 0 == $arr['ad_amount'] || '' == $arr['ad_amount'] || NULL == $arr['ad_amount'] || $arr['ad_amount'] < 0) {
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
				redirect(site_url('member/dinarDirham/payment/52'));
			}
			
			unset($arr['username']);
			unset($arr['at_desc']);
			$arr['ts_id'] = 2;
			$arr['ad_datetime'] = date('Y-m-d H:i:s');
                        
                        //print_r($arr); die();
			
			$status = $this->m_amanah_deal->add($arr);
                        if ($status) {
                              ///  $this->session->set_flashdata('sucess', 'Send amanah deal success ..');
                        } else {
                                $this->session->set_flashdata('error', 'Send amanah deal failed!');
                        }
			
			redirect(site_url('member/dinarDirham/payment/52'));
                    
		} else if ($stat==2) {
			
			$arr = $this->input->post();
//			print_r($arr); die();
			
			// validation
			$bol_flag_failed = false;
			$error = '';
			if (!is_numeric($arr['tr_amount']) || '0' == $arr['tr_amount'] || 0 == $arr['tr_amount'] || '' == $arr['tr_amount'] || NULL == $arr['tr_amount'] || $arr['tr_amount'] < 0) {
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
				redirect(site_url('member/dinarDirham/payment/52'));
			}
			
			unset($arr['username']);
			unset($arr['pt_desc']);
			unset($arr['at_desc']);
                        
                        $pt_id = $arr['pt_id'];
                        
			$arr['ts_id'] = 1;
			$arr['tr_datetime'] = date('Y-m-d H:i:s');
                        
                        $me_id_admin = $this->my_func->getMeAdminHQ();
                        $me_id_from = $arr['me_id_from'];
                        $me_id_to = $arr['me_id_to'];
                        
                        $me_from = $this->m_members->get($me_id_from);
                        $me_type_from = (isset($me_from) && !empty($me_from)) ? ($me_from[0]->me_type) : ('NU');
                        $me_to = $this->m_members->get($me_id_to);
                        $me_type_to = (isset($me_to) && !empty($me_to)) ? ($me_to[0]->me_type) : ('NU');
                        
                        $tr_amount = $arr['tr_amount'];
                        
                        $fee_send = $this->m_fee_type->get(9); // send payment money fee
                        $send_payment_money_fee = 0.00;
                        
                        // sender not DP and payment type not salary.
                        if ($me_type_from != 'DP' && $pt_id != 3) {
                            if (isset($fee_send) && !empty($fee_send)) {
                                $ft_type = $fee_send[0]->ft_type;
                                $ft_price = $fee_send[0]->ft_price;
                                if ($ft_type == 'STATIC') {
                                    $send_payment_money_fee = $ft_price;
                                } else if ($ft_type == 'DYNAMIC') {
                                    $send_payment_money_fee = $ft_price * $tr_amount;
                                }
                            }
                        }
                        
                        $gst_rate = $this->my_func->getGST();
                        $gst_tax_send = $gst_rate * $send_payment_money_fee;
                        
                        $tr_amount_after_send = $tr_amount - $send_payment_money_fee - $gst_tax_send;
                        
                        $fee_receive = $this->m_fee_type->get(10); // receive payment money fee
                        $receive_fee = 0.00;
                        // receiver not DP and payment type not salary.
                        if ($me_type_to != 'DP' && $pt_id != 3) {
                            if (isset($fee_receive) && !empty($fee_receive)) {
                                $ft_type = $fee_receive[0]->ft_type;
                                $ft_price = $fee_receive[0]->ft_price;
                                if ($ft_type == 'STATIC') {
                                    $receive_fee = $ft_price;
                                } else if ($ft_type == 'DYNAMIC') {
                                    $receive_fee = $ft_price * $tr_amount;
                                }
                            }
                        }
                        
                        $gst_rate = $this->my_func->getGST();
                        $gst_tax_receive = $gst_rate * $receive_fee;
                        
                        $tr_amount_after_receive = $tr_amount_after_send - $receive_fee - $gst_tax_receive;
                        
                        $pt_id = $arr['pt_id'];
                        $at_id = $arr['at_id'];
                        $tr_notes = $arr['tr_notes'];
                        $tr_datetime = $arr['tr_datetime'];
                        $tt_id = $arr['tt_id'];
                        
                        if ($tr_amount_after_send < $this->my_func->getMinimumTrans()) {
                            $this->session->set_flashdata('error', 'Opss! Your amount is too low to be sent.');
                            redirect(site_url('member/dinarDirham/payment/52'));
                        }
                        if ($tr_amount_after_receive < 0) {
                            $this->session->set_flashdata('error', 'Opss! Your amount is too low to be received.');
                            redirect(site_url('member/dinarDirham/payment/52'));
                        }
                                                   
//                        print_r($arr); die();
//                        print_r("$tr_amount_after_receive = $tr_amount_after_send - $receive_fee"); die();

                        $bol_send = $this->debit_kredit($me_id_from, $tr_amount, $at_id, 2); // 2 for substract.
                        if ($bol_send) {
                            
                            // geneology commision
                            if ($send_payment_money_fee > 0) {
                                $this->payGeneology($me_id_from, $at_id, $send_payment_money_fee, $tr_datetime);
//                                $bol_send = $this->debit_kredit($me_id_admin, $send_payment_money_fee + $gst_tax_send, $at_id, 1); // 1 for add.
                                $this->debit_kredit_fund($me_id_admin, $send_payment_money_fee, 'FEES', 1);
                                $this->debit_kredit_fund($me_id_admin, $gst_tax_send, 'GST', 1);
                            }
                            
                            $data_tr1 = array(
                                'me_id_from' => $me_id_from,
                                'me_id_to' => $me_id_to,
                                'tr_amount' => $tr_amount_after_send,
                                'pt_id' => $pt_id,
                                'at_id' => $at_id,
                                'ft_id' => 9,
                                'tr_notes' => $tr_notes,
                                'tr_datetime' => $tr_datetime,
                                'tt_id' => 35,
                                'ts_id' => 1
                            );
                            $tr_id1 = $this->m_transaction->add($data_tr1);
                            
                            if ($send_payment_money_fee > 0) {
                                // send fee
                                $data_tr2 = array(
                                    'me_id_from' => $me_id_from,
                                    'me_id_to' => $me_id_admin,
                                    'tr_amount' => $send_payment_money_fee,
                                    'pt_id' => $pt_id,
                                    'at_id' => 6,
                                    'ft_id' => 9,
                                    'tr_notes' => $tr_notes,
                                    'tr_datetime' => $tr_datetime,
                                    'tt_id' => 36,
                                    'ts_id' => 1
                                );
                                $tr_id2 = $this->m_transaction->add($data_tr2);
                                
                                // send gst
                                $data_tr22 = array(
                                    'me_id_from' => $me_id_from,
                                    'me_id_to' => $me_id_admin,
                                    'tr_amount' => $gst_tax_send,
                                    'pt_id' => $pt_id,
                                    'at_id' => 7,
                                    'ft_id' => 13,
                                    'tr_notes' => $tr_notes,
                                    'tr_datetime' => $tr_datetime,
                                    'tt_id' => 25,
                                    'ts_id' => 1
                                );
                                $tr_id22 = $this->m_transaction->add($data_tr22);
                            }
                            $bol_receive = $this->debit_kredit($me_id_to, $tr_amount_after_receive, $at_id, 1); // 1 for add.
                            if ($bol_receive) {
                                
                                // geneology commision
                                if ($receive_fee > 0) {
                                    $this->payGeneology($me_id_to, $at_id, $receive_fee, $tr_datetime);
//                                    $bol_send = $this->debit_kredit($me_id_admin, $receive_fee+$gst_tax_receive, $at_id, 1); // 1 for add.
                                    $this->debit_kredit_fund($me_id_admin, $receive_fee, 'FEES', 1);
                                    $this->debit_kredit_fund($me_id_admin, $gst_tax_receive, 'GST', 1);
                                    
                                    // receive fee
                                    $data_tr3 = array(
                                        'me_id_from' => $me_id_to,
                                        'me_id_to' => $me_id_admin,
                                        'tr_amount' => $receive_fee,
                                        'pt_id' => $pt_id,
                                        'at_id' => 6,
                                        'ft_id' => 10,
                                        'tr_notes' => $tr_notes,
                                        'tr_datetime' => $tr_datetime,
                                        'tt_id' => 37,
                                        'ts_id' => 1
                                    );
                                    $tr_id3 = $this->m_transaction->add($data_tr3);

                                    // receive fee gst
                                    $data_tr32 = array(
                                        'me_id_from' => $me_id_to,
                                        'me_id_to' => $me_id_admin,
                                        'tr_amount' => $gst_tax_receive,
                                        'pt_id' => $pt_id,
                                        'at_id' => 7,
                                        'ft_id' => 13,
                                        'tr_notes' => $tr_notes,
                                        'tr_datetime' => $tr_datetime,
                                        'tt_id' => 25,
                                        'ts_id' => 1
                                    );
                                    $tr_id32 = $this->m_transaction->add($data_tr32);
                                }
                                
                                $me_receiver = $this->m_members->get($me_id_to);
                                $me_sender = $this->m_members->get($me_id_from);
                                
                                $me_username_sender = (isset($me_sender) && !empty($me_sender)) ? ($me_sender[0]->me_username) : ("-");
                                
                                $payment_type = $this->m_payment_type->get($pt_id);
                                $account_type = $this->m_account_type->get($at_id);
                                $amount_trans = (is_numeric($tr_amount)) ? (number_format($tr_amount, 4)) : ("0.0000");
                                $send_fee_amount = (is_numeric($send_payment_money_fee)) ? (number_format($send_payment_money_fee, 4)) : ("0.0000");
                                
                                // send email
                                $me_rec_email = (isset($me_receiver) && !empty($me_receiver)) ? ($me_receiver[0]->me_email) : ("-");
                                $to = $me_rec_email;
                                $subject = "DinarPal Receive Send Payment";
                                $currency = $this->my_func->getCurrency();
                                $msg = "You just receive " 
                                        . $currency 
                                        . " " 
                                        . $amount_trans 
                                        . " from " 
                                        . $me_username_sender 
                                        . ".";
                                $this->my_func->send_email($to, $subject, $msg);
                                
                                $me_rec_fullname = (isset($me_receiver) && !empty($me_receiver)) ? 
                                        ($me_receiver[0]->me_firstname." ".$me_receiver[0]->me_lastname) : ("-");
                                $me_rec_username = (isset($me_receiver) && !empty($me_receiver)) ? 
                                        ($me_receiver[0]->me_username) : ("-");
                                $pt_desc = (isset($payment_type) && !empty($payment_type)) ? 
                                        ($payment_type[0]->pt_desc) : ("-");
                                $at_desc = (isset($account_type) && !empty($account_type)) ? 
                                        ($account_type[0]->at_desc) : ("-");
                                
                                $this->session->set_userdata('me_rec_fullname', $me_rec_fullname);
                                $this->session->set_userdata('me_rec_username', $me_rec_username);
                                $this->session->set_userdata('pt_desc', $pt_desc);
                                $this->session->set_userdata('at_desc', $at_desc);
                                $this->session->set_userdata('amount_trans', $amount_trans);
                                $this->session->set_userdata('tr_datetime', $tr_datetime);
                                $this->session->set_userdata('tr_notes', $tr_notes);
                                $this->session->set_userdata('send_fee_amount', $send_fee_amount);

                            } else {
                                $this->session->set_flashdata('error', 'Opss! Something is wrong. Please contact your administrator.');
                                redirect(site_url('member/dinarDirham/payment/52'));
                            }
                        } else {
                            redirect(site_url('member/dinarDirham/payment/52'));
                        }
			
//			redirect(site_url('member/dinarDirham/payment/52'));
			redirect(site_url('member/dinarDirham/paymentSummary/521'));
		}
	}
        
        function debit_kredit_fund($me_id, $amount, $df_code, $status)
	{
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
	
	function debit_kredit_admin($daa_id, $amount, $at_id, $status)
	{
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
        
        function getAjaxGetItem1() {
                if ($this->input->post('v_ids')) {
                    $v_ids = $this->input->post('v_ids');
                    $confirm = array();
                    foreach ($v_ids as $ii) {
                        $confirm[] = array(
                            'v_id' => $ii
                        );
                    }
                    $data['confirmSent'] = $confirm;
                }
                $sess = $this->session->all_userdata();
                $me_id = $sess['me_id'];
//                $data['item_storage'] = $this->m_item_storage->get_byMember($me_id);
//                $data['item_storage'] = $this->m_item_storage_child->getAll_byMember($me_id);
                $vt_id = 3;
                $data['vault'] = $this->m_vault->getAll_personal($vt_id, $me_id, 1);
                echo $this->load->view('member/dinarDirham/ajax/ajaxGetItem1', $data, true);
        }
        
        function buyBack() {
            if ($this->input->get('v')) {
                $v = $this->input->get('v');
                $v_id = $this->my_func->dinarpal_decrypt($v);
                
            } else {
                echo "<script>history.back(-1);</script>";
            }
        }
        
        function toMinting() {
            $arr = $this->input->post();
            print_r($arr); die(".. under construction ..");
        }
        
        function toLiquid() {
            $sess = $this->session->all_userdata();
            $arrpost = $this->input->post();
            $me_id = $sess['me_id'];
            $me_account_type = $sess['me_account_type'];
            $sl_id = $this->input->post('sl_id');
            $v_id = $this->input->post('v_id');
            $ft_id = $this->input->post('ft_id');
            
            $v = $this->m_vault->get($v_id);
            $ft = $this->m_fee_type->get($ft_id);
            
            $v_price_rate = (isset($v) && !empty($v)) ? ($v[0]->v_price_rate) : (0.00);
            $v_weight = (isset($v) && !empty($v)) ? ($v[0]->v_weight) : (0.00);
            $it_id = (isset($v) && !empty($v)) ? ($v[0]->it_id) : (1);
            $at_id = ($it_id == 1) ? (2) : (4);
            
            $price_rate = 0.00;
            $ft_price = 0.00;
            $amount_after_discount = 0.00;
            if (isset($ft) && !empty($ft)) {
                if ($ft[0]->ft_type == 'STATIC') {
                    $amount_after_discount = $v_price_rate - $ft[0]->ft_price;
                    $price_rate = ($amount_after_discount * 1.0 / $v_price_rate);
                } else if ($ft[0]->ft_type == 'DYNAMIC') {
                    $amount_after_discount = $v_price_rate * $ft[0]->ft_price;
                    $price_rate = $ft[0]->ft_price;
                }
            }
            $gst_rate = $this->my_func->getGST();
            $gst_tax = 0.00;
            if ($me_account_type == 2) {
                $gst_tax = $gst_rate * $amount_after_discount;
            }
            
            $tr_amount = $amount_after_discount;
            $me_id_admin = $this->my_func->getMeAdmin($sl_id);
//            print_r($me_id_admin); die();
            $datetime = date('Y-m-d H:i:s');
            
//            print_r("$v_price_rate $amount_after_discount $gst_tax"); die();
            
            $li = $this->m_liquid_item->isExist($v_id);
            
//            print_r($li); die();
            
            if (!isset($li) || empty($li)) {
                
                // add into transaction
                $data_tr = array(
                    'me_id_from' => $me_id,
                    'me_id_to' => $me_id_admin,
                    'tr_amount' => $v_weight,
                    'at_id' => $at_id,
                    'ft_id' => $ft_id,
                    'tr_datetime' => $datetime,
                    'tt_id' => 17, // convert to myr
                    'ts_id' => 2 // pending
                );
                $tr_id = $this->m_transaction->add($data_tr);
                
                if ($tr_id) {
                    
                    // add into liquid temp box
                    $data_li = array(
                        'v_id' => $v_id,
                        'li_datetime' => $datetime,
                        'sl_id' => $sl_id,
                        'me_id' => $me_id,
                        'lis_id' => 1,
                        'tr_id' => $tr_id,
                        'li_sellprice' => $v_price_rate,
                        'li_buypricerate' => $price_rate
                    );
                    $li_id = $this->m_liquid_item->add($data_li);

                    // update vault to store
                    $data_v = array(
                        'vt_id' => 5,
                        'me_id' => $me_id_admin
                    );
                    $this->m_vault->edit($v_id, $data_v);
                }
            
                redirect(site_url('member/dinarDirham/receiptVaultToLiquid/5132/?v='.$this->my_func->dinarpal_encrypt($v_id)));
                
            } else {
                
                $this->session->set_flashdata('error', 'Opss! Invalid Item');
                redirect(site_url('member/dinarDirham/overviewDetail/512'));
            }
        }
        
        public function convertMoneyDifferentAccount()
        {
            $convert_from = $this->input->post('convert_from');
            $convert_to = $this->input->post('convert_to');
            $amount = $this->input->post('amount');
            
            if (!isset($amount) || empty($amount) || !is_numeric($amount) || $amount <= 0) {
                $this->session->set_flashdata('error', 'Invalid amount transfer!');
                redirect(site_url('member/dinarDirham/overview/51'));
            }
            
            $at_id_from = $this->my_func->dinarpal_decrypt($convert_from);
            $at_id_to = $this->my_func->dinarpal_decrypt($convert_to);
            
            if ($at_id_from == $at_id_to) {
                $this->session->set_flashdata('error', 'Cannot transfer to same account type!');
                redirect(site_url('member/dinarDirham/overview/51'));
            }
            
            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
            
            $at_from = $this->m_account_type->get($at_id_from);
            $at_desc_from = (isset($at_from) && !empty($at_from)) ? ($at_from[0]->at_desc) : ('-');
            $at_to = $this->m_account_type->get($at_id_to);
            $at_desc_to = (isset($at_to) && !empty($at_to)) ? ($at_to[0]->at_desc) : ('-');
            
            $tr_datetime = date('Y-m-d H:i:s');
            
            $bol_from = $this->debit_kredit($me_id, $amount, $at_id_from, 2);
            if ($bol_from) {
                $bol_to = $this->debit_kredit($me_id, $amount, $at_id_to, 1);
                if ($bol_to) {
                    
                    $data_tr1 = array(
                        'me_id_from' => $me_id,
                        'me_id_to' => 0,
                        'tr_amount' => $amount,
                        'at_id' => $at_id_from,
                        'tr_notes' => 'Transfer money from ' . $at_desc_from . ' to ' . $at_desc_to . '.',
                        'tr_datetime' => $tr_datetime,
                        'tt_id' => 47,
                        'ts_id' => 1
                    );
                    $tr_id1 = $this->m_transaction->add($data_tr1);
                    
                    $data_tr2 = array(
                        'me_id_from' => 0,
                        'me_id_to' => $me_id,
                        'tr_amount' => $amount,
                        'at_id' => $at_id_to,
                        'tr_notes' => 'Transfer money from ' . $at_desc_from . ' to ' . $at_desc_to . '.',
                        'tr_datetime' => $tr_datetime,
                        'tt_id' => 47,
                        'ts_id' => 1
                    );
                    $tr_id2 = $this->m_transaction->add($data_tr2);
                    
                    $this->session->set_flashdata('sucess', 'Transfer success ..');
                } else {
                    $bol_from = $this->debit_kredit($me_id, $amount, $at_id_from, 1);
                    $this->session->set_flashdata('error', 'Unable to receive money to the other side!');
                }
            }
            redirect(site_url('member/dinarDirham/overview/51'));
        }
        
        public function returnFund()
        {
            $convert_from = $this->input->post('convert_from');
            $convert_to = $this->input->post('convert_to');
            $amount = $this->input->post('amount');
            
            if (!isset($amount) || empty($amount) || !is_numeric($amount) || $amount <= 0) {
                $this->session->set_flashdata('error', 'Invalid amount transfer!');
                redirect(site_url('member/dinarDirham/overview/51'));
            }
            
            $df_id = $this->my_func->dinarpal_decrypt($convert_from);
            $at_id_to = $this->my_func->dinarpal_decrypt($convert_to);
            
            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
            
            $at_to = $this->m_account_type->get($at_id_to);
            $at_desc_to = (isset($at_to) && !empty($at_to)) ? ($at_to[0]->at_desc) : ('-');
            $df = $this->m_dinarpal_funds->get($df_id);
            $df_desc = (isset($df) && !empty($df)) ? ($df[0]->df_desc) : ('-');
            $df_code = (isset($df) && !empty($df)) ? ($df[0]->df_code) : ('-');
            
            $at2 = $this->m_account_type->get_BasedDesc($df_desc);
            $at_id2 = (isset($at2) && !empty($at2)) ? ($at2[0]->at_id) : (0);
            
            $tr_datetime = date('Y-m-d H:i:s');
            
            $bol_from = $this->debit_kredit_fund($me_id, $amount, $df_code, 2);
            if ($bol_from) {
                
                $bol_to = $this->debit_kredit($me_id, $amount, $at_id_to, 1);
                if ($bol_to) {
                    
                    $data_tr1 = array(
                        'me_id_from' => $me_id,
                        'me_id_to' => 0,
                        'tr_amount' => $amount,
                        'at_id' => $at_id2,
                        'tr_notes' => 'Return fund from ' . $df_desc . ' to ' . $at_desc_to. '.',
                        'tr_datetime' => $tr_datetime,
                        'tt_id' => 49,
                        'ts_id' => 1
                    );
                    $tr_id1 = $this->m_transaction->add($data_tr1);
                    
                    $data_tr11 = array(
                        'me_id_from' => 0,
                        'me_id_to' => $me_id,
                        'tr_amount' => $amount,
                        'at_id' => $at_id_to,
                        'tr_notes' => 'Return fund from ' . $df_desc . ' to ' . $at_desc_to. '.',
                        'tr_datetime' => $tr_datetime,
                        'tt_id' => 49,
                        'ts_id' => 1
                    );
                    $tr_id11 = $this->m_transaction->add($data_tr11);
                    
                    $this->session->set_flashdata('sucess', 'Return Fund success ..');
                    
                } else {
                    $bol_from = $this->debit_kredit($me_id, $amount, $at_id_from, 1);
                    $this->session->set_flashdata('error', 'Unable to send money from the other side!');
                }
            }
            redirect(site_url('member/dinarDirham/overview/51'));
        }
        
        
	public function dinarDirham($output='dashboard', $menu1='11')
	{
		if ($output != 'dashboard')
		{
			$data = array();
			$sess = $this->session->all_userdata();
			$me_id = $sess['me_id'];
			$me_type = $sess['me_type'];
			$data['me_id'] = $me_id;
			$data['me_type'] = $me_type;
			$title = 'Account Overview';
			switch($menu1) {
                                case '514':
                                        if($this->input->get('isid')) {
                                            $stat = $this->input->get('stat');
                                            $isid_enc = $this->input->get('isid');
                                            $is_id = $this->my_func->dinarpal_decrypt($this->input->get('isid'));
                                            $data['is_id'] = $is_id;
                                            $data['stat'] = $stat;
                                            $data['isid_enc'] = $isid_enc;
                                            $data['item_storage_child'] = $this->m_item_storage_child->getAll($is_id, $stat);
//                                            print_r($data['item_storage_child']); die();
                                        } else {
                                            redirect(site_url('member/dinarDirham/overviewDetail/512'));
                                        }
                                        break;
                                case '513':
                                    $title = 'My Vault';
                                        if($this->input->get('v')) {
                                            $vx = $this->input->get('v');
                                            $brx = $this->input->get('br');
                                            $itcx = $this->input->get('itc');
                                            $this->session->set_userdata('vx', $vx);
                                            $this->session->set_userdata('brx', $brx);
                                            $this->session->set_userdata('itcx', $itcx);
                                            $v_name = $this->my_func->dinarpal_decrypt($vx);
                                            $br_id = $this->my_func->dinarpal_decrypt($brx);
                                            $itc_id = $this->my_func->dinarpal_decrypt($itcx);
                                            $data['v_name'] = $v_name;
                                            $data['br_id'] = $br_id;
                                            $data['itc_id'] = $itc_id;
//                                            print_r($data); die();
//                                            $data['item_storage_child'] = $this->m_item_storage_child->getAll($is_id, $stat);
                                            $me_type = $sess['me_type'];
                                            $data['me_type'] = $me_type;
                                            $vt_id = 3;//(isset($me_type) && !empty($me_type)) ? (($me_type == 'DP') ? (5) : (3)) : (3);
                                            $data['vault'] = $this->m_vault->getAll_personalDetail($vt_id, $me_id, $v_name, $br_id, $itc_id);
//                                            print_r(sizeof($data['vault'])); die();
                                        } else {
                                            redirect(site_url('member/dinarDirham/overviewDetail/512'));
                                        }
                                        break;
                                case '513view':
                                    if($this->input->get('v')) {
                                        $vx = $this->input->get('v');
                                        $v_id = $this->my_func->dinarpal_decrypt($vx);
                                        $vault = $this->m_vault->get($v_id);
                                        if (isset($vault) && !empty($vault)) {
//                                            $data['vault'] = $vault;
                                            $data['items'] = $vault[0];
                                            $ivmt_id = $vault[0]->ivmt_id;
                                            if ($ivmt_id == 2) {
                                                $v_id_parent = $vault[0]->v_id_parent;
                                                $data['listOwners'] = $this->m_vault->AllOwnerVaucher($v_id_parent);
                                            }
                                        } else {
                                            redirect(site_url('member/dinarDirham/overviewDetail/512'));
                                        }
                                    } else {
                                        redirect(site_url('member/dinarDirham/overviewDetail/512'));
                                    }
                                    break;
                                case '5132':
                                    $title = 'Item to Liquid Receipt';
                                    $v_idx = $this->input->get('v');
                                    $v_id = $this->my_func->dinarpal_decrypt($v_idx);
                                    $vault = $this->m_vault->get($v_id);
                                    $sl_id = (isset($vault) && !empty($vault)) ? ($vault[0]->sl_id) : (0);
                                    $sl = $this->m_storage_location->get($sl_id);
                                    $sl_name = (isset($sl) && !empty($sl)) ? ($sl[0]->sl_name) : ("-");
                                    $v_price_rate = (isset($vault) && !empty($vault)) ? ($vault[0]->v_price_rate) : (0.00);
//                                    print_r($sl_name); die();
                                    $ft_id_liquid_fee = 8;
                                    $ft_liquid_fee = $this->m_fee_type->get($ft_id_liquid_fee);
                                    $ft_rate = (isset($ft_liquid_fee) && !empty($ft_liquid_fee)) ? ($ft_liquid_fee[0]->ft_price) : (0.00);
                                    $ft_price = 0.00;
                                    $ft_rate = 0.00;
                                    if (isset($ft_liquid_fee) && !empty($ft_liquid_fee)) {
                                        if ($ft_liquid_fee[0]->ft_type == 'STATIC') {
                                            $ft_rate = 1.00;
                                            $ft_price = $ft_liquid_fee[0]->ft_price;
                                        } else if ($ft_liquid_fee[0]->ft_type == 'DYNAMIC') {
                                            $ft_rate = $ft_liquid_fee[0]->ft_price;
                                            $ft_price = $ft_rate * $v_price_rate;
                                        }
                                    }
                                    $data['ft_price'] = $ft_price;
                                    $data['ft_rate'] = $ft_rate;
                                    $data['sl_name'] = $sl_name;
                                    $data['vault'] = $vault;
                                    break;
                                case '515':
                                    $title = 'Minting Item';
                                    if ($this->input->get('v')) {
                                        $vx = $this->input->get('v');
                                        $v_id = $this->my_func->dinarpal_decrypt($vx);
                                        $vault = $this->m_vault->get($v_id);
                                        $data['vault'] = $vault;
                                        $gst_rate = $this->my_func->getGST();
                                        $v_price_rate = 0.00;
                                        if (isset($vault) && !empty($vault)) {
                                            if (is_numeric($vault[0]->v_price_rate)) {
                                                $v_price_rate = $vault[0]->v_price_rate;
                                            }
                                        }
                                        $data['v_price_rate'] = $v_price_rate;
                                        
                                        $minting_ft_id = 20;
                                        $minting_ft_price = $this->my_func->getFee($minting_ft_id, $v_price_rate);
                                        $minting_gst = $gst_rate * $minting_ft_price;
                                        $data['minting_fee'] = $minting_ft_price;
                                        $data['minting_gst'] = $minting_gst;
                                        
                                        $packaging_ft_id = 21;
                                        $packaging_ft_price = $this->my_func->getFee($packaging_ft_id, $v_price_rate);
                                        $packaging_gst = $gst_rate * $packaging_ft_price;
                                        $data['packaging_fee'] = $packaging_ft_price;
                                        $data['packaging_gst'] = $packaging_gst;
                                        
                                        $total_pack_mint = $minting_ft_price + $minting_gst + $packaging_ft_price + $packaging_gst;
                                        $data['total_pack_mint'] = $total_pack_mint;
                                        
                                        $total_harga = $v_price_rate + $total_pack_mint;
                                        $data['total_harga'] = $total_harga;
                                        
                                        $keep_ft_id = 7;
                                        $keep_ft_price = $this->my_func->getFee($keep_ft_id, $total_harga);
                                        $keep_gst = $gst_rate * $keep_ft_price;
                                        $data['keep_fee'] = $keep_ft_price;
                                        $data['keep_gst'] = $keep_gst;
                                        $total_keep = $keep_ft_price + $keep_gst;
                                        $data['total_keep'] = $total_keep;
                                        
                                        $total_need_pay = $total_keep + $total_pack_mint;
                                        $data['total_need_pay'] = $total_need_pay;
                                        
                                        $data['currency'] = $this->my_func->getCurrency();
                                        $data['gst_rate'] = $gst_rate;
                                        $data['gst_rate2'] = $gst_rate * 100;
                                        
                                    } else {
                                        redirect(site_url('member/dinarDirham/overviewDetail/512'));
                                    }
                                    break;
                                case '5131':
                                    $title = 'Liquid to '.$this->my_func->getCurrency();
                                    if ($this->input->get('v')) {
                                        $vx = $this->input->get('v');
                                        $v_id = $this->my_func->dinarpal_decrypt($vx);
                                        $vault = $this->m_vault->get($v_id);
                                        $data['vault'] = $vault;
                                        $v_price_rate = (isset($vault) && !empty($vault)) ? ($vault[0]->v_price_rate) : (0.00);
//                                        print_r($v_price_rate); die();
                                        $ft_id_liquid_fee = 8;
                                        $ft_liquid_fee = $this->m_fee_type->get($ft_id_liquid_fee);
                                        $ft_rate = (isset($ft_liquid_fee) && !empty($ft_liquid_fee)) ? ($ft_liquid_fee[0]->ft_price) : (0.00);
                                        $ft_price = 0.00;
                                        $ft_rate = 0.00;
                                        if (isset($ft_liquid_fee) && !empty($ft_liquid_fee)) {
                                            if ($ft_liquid_fee[0]->ft_type == 'STATIC') {
                                                $ft_rate = 1.00;
                                                $ft_price = $ft_liquid_fee[0]->ft_price;
                                            } else if ($ft_liquid_fee[0]->ft_type == 'DYNAMIC') {
                                                $ft_rate = $ft_liquid_fee[0]->ft_price;
                                                $ft_price = $ft_rate * $v_price_rate;
                                            }
                                        }
                                        $data['ft_price'] = $ft_price;
                                        $data['ft_rate'] = $ft_rate;
                                        $data['ft_id'] = $ft_id_liquid_fee;
                                        // me_account_type : personal / corporat account
                                        $me_account_type = $sess['me_account_type'];
                                        $data['me_account_type'] = $me_account_type;
                                        $data['storage'] = $this->m_storage_location->getAll();
                                    } else {
                                        redirect(site_url('member/dinarDirham/overviewDetail/512'));
                                    }
                                    break;
                                case '5121':
                                    $title = 'DP Store';
                                    $me_type = $sess['me_type'];
                                    $data['me_type'] = $me_type;
                                    $data['vault'] = $this->m_vault->getAll_personal(5, $me_id, 1);
                                    break;
                                case '5122x':
                                    if ($this->input->get('v')) {
                                        $v_idx = $this->input->get('v');
                                        $v_id = $this->my_func->dinarpal_decrypt($v_idx);
                                        
                                        $v = $this->m_vault->get($v_id);
                                        if (isset($v) && !empty($v)) {
                                            
//                                            print_r($v); die();
                                            
                                            $item_name = $v[0]->itc_name . ' (' . $v[0]->it_name . ')';
                                            
                                            $ivmt_id = $v[0]->ivmt_id;
                                            
                                            $itp_price = $v[0]->itp_price;
                                            $v_weight = (is_numeric($v[0]->v_weight)) ? ($v[0]->v_weight) : (0);
                                            $v_price_rate = (is_numeric($v[0]->v_price_rate)) ? ($v[0]->v_price_rate) : (0);
//                                            $price = $itp_price * $v_weight;
                                            $price = $v_price_rate;
                                            $ft_id_receive = 10; //fee type ID=10 = receive payment fee
                                            
                                            $ft_receive = $this->m_fee_type->get($ft_id_receive);
                                            
//                                            $ft_rate_receive = 0.00;
//                                            if ($me_type != 'DP') {
//                                                $ft_rate_receive = (isset($ft_receive) && !empty($ft_receive)) ? ($ft_receive[0]->ft_price) : (0.00);
//                                            }
                                            
                                            $receive_fee = 0.00;
                                            
                                            $ft_type = (isset($ft_receive) && !empty($ft_receive)) ? ($ft_receive[0]->ft_type) : ('STATIC');
                                            $ft_rate_receive = (isset($ft_receive) && !empty($ft_receive)) ? ($ft_receive[0]->ft_price) : (0);
                                            if ($me_type != 'DP') {
                                                if ($ft_type == 'STATIC') {
                                                    $receive_fee = $ft_rate_receive;
                                                } else if ($ft_type == 'DYNAMIC') {
                                                    $receive_fee = $price * $ft_rate_receive;
                                                }
                                            }
                                            
//                                            $receive_fee = ($price * $ft_rate_receive) + 0.50;
//                                            $receive_fee = ($price * $ft_rate_receive);
                                            $ft_id_keep = 7; //fee type ID=7 = vault keep fee
                                            $ft_keep = $this->m_fee_type->get($ft_id_keep);
                                            
//                                            $ft_rate_keep = 0.00;
//                                            if ($me_type != 'DP') {
//                                                $ft_rate_keep = (isset($ft_keep) && !empty($ft_keep)) ? ($ft_keep[0]->ft_price) : (0.00);
//                                            }
//                                            $keep_fee = ($price * ($ft_rate_keep * 12));
                                            
                                            $ft_type = (isset($ft_keep) && !empty($ft_keep)) ? ($ft_keep[0]->ft_type) : ('STATIC');
                                            $ft_rate_keep = (isset($ft_keep) && !empty($ft_keep)) ? ($ft_keep[0]->ft_price) : (0.00);
                                            $keep_fee = 0.00;
                                            if ($me_type != 'DP') {
                                                if ($ivmt_id == 1) {
                                                    if ($ft_type == 'STATIC') {
                                                        $keep_fee = $ft_rate_keep;
                                                    } else if ($ft_type == 'DYNAMIC') {
                                                        $keep_fee = ($price * $ft_rate_keep);
                                                    }
                                                }
                                            }
                                            
                                            $totalFee = $keep_fee + $receive_fee;
                                            
                                            $gst_rate = $this->my_func->getGST();
                                            $gst_tax = $gst_rate * $totalFee;
                                            
                                            $totalAfterGST = $gst_tax + $totalFee;
                                            
                                            $me_id_hq = $this->my_func->getMeAdminHQ();
                                            $tr_datetime = date('Y-m-d H:i:s');
                                            
//                                            print_r("$totalFee = $keep_fee + $receive_fee; $totalAfterGST = $gst_tax + $totalFee;"); die();
//                                            print_r($tr_datetime); die();
                                            
                                            if ($me_id_hq != 0) {
                                                
                                                $me_id_from = $me_id;
                                                $amount_from = $totalAfterGST;
                                                $at_id_from = 1; //dinarpal money
                                                $status_from = 2; //deduct
                                                $bol1 = $this->debit_kredit($me_id_from, $amount_from, $at_id_from, $status_from);

                                                if ($bol1) {
                                                    
                                                    if ($totalFee > 0) {
                                                        $this->payGeneology($me_id_from, $at_id_from, $totalFee, $tr_datetime);
                                                    }
                                                    
                                                    // user success send money
                                                    $me_id_to = $me_id_hq;
                                                    $amount_to = $amount_from;
                                                    $at_id_to = $at_id_from;
                                                    $status_to = 1; //add
//                                                    $bol2 = $this->debit_kredit($me_id_to, $amount_to, $at_id_to, $status_to);
                                                    $bol2 = true;
                                                    $this->debit_kredit_fund($me_id_to, $keep_fee, 'FEES', 1);
                                                    $this->debit_kredit_fund($me_id_to, $receive_fee, 'FEES', 1);
                                                    $this->debit_kredit_fund($me_id_to, $gst_tax, 'GST', 1);

                                                    if ($bol2) {
                                                        // admin success receive money

                                                        if ($receive_fee > 0) {
                                                            // record of receive & keep transaction
                                                            $data_tr_receive = array(
                                                                'me_id_from' => $me_id_from,
                                                                'me_id_to' => $me_id_to,
                                                                'tr_amount' => $receive_fee,
                                                                'at_id' => 6,
                                                                'ft_id' => $ft_id_receive,
                                                                'tr_notes' => 'Receive payment fee for gaining item ' . $v_weight . 'g of ' . $item_name . '.',
                                                                'tr_datetime' => $tr_datetime,
                                                                'tt_id' => 37, 
                                                                'ts_id' => 1 // 1 - completed
                                                            );
                                                            $tr_id_receive = $this->m_transaction->add($data_tr_receive);
                                                        }
                                                        
                                                        if ($keep_fee > 0) {
                                                            // record of keep vault transaction
                                                            $data_tr_keep = array(
                                                                'me_id_from' => $me_id_from,
                                                                'me_id_to' => $me_id_to,
                                                                'tr_amount' => $keep_fee,
                                                                'at_id' => 6,
                                                                'ft_id' => $ft_id_keep,
                                                                'tr_notes' => 'Keep fee for keeping ' . $v_weight . 'g of ' . $item_name . ' in DinarPal vault.',
                                                                'tr_datetime' => $tr_datetime,
                                                                'tt_id' => 24, 
                                                                'ts_id' => 1 // 1 - completed
                                                            );
                                                            $tr_id_keep = $this->m_transaction->add($data_tr_keep);
                                                        }
                                                        
                                                        if ($gst_tax > 0) {
                                                            $data_tr_gst = array(
                                                                'me_id_from' => $me_id_from,
                                                                'me_id_to' => $me_id_to,
                                                                'tr_amount' => $gst_tax,
                                                                'at_id' => 7,
                                                                'ft_id' => 13,
                                                                'tr_notes' => 'GST Tax Fee for receiving item.',
                                                                'tr_datetime' => $tr_datetime,
                                                                'tt_id' => 25, 
                                                                'ts_id' => 1 // 1 - completed
                                                            );
                                                            $tr_id_gst = $this->m_transaction->add($data_tr_gst);
                                                        }
                                                        
//                                                        if ($tr_id_keep > 0 && $tr_id_receive > 0) {
                                                            
                                                            // change status of send_payment_gram
                                                            $spg_x1 = $this->m_send_payment_gram->getTransaction($me_id, $v_id);
                                                            $spg_id = (isset($spg_x1) && !empty($spg_x1)) ? ($spg_x1[0]->spg_id) : (0);
                                                            $tr_id = (isset($spg_x1) && !empty($spg_x1)) ? ($spg_x1[0]->tr_id) : (0);
                                                            $data_spg = array(
                                                                'spg_status' => 2
                                                            );
                                                            $this->m_send_payment_gram->edit($spg_id, $data_spg);
                                                            
                                                            // if all item retrieved, the gram transaction is completed
                                                            $spg_x2 = $this->m_send_payment_gram->getCheckTransaction($me_id, $tr_id);
                                                            if (!isset($spg_x2) || empty($spg_x2)) {
                                                                $data_tr2 = array(
                                                                    'ts_id' => 1 // completed
                                                                );
                                                                $this->m_transaction->edit($tr_id, $data_tr2);
                                                            }
                                                            
                                                            // change to vault keep
                                                            $data_vault = array(
                                                                'vt_id' => 3 
                                                            );
                                                            $this->m_vault->edit($v_id, $data_vault);
                                                            
                                                            redirect(site_url('member/dinarDirham/overviewDetail/512'));
//                                                        } else {
//                                                            // return back money if error while transactions
//                                                            $this->debit_kredit($me_id_from, $amount_from, $at_id_from, $status_to);
//                                                            $this->debit_kredit($me_id_to, $amount_from, $at_id_from, $status_from);
//                                                            redirect(site_url('member/dinarDirham/myReceivedItem/5122'));
//                                                        }
                                                        
                                                    } else {
                                                        // return back money if error while admin receive money
                                                        $this->debit_kredit($me_id_from, $amount_from, $at_id_from, $status_to);
                                                        redirect(site_url('member/dinarDirham/myReceivedItem/5122'));
                                                    }
                                                } else {
                                                    // user fail send money (maybe cause of insufficient balance)
                                                    redirect(site_url('member/dinarDirham/myReceivedItem/5122'));
                                                }
                                            } else {
                                                $this->session->set_flashdata('error', 'Opss! We got some problems at the HQ.');
                                                redirect(site_url('member/dinarDirham/myReceivedItem/5122'));
                                            }
                                            
                                        } else {
                                            $this->session->set_flashdata('error', 'Opss! Invalid item.');
                                            redirect(site_url('member/dinarDirham/myReceivedItem/5122'));
                                        }
                                    } else {
                                        $this->session->set_flashdata('error', 'Opss! Invalid entry.');
                                        redirect(site_url('member/dinarDirham/myReceivedItem/5122'));
                                    }
                                    break;
                                case '5122':
                                    $title = 'New Received Item';
                                    $data['vault'] = $this->m_send_payment_gram->getAll($me_id);
                                    break;
                                case '512':
                                        $title = 'My Vault';
//                                        $data['item_storage1'] = $this->m_item_storage->get_byMember($me_id, 1);
//                                        $data['item_storage2'] = $this->m_item_storage->get_byMember($me_id, 2);
                                    $data['send_payment_gram'] = $this->m_send_payment_gram->getAll($me_id);
                                    $me_type = $sess['me_type'];
                                    $me_id = $sess['me_id'];
                                    $data['me_type'] = $me_type;
                                    $data['me_id'] = $me_id;
                                    $vt_id = 3; //(isset($me_type) && !empty($me_type)) ? (($me_type == 'DP') ? (5) : (3)) : (3);
                                    $data['vault'] = $this->m_vault->getAll_personal($vt_id, $me_id);
				case '51':
                                    
                                        // calculate pawn gold
                                        $totalWeightPawn_gold = 0.00;
                                        $totalLoanPawn_gold = 0.00;
                                        $pcc_status = 1;
                                        $it_id = 1;
                                        $vault_pawn_gold = $this->m_pawn_child_child->getAll3($me_id, $pcc_status, $it_id);
                                        if (isset($vault_pawn_gold) && !empty($vault_pawn_gold)) {
                                            foreach ($vault_pawn_gold as $vpg) {
                                                
                                                $totalWeightPawn_gold += ((is_numeric($vpg->v_weight)) ? ($vpg->v_weight) : (0));
                                                
                                                $pcc_pay_loan = (is_numeric($vpg->pcc_pay_loan)) ? ($vpg->pcc_pay_loan) : (0);
                                                $pcc_rahnu_rate = (is_numeric($vpg->pcc_rahnu_rate)) ? ($vpg->pcc_rahnu_rate) : (0);
                                                $pcc_marhun_price = (is_numeric($vpg->pcc_marhun_price)) ? ($vpg->pcc_marhun_price) : (0);
                                                $loan = $pcc_marhun_price * ($pcc_rahnu_rate * 1.0 / 100);
                                                $after_loan = $loan - $pcc_pay_loan;
                                                $totalLoanPawn_gold += $after_loan;
                                            }
                                        }
                                        
                                        // calculate pawn silver
                                        $totalWeightPawn_silver = 0.00;
                                        $totalLoanPawn_silver = 0.00;
                                        $pcc_status = 1;
                                        $it_id = 2;
                                        $vault_pawn_silver = $this->m_pawn_child_child->getAll3($me_id, $pcc_status, $it_id);
                                        if (isset($vault_pawn_silver) && !empty($vault_pawn_silver)) {
                                            foreach ($vault_pawn_silver as $vps) {
                                                
                                                $totalWeightPawn_silver += ((is_numeric($vps->v_weight)) ? ($vps->v_weight) : (0));
                                                
                                                $pcc_pay_loan = (is_numeric($vps->pcc_pay_loan)) ? ($vps->pcc_pay_loan) : (0);
                                                $pcc_rahnu_rate = (is_numeric($vps->pcc_rahnu_rate)) ? ($vps->pcc_rahnu_rate) : (0);
                                                $pcc_marhun_price = (is_numeric($vps->pcc_marhun_price)) ? ($vps->pcc_marhun_price) : (0);
                                                $loan = $pcc_marhun_price * ($pcc_rahnu_rate * 1.0 / 100);
                                                $after_loan = $loan - $pcc_pay_loan;
                                                $totalLoanPawn_silver += $after_loan;
                                            }
                                        }
                                        
                                        // calculate keep gold
                                        $vault_gold = $this->m_vault->getAll_personal(3, $me_id, 1, 1);
                                        $totalItem_gold = 0.00;
                                        $totalWeightVault_gold = 0.00;
                                        if (isset($vault_gold) && !empty($vault_gold)) {
                                            foreach ($vault_gold as $vg) {
                                                $totalItem_gold += 1;
                                                $totalWeightVault_gold += ($vg->v_weight);
                                            }
                                        }
                                        
                                        // calculate keep silver
                                        $vault_silver = $this->m_vault->getAll_personal(3, $me_id, 1, 2);
                                        $totalItem_silver = 0.00;
                                        $totalWeightVault_silver = 0.00;
                                        if (isset($vault_silver) && !empty($vault_silver)) {
                                            foreach ($vault_silver as $vs) {
                                                $totalItem_silver += 1;
                                                $totalWeightVault_silver += ($vs->v_weight);
                                            }
                                        }
                                        
                                        $data['totalWeightPawn_gold'] = $totalWeightPawn_gold;
                                        $data['totalLoanPawn_gold'] = $totalLoanPawn_gold;
                                        $data['totalWeightPawn_silver'] = $totalWeightPawn_silver;
                                        $data['totalLoanPawn_silver'] = $totalLoanPawn_silver;
                                        $data['totalItem_gold'] = $totalItem_gold;
                                        $data['totalWeightVault_gold'] = $totalWeightVault_gold;
                                        $data['totalItem_silver'] = $totalItem_silver;
                                        $data['totalWeightVault_silver'] = $totalWeightVault_silver;
					$data['dinarpal_account'] = $this->m_dinarpal_account->get_member($me_id);
                                        $data['transaction1'] = $this->m_transaction->getAll($me_id, 'DESC', $this->my_func->getLimitRows());
                                        $data['send_payment_gram'] = $this->m_send_payment_gram->getAll($me_id);
                                        
                                        $data['dinarpal_funds'] = $this->m_dinarpal_funds->getMe($me_id);
                                        
					break;
                                        
                                case '522':
                                    $title = 'List Of Item';
                                    break;    
                                    
				case '521':
					$data['payment_temp'] = $this->session->userdata('payment_temp');
                                        
                                        $me_id_from = $data['payment_temp']['me_id_from'];
                                        $me_id_to = $data['payment_temp']['me_id_to'];
                                        
                                        $me_sender = $this->m_members->get($me_id_from);
                                        $me_receiver = $this->m_members->get($me_id_to);
                                        
                                        $me_sender_image = (isset($me_sender) && !empty($me_sender)) ? ($me_sender[0]->me_image) : ("default-img.jpg");
                                        $me_sender_username = (isset($me_sender) && !empty($me_sender)) ? ($me_sender[0]->me_username) : ("-");
                                        $me_sender_email = (isset($me_sender) && !empty($me_sender)) ? ($me_sender[0]->me_email) : ("-");
                                        $me_receiver_image = (isset($me_receiver) && !empty($me_receiver)) ? ($me_receiver[0]->me_image) : ("default-img.jpg");
                                        $me_receiver_username = (isset($me_receiver) && !empty($me_receiver)) ? ($me_receiver[0]->me_username) : ("-");
                                        $me_receiver_email = (isset($me_receiver) && !empty($me_receiver)) ? ($me_receiver[0]->me_email) : ("-");
                                        
                                        $data['me_sender_image'] = $me_sender_image;
                                        $data['me_sender_username'] = $me_sender_username;
                                        $data['me_sender_email'] = $me_sender_email;
                                        $data['me_receiver_image'] = $me_receiver_image;
                                        $data['me_receiver_username'] = $me_receiver_username;
                                        $data['me_receiver_email'] = $me_receiver_email;
                                        
//                                        print_r($data); die();
					//$this->session->unset_userdata('payment_temp');
				case '52':
					if ($this->input->get('pp')) {
						$pp = $this->input->get('pp');
						$data['pp'] = $pp;
//						$pa_id = $this->my_func->pemecahArRahnu($pp, 'PP');
                                                $pa_id = $this->my_func->dinarpal_decrypt($pp);
						$data['pp'] = $this->m_pawn->get($pa_id);
					}
                                        if ($this->input->get('pcc')) {
						$pcc = $this->input->get('pcc');
						$stat = $this->input->get('stat');
						$pay = $this->input->get('pay');
						$data['pcc'] = $pcc;
                                                $data['statpcc'] = $stat;
                                                $pcc_id = $this->my_func->dinarpal_decrypt($pcc);
						$data['pcc'] = $this->m_pawn_child_child->get($pcc_id, $stat);
                                                $data['pay'] = $pay;
					}
                                        if ($this->input->get('pcc2')) {
						$pcc = $this->input->get('pcc2');
						$stat = $this->input->get('stat');
						$data['pcc2'] = $pcc;
                                                $data['statpcc'] = $stat;
                                                $pcc_id = $this->my_func->dinarpal_decrypt($pcc);
						$data['pcc2'] = $this->m_pawn_child_child->get($pcc_id, $stat);
					}
                                        if ($this->input->get('pa')) {
                                                $pa = $this->input->get('pa');
						$stat = $this->input->get('stat');
						$data['pa'] = $pa;
                                                $data['statpcc'] = $stat;
                                                $pa_id = $this->my_func->dinarpal_decrypt($pa);
                                                $data['pa'] = $this->m_pawn_child_child->getAll($pa_id, $stat);
                                        }
                                        // payment merchant
                                        if ($this->input->get('product')) {
                                            $prodx = $this->input->get('product');
                                            $bap_id = $this->my_func->dinarpal_decrypt($prodx);
                                            $data['product'] = $this->input->get('product');
                                            $data['bap'] = $this->m_button_api->get($bap_id);
                                        }
					$data['payment_type'] = $this->m_payment_type->getAll();
					$data['account_type'] = $this->m_account_type->getAll();
					$sess = $this->session->all_userdata();
					$data['sess'] = $sess;
                                        $data['me_account_type'] = $sess['me_account_type'];
					                    $title = 'Regular Transaction';
                                        if ($this->uri->segment(3) == 'payment') {
                                            $title = 'Regular Transaction';
                                        } else if ($this->uri->segment(3) == 'paymentAmanah') {
                                            $data['construction_dinarpal'] = 1;
                                            $title = 'Amanah Deal';
                                        } else if ($this->uri->segment(3) == 'paymentAmanahGram') {
                                            $data['construction_dinarpal'] = 1;
                                            $title = 'Amanah Deal';
                                        } 
					break;

				case '1001' :     if ($this->uri->segment(3) == 'paymentSummary') {
                                            $title = 'Amanah Deal';
                                        } 
 
				             break;

				case '100':
					if ($this->input->get('pp')) {
						$pp = $this->input->get('pp');
						$data['pp'] = $pp;
//						$pa_id = $this->my_func->pemecahArRahnu($pp, 'PP');
                                                $pa_id = $this->my_func->dinarpal_decrypt($pp);
						$data['pp'] = $this->m_pawn->get($pa_id);
					}
                                        if ($this->input->get('pcc')) {
						$pcc = $this->input->get('pcc');
						$stat = $this->input->get('stat');
						$pay = $this->input->get('pay');
						$data['pcc'] = $pcc;
                                                $data['statpcc'] = $stat;
                                                $pcc_id = $this->my_func->dinarpal_decrypt($pcc);
						$data['pcc'] = $this->m_pawn_child_child->get($pcc_id, $stat);
                                                $data['pay'] = $pay;
					}
                                        if ($this->input->get('pcc2')) {
						$pcc = $this->input->get('pcc2');
						$stat = $this->input->get('stat');
						$data['pcc2'] = $pcc;
                                                $data['statpcc'] = $stat;
                                                $pcc_id = $this->my_func->dinarpal_decrypt($pcc);
						$data['pcc2'] = $this->m_pawn_child_child->get($pcc_id, $stat);
					}
                                        if ($this->input->get('pa')) {
                                                $pa = $this->input->get('pa');
						$stat = $this->input->get('stat');
						$data['pa'] = $pa;
                                                $data['statpcc'] = $stat;
                                                $pa_id = $this->my_func->dinarpal_decrypt($pa);
                                                $data['pa'] = $this->m_pawn_child_child->getAll($pa_id, $stat);
                                        }
					$data['payment_type'] = $this->m_payment_type->getAll();
					$data['account_type'] = $this->m_account_type->getAll();
					$data['sess'] = $this->session->all_userdata();
					$title = 'Amanah Deal';

					break;
                                case '531':
                                        if ($this->input->get('cancel')) {
                                            $ad_id = $this->my_func->dinarpal_decrypt($this->input->get('cancel'));
                                            $ad_arr = array('ts_id' => 4);
                                            $ad_bol = $this->m_amanah_deal->edit($ad_id, $ad_arr);
                                            if ($ad_bol) {
                                                $this->session->set_flashdata('sucess', 'Cancel of Amanah Deal success ..');
                                            } else {
                                                $this->session->set_flashdata('error', 'Oops! Something wrong with the cancel!');
                                            }
                                            redirect(site_url('member/dinarDirham/amanah/53'));
                                        }
                                        if ($this->input->get('dispute')) {
                                            $ad_id = $this->my_func->dinarpal_decrypt($this->input->get('dispute'));
                                            $ad_arr = array('ts_id' => 3);
                                            $ad_bol = $this->m_amanah_deal->edit($ad_id, $ad_arr);
                                            if ($ad_bol) {
                                                $this->session->set_flashdata('sucess', 'Dispute of Amanah Deal success ..');
                                            } else {
                                                $this->session->set_flashdata('error', 'Oops! Something wrong with the dispute!');
                                            }
                                            redirect(site_url('member/dinarDirham/amanah/53'));
                                        }
                                        if ($this->input->get('confirm')) {
                                            $ad_id = $this->my_func->dinarpal_decrypt($this->input->get('confirm'));
                                            $ad = $this->m_amanah_deal->get($ad_id);
                                            if ($ad) {
                                                $me_id_from = $ad[0]->me_id_from;
                                                $me_id_to = $ad[0]->me_id_to;
                                                $amount = $ad[0]->ad_amount;
                                                $at_id = $ad[0]->at_id;
                                                $ft_id = $ad[0]->ft_id;
                                                $fee_price = $ad[0]->ft_price;
                                                $notes = $ad[0]->ad_notes;
                                                $new_amount = $amount - $fee_price;
                                                //print_r($ad); print_r($new_amount); die();
                                                
                                                // change amanah deal status
                                                $ad_arr = array('ts_id'=>1);
                                                $ad_bol = $this->m_amanah_deal->edit($ad_id, $ad_arr);
                                                if ($ad_bol) {
                                                    // deduct from 'from account'
                                                    $me_from_bol = $this->debit_kredit($me_id_from, $amount, $at_id, 2);
                                                    if ($me_from_bol) {
                                                        // add to 'to account'
                                                        $me_to_bol = $this->debit_kredit($me_id_to, $new_amount, $at_id, 1);
                                                        // add fee to 'admin account'
                                                        $admin_bol = $this->debit_kredit_admin(1, $fee_price, $at_id, 1);
                                                        if ($me_to_bol && $admin_bol) {
                                                            $trans_arr = array(
                                                                'me_id_from' => $me_id_from,
                                                                'me_id_to' => $me_id_to,
                                                                'tr_amount' => $amount,
                                                                'at_id' => $at_id,
                                                                'ft_id' => $ft_id,
                                                                'tr_notes' => $notes,
                                                                'tr_datetime' => date('Y-m-d H:i:s'),
                                                                'tt_id' => 4,
                                                                'ts_id' => 1
                                                            );
                                                            $trans_bol = $this->m_transaction->add($trans_arr);
                                                            if ($trans_arr) {
                                                                $this->session->set_flashdata('sucess', 'Confirmation of Amanah Deal success ..');
                                                                redirect(site_url('member/dinarDirham/amanah/53'));
                                                            } else {
                                                                $this->session->set_flashdata('error', 'Oops! Something wrong with the transaction!');
                                                                redirect(site_url('member/dinarDirham/amanah/53'));
                                                            }
                                                        } else {
                                                            $this->session->set_flashdata('error', 'Oops! Something wrong with the transaction!');
                                                            redirect(site_url('member/dinarDirham/amanah/53'));
                                                        }
                                                    } else {
                                                        $this->session->set_flashdata('error', 'Oops! Something wrong with the transaction!');
                                                        redirect(site_url('member/dinarDirham/amanah/53'));
                                                    }
                                                } else {
                                                    $this->session->set_flashdata('error', 'Oops! Something wrong with the transaction!');
                                                    redirect(site_url('member/dinarDirham/amanah/53'));
                                                }
                                                
                                            } else {
                                                $this->session->set_flashdata('error', 'Oops! Something wrong with the transaction!');
                                                redirect(site_url('member/dinarDirham/amanah/53'));
                                            }
                                        }
				case '53':
                                    $data['construction_dinarpal'] = 1;
                                        $data['amanah_deal_from'] = $this->m_amanah_deal->getAll($me_id, -1, -1, 'desc');
                                        $data['amanah_deal_to'] = $this->m_amanah_deal->getAll(-1, $me_id, -1, 'desc');
					$title = 'Amanah Deal';
					break;
                                case '541':
//                                    $data['construction_dinarpal'] = 1;
					$this->session->unset_userdata('session_withdrawal');
					$this->session->unset_userdata('tr_id');
					$data['me_id'] = $me_id;
					$data['account_type'] = $this->m_account_type->getAll();
					$data['banks_category'] = $this->m_banks_category->getAll();
                                        $title = 'Withdrawals Gram';
                                        break;
                                case '5412':
                                    $title = 'Withdrawals Gram';
                                    if ($this->input->post()) {
                                        $arr = $this->input->post();
                                        $data['arr'] = $arr;
                                        
                                        $me = $this->m_members->get($me_id);
                                        
                                        $me_address1 = (isset($me) && !empty($me)) ? ($me[0]->me_address1) : ("-");
                                        $me_city1 = (isset($me) && !empty($me)) ? ($me[0]->me_city1) : ("-");
                                        $me_state1 = (isset($me) && !empty($me)) ? ($me[0]->me_state1) : ("-");
                                        $me_postcode1 = (isset($me) && !empty($me)) ? ($me[0]->me_postcode1) : ("-");
                                        $me_country1 = (isset($me) && !empty($me)) ? ($me[0]->me_country1) : ("-");
                                        $me_address1 = $me_address1 . ", " . $me_city1 . ", " . $me_state1 . ", " . $me_postcode1 . ", " . $me_country1;
                                        
                                        $me_address2 = (isset($me) && !empty($me)) ? ($me[0]->me_address2) : ("-");
                                        $me_city2 = (isset($me) && !empty($me)) ? ($me[0]->me_city2) : ("-");
                                        $me_state2 = (isset($me) && !empty($me)) ? ($me[0]->me_state2) : ("-");
                                        $me_postcode2 = (isset($me) && !empty($me)) ? ($me[0]->me_postcode2) : ("-");
                                        $me_country2 = (isset($me) && !empty($me)) ? ($me[0]->me_country2) : ("-");
                                        $me_address2 = $me_address2 . ", " . $me_city2 . ", " . $me_state2 . ", " . $me_postcode2 . ", " . $me_country2;
                                        
                                        $data['me_address1'] = $me_address1;
                                        $data['me_address2'] = $me_address2;
                                        
                                    } else {
                                        $this->session->set_flashdata('error', 'Access Denied!');
                                        redirect(site_url('member/dinarDirham/withdrawalsGram/541'));
                                    }
                                    break;
                                case '541x':
                                    $title = 'Withdrawals Transactions';
                                    $withdrawal_gram = $this->m_withdrawal_gram->getAll($me_id);
                                    $data['withdrawal_gram'] = $withdrawal_gram;
                                    break;
                                case '541xd':
                                    $title = 'Withdrawals Transactions Detail';
                                    $wg_idx = $this->input->get('wg');
                                    $wg_id = $this->my_func->dinarpal_decrypt($wg_idx);
                                    $withdrawal_gram_child1 = $this->m_withdrawal_gram_child->getAll($wg_id);
                                    $data['withdrawal_gram_child'] = $withdrawal_gram_child1;
                                    $pending = 0;
                                    $completed = 0;
                                    $rejected = 0;
                                    if (isset($withdrawal_gram_child1) && !empty($withdrawal_gram_child1)) {
                                        foreach ($withdrawal_gram_child1 as $wgc) {
                                            $pending = ($wgc->wgcs_id == 1) ? ($pending + 1) : ($pending);
                                            $completed = ($wgc->wgcs_id == 2) ? ($completed + 1) : ($completed);
                                            $rejected = ($wgc->wgcs_id == 3) ? ($rejected + 1) : ($rejected);
                                        }
                                    }
                                    $data['pending'] = $pending;
                                    $data['completed'] = $completed;
                                    $data['rejected'] = $rejected;
                                    break;
                                case '5413':
                                    $title = 'Withdrawals Gram';
                                    if ($this->input->post()) {
                                        $arr = $this->input->post();
//                                        print_r($arr); die();
                                        
                                        $wg_type = $arr['wg_type'];
                                        
                                        $tr_datetime = date('Y-m-d H:i:s');
                                        
                                        $v_ids = $arr['v_ids'];
                                        $v_ids2 = $v_ids;
                                        
                                        $v_weights = 0.00;
                                        $itp_prices = 0.00;
                                        foreach ($v_ids2 as $v_id2) {
                                            $va2 = $this->m_vault->get($v_id2);
                                            $v_weights += ((isset($va2) && !empty($va2)) ? ($va2[0]->v_weight) : (0));
                                            $itp_prices += ((isset($va2) && !empty($va2)) ? ($va2[0]->itp_price * $va2[0]->v_weight) : (0));
                                        }
                                        
                                        $ft_price = 0.00;
                                        if ($me_type != 'DP') {
                                            $ft_price = $this->my_func->getFee(14, $itp_prices);
                                        }
                                        
                                        $gst_rate = $this->my_func->getGST();
                                        $gst_tax = $gst_rate * $ft_price;

                                        $ft_price2 = 0.00;
                                        if ($me_type != 'DP') {
                                            if ($wg_type == 'home') {
                                                $ft_price2 = $this->my_func->getFee(19, $itp_prices);
                                            }
                                        }

                                        $gst_tax2 = $gst_rate * $ft_price2;
                                        $gst_tax += $gst_tax2;
                                        
                                        $ft_price3 = 0.00;
                                        if ($me_type != 'DP') {
                                            if ($wg_type == 'home') {
                                                $ft_price3 = $this->my_func->getFee(22, $itp_prices);
                                            }
                                        }

                                        $gst_tax3 = $gst_rate * $ft_price3;
                                        $gst_tax += $gst_tax3;

                                        $fee = $ft_price + $gst_tax + $ft_price2 + $ft_price3;
                                        $at_id = 1;
                                        $status_debit = 2; // deduct

//                                        print_r("$fee = $ft_price + $gst_tax;"); die();
//                                        print_r("$fee = $ft_price + $gst_tax + $ft_price2 + $ft_price3;"); die();
                                        
                                        $me_id_hq = $this->my_func->getMeAdminHQ();
                                        
                                        $isPaid = $this->debit_kredit($me_id, $fee, $at_id, $status_debit);
                                        
                                        if ($isPaid) {
                                            
                                            $at_id_gram = 2;
                                            $tr_wg = array(
                                                'me_id_from' => $me_id,
                                                'tr_amount' => $v_weights,
                                                'at_id' => $at_id_gram,
                                                'ft_id' => 14,
                                                'tr_notes' => 'Withdrawal Gram',
                                                'tr_datetime' => $tr_datetime,
                                                'tt_id' => 31,
                                                'ts_id' => 2
                                            );
                                            $tr_id_wg = $this->m_transaction->add($tr_wg);
                                            
                                            $this->debit_kredit_fund($me_id_hq, $ft_price, 'FEES', 1);
                                            $this->debit_kredit_fund($me_id_hq, $ft_price2, 'FEES', 1);
                                            $this->debit_kredit_fund($me_id_hq, $ft_price3, 'FEES', 1);
                                            $this->debit_kredit_fund($me_id_hq, $gst_tax, 'GST', 1);
                                            
                                            if ($ft_price > 0) {
                                                $tr_fee = array(
                                                    'me_id_from' => $me_id,
                                                    'me_id_to' => $me_id_hq,
                                                    'tr_amount' => $ft_price,
                                                    'at_id' => 6,
                                                    'ft_id' => 14,
                                                    'tr_notes' => 'Withdrawal Fee (Gram)',
                                                    'tr_datetime' => $tr_datetime,
                                                    'tt_id' => 30, // withdrawal gram fee
                                                    'ts_id' => 1
                                                );
                                                $this->m_transaction->add($tr_fee);

                                                $this->payGeneology($me_id, $at_id, $ft_price, $tr_datetime);

                                                $tr_gst = array(
                                                    'me_id_from' => $me_id,
                                                    'me_id_to' => $me_id_hq,
                                                    'tr_amount' => $gst_tax-$gst_tax2-$gst_tax3,
                                                    'at_id' => 7,
                                                    'ft_id' => 13,
                                                    'tr_notes' => 'GST Tax Fee',
                                                    'tr_datetime' => $tr_datetime,
                                                    'tt_id' => 25,
                                                    'ts_id' => 1
                                                );
                                                $this->m_transaction->add($tr_gst);
                                            }
                                            
                                            if ($ft_price2 > 0) {
                                                $tr_fee2 = array(
                                                    'me_id_from' => $me_id,
                                                    'me_id_to' => $me_id_hq,
                                                    'tr_amount' => $ft_price2,
                                                    'at_id' => 6,
                                                    'ft_id' => 19,
                                                    'tr_notes' => 'Courier Fee',
                                                    'tr_datetime' => $tr_datetime,
                                                    'tt_id' => 50, // courier fee
                                                    'ts_id' => 1
                                                );
                                                $this->m_transaction->add($tr_fee2);

                                                $this->payGeneology($me_id, $at_id, $ft_price2, $tr_datetime);

                                                $tr_gst2 = array(
                                                    'me_id_from' => $me_id,
                                                    'me_id_to' => $me_id_hq,
                                                    'tr_amount' => $gst_tax2,
                                                    'at_id' => 7,
                                                    'ft_id' => 13,
                                                    'tr_notes' => 'GST Tax Fee',
                                                    'tr_datetime' => $tr_datetime,
                                                    'tt_id' => 25,
                                                    'ts_id' => 1
                                                );
                                                $this->m_transaction->add($tr_gst2);
                                            }
                                            
                                            if ($ft_price3 > 0) {
                                                $tr_fee3 = array(
                                                    'me_id_from' => $me_id,
                                                    'me_id_to' => $me_id_hq,
                                                    'tr_amount' => $ft_price3,
                                                    'at_id' => 6,
                                                    'ft_id' => 22,
                                                    'tr_notes' => 'Handling Service Fee',
                                                    'tr_datetime' => $tr_datetime,
                                                    'tt_id' => 52, // handling service fee
                                                    'ts_id' => 1
                                                );
                                                $this->m_transaction->add($tr_fee3);

                                                $this->payGeneology($me_id, $at_id, $ft_price3, $tr_datetime);

                                                $tr_gst3 = array(
                                                    'me_id_from' => $me_id,
                                                    'me_id_to' => $me_id_hq,
                                                    'tr_amount' => $gst_tax3,
                                                    'at_id' => 7,
                                                    'ft_id' => 13,
                                                    'tr_notes' => 'GST Tax Fee',
                                                    'tr_datetime' => $tr_datetime,
                                                    'tt_id' => 25,
                                                    'ts_id' => 1
                                                );
                                                $this->m_transaction->add($tr_gst3);
                                            }
                                            
                                            $wg_code = (isset($arr['wg_code']) && !empty($arr['wg_code'])) ? ($arr['wg_code']) : ("");
                                            $wg_address = (isset($arr['wg_address']) && !empty($arr['wg_address'])) ? ($arr['wg_address']) : ("");
                                            
                                            $data_wg = array(
                                                'tr_id' => $tr_id_wg,
                                                'me_id' => $me_id,
                                                'wg_code' => $wg_code,
                                                'wg_datetime' => $tr_datetime,
                                                'wg_type' => $wg_type,
                                                'wg_address' => $wg_address,
                                                'wgs_id' => 1
                                            );
                                            $wg_id = $this->m_withdrawal_gram->add($data_wg);

                                            if ($wg_id) {
                                                
                                                $total_paid_withdraw = $ft_price + $gst_tax + $ft_price2 + $ft_price3;
                                                
                                                $v_weights = (isset($v_weights) && !empty($v_weights) && is_numeric($v_weights)) ? (number_format($v_weights, 2)) : ("0.00");
                                                $ft_price = (isset($ft_price) && !empty($ft_price) && is_numeric($ft_price)) ? (number_format($ft_price, 2)) : ("0.00");
                                                $ft_price2 = (isset($ft_price2) && !empty($ft_price2) && is_numeric($ft_price2)) ? (number_format($ft_price2, 2)) : ("0.00");
                                                $gst_tax = (isset($gst_tax) && !empty($gst_tax) && is_numeric($gst_tax)) ? (number_format($gst_tax, 2)) : ("0.00");
                                                $total_paid_withdraw = (isset($total_paid_withdraw) && !empty($total_paid_withdraw) && is_numeric($total_paid_withdraw)) ? (number_format($total_paid_withdraw, 2)) : ("0.00");
                                                
                                                $this->session->set_userdata('items_withdraw', $v_ids);
                                                $this->session->set_userdata('method_withdraw', $wg_type);
                                                $this->session->set_userdata('weight_withdraw', $v_weights);
                                                $this->session->set_userdata('fee_withdraw', $ft_price);
                                                $this->session->unset_userdata('fee_courier');
                                                $this->session->unset_userdata('fee_handling');
                                                if ($wg_type == 'home') {
                                                    $this->session->set_userdata('fee_courier', $ft_price2);
                                                    $this->session->set_userdata('fee_handling', $ft_price3);
                                                }
                                                $this->session->set_userdata('gst_withdraw', $gst_tax);
                                                $this->session->set_userdata('total_paid_withdraw', $total_paid_withdraw);
                                                $this->session->set_userdata('wg_code', $wg_code);
                                                $this->session->set_userdata('wg_address', $wg_address);
                                                $this->session->set_userdata('tr_datetime', $tr_datetime);
                                                
                                                foreach ($v_ids as $v_id) {

                                                    $data_wgc = array(
                                                        'wg_id' => $wg_id,
                                                        'v_id' => $v_id,
                                                        'wgcs_id' => 1
                                                    );
                                                    $wgc_id = $this->m_withdrawal_gram_child->add($data_wgc);

                                                    $data_v = array(
                                                        'vt_id' => 2 // go to vault ghost
                                                    );
                                                    $this->m_vault->edit($v_id, $data_v);
                                                }
                                                
                                                $sess = $this->session->all_userdata();
                                                $me_username = $sess['me_username'];
                                                $subject = "DinarPal GRM Withdrawal Request - Pending";
                                                $msg = "Username " . $me_username . " has request a " . $v_weights . " GRM withdrawal.";
                                                $this->my_func->send_email_allAdmins($subject, $msg, $tr_datetime);
                                                
                                                redirect(site_url('member/dinarDirham/withdrawalsGram3/5413'));
                                                
                                            } else {
                                                $this->session->set_flashdata('error', 'Access Denied!');
                                                redirect(site_url('member/dinarDirham/withdrawalsGram/541'));
                                            }
                                        } else {
                                            redirect(site_url('member/dinarDirham/withdrawalsGram/541'));
                                        }
                                        
                                    }
                                    break;
				case '54':
					$this->session->unset_userdata('session_withdrawal');
					$this->session->unset_userdata('tr_id');
                                        $this->session->unset_userdata('tr_datetime');
                                        $this->session->unset_userdata('bank_to');
                                        $this->session->unset_userdata('bank_holder');
                                        $this->session->unset_userdata('bank_name');
					$data['me_id'] = $me_id;
					$data['account_type'] = $this->m_account_type->getAll();
					$data['banks_category'] = $this->m_banks_category->getAll();
				case '56':
					if ($this->input->post()) {
						$arr = $this->input->post();
                                                
                                                $tr_amount = $arr['tr_amount'];
                                                $at_id = $arr['at_id'];
                                                
//                                                print_r($arr); die();
                                                
                                                $isEnoughMoney = $this->debit_kredit($me_id, $tr_amount, $at_id, 2);
                                                if ($isEnoughMoney) {
                                                    $this->debit_kredit($me_id, $tr_amount, $at_id, 1);
                                                } else {
                                                    redirect(site_url('member/dinarDirham/withdrawals/54'));
                                                }
                                                
						if ('' == $tr_amount || NULL == $tr_amount || empty($tr_amount)) {
                                                    $this->session->set_flashdata('error', 'Invalid amount!');
                                                    redirect(site_url('member/dinarDirham/withdrawals/54'));
						}
                                                $isNumeric = is_numeric($tr_amount);
                                                if ($isNumeric == false) {
                                                    $this->session->set_flashdata('error', 'Invalid amount! Must number only.');
                                                    redirect(site_url('member/dinarDirham/withdrawals/54'));
                                                }
						$this->session->set_userdata('session_withdrawal', $arr);
                                                $bc_id = $arr['bc_id'];
						$banks = $this->m_banks_members->getAll_basedMe($me_id);
                                                $data['banks'] = $banks;
//                                                print_r($arr); die();
                                                $data['arr'] = $arr;
                                                $at_id = $arr['at_id'];
                                                $at = $this->m_account_type->get($at_id);
                                                $at_desc = (isset($at) && !empty($at)) ? ($at[0]->at_desc) : ("-");
                                                $data['at_desc'] = $at_desc;
                                                $data['amount'] = (is_numeric($arr['tr_amount'])) ? (number_format($arr['tr_amount'], 2)) : ("0.00");
                                                $bc_id = $arr['bc_id'];
                                                $bc = $this->m_banks_category->get($bc_id);
                                                $bc_name = (isset($bc) && !empty($bc)) ? ($bc[0]->bc_name) : ("-");
                                                $data['bc_name'] = $bc_name;
                                                $data['currency'] = $this->my_func->getCurrency();
					}
				case '57':
					if ($this->input->post('withdraw2')) {
						$arr1 = $this->input->post();
                                                $arr2 = $this->session->userdata('session_withdrawal');
                                                $arrMerge = array_merge($arr1, $arr2);
//                                                print_r($arrMerge); die();
                                                
                                                $at_id = $arrMerge['at_id'];
                                                $at = $this->m_account_type->get($at_id);
                                                $at_desc = (isset($at) && !empty($at)) ? ($at[0]->at_desc) : ("-");
                                                $data['account'] = $at_desc;
                                                
                                                $data['currency'] = $this->my_func->getCurrency();
                                                $amount = $arrMerge['tr_amount'];
                                                $amount = (is_numeric($amount)) ? ($amount) : (0);
                                                $data['amount'] = number_format($amount, 2);
                                                
                                                $w_fee = $this->my_func->getFee(5, $amount);
                                                $w_fee = (is_numeric($w_fee)) ? ($w_fee) : (0);
                                                $data['wfee'] = number_format($w_fee, 2);
                                                
                                                $bc_id = $arrMerge['bc_id'];
                                                $bc = $this->m_banks_category->get($bc_id);
                                                $bc_fee = (isset($bc) && !empty($bc)) ? ($bc[0]->bc_fee) : (0);
                                                $bc_fee = (is_numeric($bc_fee)) ? ($bc_fee) : (0);
                                                $data['bcfee'] = number_format($bc_fee, 2);
                                                
                                                $total_fees = $w_fee + $bc_fee;
                                                $total_fees = (is_numeric($total_fees)) ? ($total_fees) : (0);
                                                $data['totalfees'] = number_format($total_fees, 2);
                                                
                                                $gst_rate = $this->my_func->getGST();
                                                $gst_tax = $gst_rate * $total_fees;
                                                $gst_tax = (is_numeric($gst_tax)) ? ($gst_tax) : (0);
                                                $gst_tax = ($gst_tax < 0.01 && $gst_tax != 0) ? (0.01) : ($gst_tax);
                                                $data['gst_tax'] = number_format($gst_tax, 2);
                                                
                                                $deduct_amount = $amount + $total_fees + $gst_tax;
                                                $deduct_amount = (is_numeric($deduct_amount)) ? ($deduct_amount) : (0);
                                                $data['deduct_amount'] = number_format($deduct_amount, 2);
                                                
                                                $bc_name = (isset($bc) && !empty($bc)) ? ($bc[0]->bc_name) : ("-");
                                                $data['bcname'] = $bc_name;
                                                
                                                $bm_id = $arrMerge['bm_id'];
                                                $bm = $this->m_banks_members->get($bm_id);
                                                $bank_to_account_number = (isset($bm) && !empty($bm)) ? ($bm[0]->bm_accountnumber) : ("-");
                                                $data['tan'] = $bank_to_account_number;
                                                
                                                $bank_holder_name = (isset($bm) && !empty($bm)) ? ($bm[0]->bm_holdername) : ("-");
                                                $bank_name = (isset($bm) && !empty($bm)) ? ($bm[0]->ba_name) : ("-");
                                                $data['ahn'] = $bank_holder_name . ' (' . $bank_name . ')';
                               
                                                $data['arr'] = $arrMerge;
					}
                                        $data['account_name'] = '';
					$title = 'Withdrawal';
					break;
                                case '571':
                                    $arr = $this->session->userdata('session_withdrawal');
                                    if (isset($arr) && !empty($arr)) {
                                        $arr1x = $this->input->post();
                                        $arr1 = array();
                                        foreach ($arr1x as $arx => $arxval) {
                                            $arr1[$arx] = $this->my_func->dinarpal_decrypt($arxval);
                                        }
                                        $arr2 = $this->session->userdata('session_withdrawal');
                                        $arrMerge = array_merge($arr1, $arr2);
                                        $bc = $this->m_banks_category->get($arrMerge['bc_id']);
                                        
//                                        print_r($arrMerge); die();

                                        unset($arrMerge['withdraw2']);
                                        unset($arrMerge['bc_id']);
                                        unset($arrMerge['table1_length']);
                                        $arrMerge['tt_id'] = 2;
                                        $arrMerge['ts_id'] = 2;

                                        $me_id_hq = $this->my_func->getMeAdminHQ();
                                        $arrMerge['me_id_to'] = 0;
                                        $arrMerge['me_id_from'] = $me_id;

                //                                                print_r($arrMerge); die();

                                        $tr_datetime = $arrMerge['tr_datetime'];

                                        $bm_id = $arrMerge['bm_id'];
                                        $bm = $this->m_banks_members->get($bm_id);
                                        $bank_to_account_number = (isset($bm) && !empty($bm)) ? ($bm[0]->bm_accountnumber) : ("-");
                                        $bank_holder_name = (isset($bm) && !empty($bm)) ? ($bm[0]->bm_holdername) : ("-");
                                        $bank_name = (isset($bm) && !empty($bm)) ? ($bm[0]->ba_name) : ("-");
                                        //$bol_substract = $this->debit_kredit($arrMerge['me_id_from'], $arrMerge['tr_amount'], $arrMerge['at_id'], 2); // 2 for substract.
                                        //if ($bol_substract) {
                                        if (isset($bc)) {

                                            $fee = 0.00;
                                            if ($me_type != 'DP') {
                                                $fee = $bc[0]->bc_fee;
                                            }

                                            $data_trans = array(
                                                'me_id' => $me_id,
                                                'tr_amount' => $fee,
                                                'at_id' => $arrMerge['at_id'],
                                                'tr_datetime' => date('Y-m-d H:i:s'),
                                                'ft_id' => $arrMerge['ft_id'],
                                                'ts_id' => 1
                                            );
                                            //$bol_trans = $this->m_dinarpal_transaction->add($data_trans);
                                            // add admin account
                                            //$bol_admin_account = $this->debit_kredit_admin(1, $fee, $arr['at_id'], 1);
                                            //if ($bol_trans && $bol_admin_account) {
                                            //$arrMerge['tr_amount'] -= $fee;
                                            //print_r($arrMerge); die();
                //                                                                        print_r($bm); die();

                                            $at_id = $arrMerge['at_id'];

                                            $tr_amount = $arrMerge['tr_amount'];

                                            $ft_id = $arrMerge['ft_id'];
                                            $ft = $this->m_fee_type->get($ft_id);
                                            $ft_price = 0.00;

                                            if ($me_type != 'DP') {
                                                if (isset($ft) && !empty($ft)) {
                                                    $ft_type = $ft[0]->ft_type;
                                                    $ft_price = $ft[0]->ft_price;
                                                    if ($ft_type == 'DYNAMIC') {
                                                        $ft_price = $ft_price * $tr_amount;
                                                    }
                                                }
                                            }

                                            $bc_fee = 0.00;
                                            if ($me_type != 'DP') {
                                                $bc_fee = (isset($bm) && !empty($bm)) ? ($bm[0]->bc_fee) : (0.00);
                                            }

                                            $gst_rate = $this->my_func->getGST();
                                            $gst_tax = $gst_rate * ($ft_price + $bc_fee);

                                            $amount_get_deduct = $ft_price + $bc_fee + $gst_tax;
                                            $amount_get = $tr_amount;
                                            $amount_draw = $tr_amount + $amount_get_deduct;

                                            $bol_check_bal = $this->debit_balance($me_id, $amount_draw, $at_id, 2);
                                            if ($bol_check_bal == false) {
                                                redirect(site_url('member/dinarDirham/withdrawals/54'));
                                            }

                                            $min_trans = $this->my_func->getMinimumTrans();
                                            $min_trans = (is_numeric($min_trans)) ? ($min_trans) : (1.00);
                                            if ($tr_amount < $min_trans) {
                                                $this->session->set_flashdata('error', 'Opss! Amount you withdraw is lower than valid minimum value!');
                                                redirect(site_url('member/dinarDirham/withdrawals/54'));
                                            }

                                            if ($amount_get < 0.01) {
                                                $this->session->set_flashdata('error', 'Opss! Amount you get is too low!');
                                                redirect(site_url('member/dinarDirham/withdrawals/54'));
                                            }

                                            $tr_amount = (is_numeric($tr_amount)) ? (number_format($tr_amount, 2)) : ("0.00");
                                            $ft_price = (is_numeric($ft_price)) ? (number_format($ft_price, 2)) : ("0.00");
                                            $bc_fee = (is_numeric($bc_fee)) ? (number_format($bc_fee, 2)) : ("0.00");
                                            $gst_tax = (is_numeric($gst_tax)) ? (number_format($gst_tax, 2)) : ("0.00");
                                            $amount_get = (is_numeric($amount_get)) ? (number_format($amount_get, 2)) : ("0.00");

                                            $arrMerge['bc_fee'] = $bc_fee;

                                            $bol_withdraw = $this->m_transaction->add($arrMerge);
                                            if ($bol_withdraw) {

                                                $currency = $this->my_func->getCurrency();
                                                $sess = $this->session->all_userdata();
                                                $me_username = $sess['me_username'];
                                                $subject = "DinarPal " . $currency . " Withdrawal Request - Pending";
                                                $msg = "Username " . $me_username . " has request a " . $currency . " " . $tr_amount . " withdrawal.";
                                                $this->my_func->send_email_allAdmins($subject, $msg, $tr_datetime);

                                                $this->session->set_userdata('tr_id', $bol_withdraw);
                                                $this->session->set_userdata('tr_datetime', $tr_datetime);
                                                $this->session->set_userdata('bank_to', $bank_to_account_number);
                                                $this->session->set_userdata('bank_holder', $bank_holder_name);
                                                $this->session->set_userdata('bank_name', $bank_name);
                                                $this->session->set_userdata('tr_amount', $tr_amount);
                                                $this->session->set_userdata('ft_price', $ft_price);
                                                $this->session->set_userdata('bc_fee', $bc_fee);
                                                $this->session->set_userdata('gst_tax', $gst_tax);
                                                $this->session->set_userdata('amount_get', $amount_get);
                                                //$this->session->set_flashdata('sucess', 'Alhamdulillah, your transaction is successful.');
                                                redirect(site_url('member/dinarDirham/withdrawals3/57'));
                                            } else {
                                                $this->session->set_flashdata('error', 'Something is wrong! Cannot withdraw your amount.');
                                                redirect(site_url('member/dinarDirham/withdrawals/54'));
                                            }
                                            //} else {
                                            //	$this->session->set_flashdata('error', 'Something is wrong! Cannot withdraw your amount.');
                                            //	redirect(site_url('member/dinarDirham/withdrawals/54'));
                                            //}
                                        } else {
                                            $this->session->set_flashdata('error', 'Something is wrong! Cannot withdraw your amount.');
                                            redirect(site_url('member/dinarDirham/withdrawals/54'));
                                        }
                                    } else {
                                        $this->session->set_flashdata('error', 'Access Denied');
                                        redirect(site_url('member/dinarDirham/withdrawals/54'));
                                    }
                                    break;
                                case '551':
                                        if ($this->input->get('trid')) {
                                                $tr_id = $this->my_func->dinarpal_decrypt($this->input->get('trid'));
                                                $trDetail = $this->m_transaction->get($tr_id);
                                                $data['trDetail'] = $trDetail;
                                                $tt_code = $trDetail[0]->tt_code;
                                                
//                                                echo $tt_code; die();
                                                
                                                $path = APPPATH . "views/member/resit/$tt_code.php";
                                                $ise = file_exists($path);
                                                
                                                if ($ise) {
                                                    $data['pageResit'] = $this->load->view('member/resit/'.$tt_code, $data, true);
                                                } else {
                                                    $data['pageResit'] = $this->load->view('member/resit/inProgress', '', true);
                                                }
                                        }
				case '55':
					$data['transaction1'] = $this->m_transaction->getAll($me_id, 'DESC', $this->my_func->getLimitRows());
                                        $data['transaction_type'] = $this->m_transaction_type->getAll();
                                        $data['transaction_status'] = $this->m_transaction_status->getAll();
                                        if ($this->input->post('searchform')) {
                                                $arr = $this->input->post();
                                                $tt_id = $arr['tt_id'];
                                                $ts_id = $arr['ts_id'];
                                                $data['arr'] = $arr;
                                                $ser = '';
                                                if ($this->input->post('carian1')) {
                                                    $carian1 = $this->input->post('carian1');
                                                    if ($carian1 != '' && $carian1 != null) {
                                                        $ser = $carian1;
                                                        $data['carian1'] = $carian1;
                                                    }
                                                }
                                                $data['transaction1'] = $this->m_transaction->getAll($me_id, 'DESC', $this->my_func->getLimitRows(), $ts_id, $tt_id, $ser);
                                        }
					$title = 'Transaction History';
                                        
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
                                        $this->session->unset_userdata('bap_name');
                                        $this->session->unset_userdata('bap_image');
                                        $this->session->unset_userdata('item_price');
                                        $this->session->unset_userdata('at_id');
                                        $this->session->unset_userdata('quantity');
                                        $this->session->unset_userdata('gst_tax');
                                        $this->session->unset_userdata('shipping');
                                        $this->session->unset_userdata('total_paid');
                                        $this->session->unset_userdata('datetime');
                                        $this->session->unset_userdata('bap_id');
                                        $this->session->unset_userdata('gram_weight');
                                        $this->session->unset_userdata('total_v_weight');

                                        break;
                                case '581':
                                        if ($this->input->post('deposit') == "1") {
                                                $arr = $this->input->post();
                                                unset($arr['deposit']);
                                                $amount = $arr['de_amount'];
                                                if (!isset($amount) || $amount == "" || $amount == null 
                                                        || $amount <= 0 || empty($amount) || !is_numeric($amount)) {
                                                    $this->session->set_flashdata('error', 'Opss! Invalid amount!!');
                                                    redirect(site_url('member/dinarDirham/deposit/58'));
                                                }
                                                $data['fee'] = $this->m_fee_type->get(6);
                                                $data['det'] = $this->m_deposit_type->get($arr['det_id']);
                                                $data['arr'] = $arr;
                                        }
                                case '582':
                                        if ($this->input->post('deposit') == "2") {
                                                $arr = $this->input->post();
                                                
                                                unset($arr['deposit']);
                                                unset($arr['tr_amount1']);
                                                $arr['ts_id'] = 2;
                                                $arr['tt_id'] = 3;
                                                $arr['tr_deposit_code'] = $this->my_func->getRandomVal();
                                                
                                                $ft_id_deposit = 6;
                                                $ft_deposit = $this->m_fee_type->get($ft_id_deposit);
                                                $tr_amount = $arr['tr_amount'];
                                                $ft_price = 0.00;
                                                
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
                                                
                                                $tr_amount_full = $tr_amount + $gst_tax + $ft_price;
                                                
//                                                print_r($arr); die();
                                                $me_id_hq = $this->my_func->getMeAdminHQ();
                                                
                                                // trans deposit
                                                $data_trans1 = array(
                                                    'me_id_from' => $me_id_hq,
                                                    'me_id_to' => $arr['me_id_from'],
                                                    'tr_amount' => $tr_amount_full,
                                                    'at_id' => $arr['at_id'],
                                                    'ft_id' => $ft_id_deposit,
                                                    'tr_notes' => $arr['tr_notes'],
                                                    'tr_datetime' => $tr_datetime,
                                                    'tt_id' => 3,
                                                    'ts_id' => $arr['ts_id'],
                                                    'det_id' => $arr['det_id'],
                                                    'tr_deposit_code' => $arr['tr_deposit_code']
                                                );
                                                $bol_depo = $this->m_transaction->add($data_trans1);
                                                $dc = $this->m_dinarpal_config->getAll();
                                                $admin_account_no = (isset($dc) && !empty($dc)) ? ($dc[0]->dc_admin_bank_account) : ("-");
                                                $admin_account_name = (isset($dc) && !empty($dc)) ? ($dc[0]->dc_admin_bank_name) : ("-");
                                                if ($bol_depo) {
                                                    
                                                        $currency = $this->my_func->getCurrency();
                                                        $sess = $this->session->all_userdata();
                                                        $me_username = $sess['me_username'];
                                                        $subject = "DinarPal Deposit Request - Pending";
                                                        $tr_amount_full1 = (is_numeric($tr_amount_full)) ? (number_format($tr_amount_full, 2)) : ("0.00");
                                                        $msg = "Username " . $me_username . " has request a bank transfer deposit of " . $currency . " " . $tr_amount_full1 . ".";
                                                        $this->my_func->send_email_allAdmins($subject, $msg, $tr_datetime);
                                                    
                                                        $this->session->set_userdata('de_code', $arr['tr_deposit_code']);
                                                        $this->session->set_userdata('admin_account_no', $admin_account_no);
                                                        $this->session->set_userdata('admin_account_name', $admin_account_name);
                                                        $this->session->set_userdata('de_amount', $tr_amount_full);
                                                        $this->session->set_userdata('tr_datetime', $tr_datetime);
                                                        $this->session->set_userdata('deposit_fee', $ft_price);
                                                        $this->session->set_userdata('gst_tax', $gst_tax);
                                                        $this->session->set_userdata('tr_notes', $arr['tr_notes']);
                                                        //$this->session->set_flashdata('sucess', 'Alhamdulillah, your transaction is successful.');
                                                        redirect(site_url('member/dinarDirham/deposit3/582'));
                                                } else {
                                                        $this->session->set_flashdata('error', 'Opps! Your transaction is failed!!');
                                                        redirect(site_url('member/dinarDirham/deposit/58'));
                                                }
                                        }
                                case '58':
                                        $data['deposit_type'] = $this->m_deposit_type->getAll(1);
                                        $title = 'Deposit';
                                        break;
                                case '59':
//                                    $data['construction_dinarpal'] = 1;
                                    $title = "Cash Deposit Machine";
                                        
                                    $this->session->set_userdata('img_deposit', '');
                                    $this->session->set_userdata('arr_deposit', '');
                                    break;
                                case '591':
                                    $title = 'Cash Deposit Machine';
                                    if ($this->input->post()) {
                                        $arr = $this->input->post();
                                        
//                                        print_r($sess); die();
                                        $me_type = $sess['me_type'];
                                        
                                        if ($arr['tr_amount'] == '' || $arr['tr_amount'] == null || $arr['tr_amount'] <= 0) {
                                            $this->session->set_flashdata('error', 'Please type a valid amount!');
                                            redirect(site_url('member/dinarDirham/cashdepositmachine/59'));
                                        }
                                        $arr['me_id_from'] = $me_id;
                                        $arr['ft_id'] = 6; //deposit fee
                                        $arr['tr_datetime'] = date('Y-m-d H:i:s');
                                        $arr['tt_id'] = 3; //deposit
                                        $arr['ts_id'] = 2; //pending
                                        $arr['det_id'] = 3; //cash deposit machine
                                        $data['arr'] = $arr;
                                        $tr_amount = $arr['tr_amount'];
//                                        print_r($tr_amount); die();
                                        $data['at'] = $this->m_account_type->get($arr['at_id']);
                                        $ft = $this->m_fee_type->get($arr['ft_id']);
//                                        print_r($ft); die();
                                        $data['ft'] = $ft;
                                        $ft_price = 0.00;
                                        
                                        if ($me_type != 'DP') {
                                            if (isset($ft) & !empty($ft)) {
                                                if ($ft[0]->ft_type == 'STATIC') {
                                                    $ft_price = $ft[0]->ft_price;
                                                } else if ($ft[0]->ft_type == 'DYNAMIC') {
                                                    $ft_rate = $ft[0]->ft_price;
                                                    $ft_price = $ft_rate * $tr_amount;
                                                }
                                            }
                                        }
                                        
//                                        print_r($ft_price); die();
                                        $data['ft_price'] = $ft_price;
                                        
                                        $gst_rate = $this->my_func->getGST();
                                        $gst_tax = $gst_rate * $ft_price;
                                        $data['gst_tax'] = $gst_tax;
                                        
                                        $img = $this->my_func->do_upload('tr_file', './assets/uploads/deposit/', 'gif|jpg|jpeg|png');
    //                                    print_r($img); die();
                                        if (isset($img['upload_data']) && !empty($img['upload_data'])) {
                                            $this->session->set_userdata('img_deposit', $img['upload_data']['file_name']);
                                            $arr['tr_file'] = $img['upload_data']['file_name'];
                                            $this->session->set_userdata('arr_deposit', $arr);
                                        } else {
                                            $error = $img['error'];
                                            $this->session->set_flashdata('error', 'Error: '.$error);
                                            redirect(site_url('member/dinarDirham/cashdepositmachine/59'));
                                        }
                                    } else {
                                        redirect(site_url('member/dinarDirham/cashdepositmachine/59'));
                                    }
                                    break;
                                case '592':
                                    $title = 'Cash Deposit Machine';
                                    $arr = $this->session->userdata('arr_deposit');
                                    $me_id_hq = $this->my_func->getMeAdminHQ();
                                    $arr['me_id_from'] = $me_id_hq;
                                    $arr['me_id_to'] = $me_id;
//                                    print_r($arr); die();
                                    $arr['tr_deposit_code'] = $this->my_func->getRandomVal();
                                    $fee = $this->m_fee_type->get($arr['ft_id']);
                                    
                                    $tr_amount = $arr['tr_amount'];
                                    $tr_datetime = date('Y-m-d H:i:s');
                                    $arr['tr_datetime'] = $tr_datetime;
                                    
                                    $de_fee = 0.00;
                                    
                                    $me_type = $sess['me_type'];
                                    if ($me_type != 'DP') {
                                        if (isset($fee) & !empty($fee)) {
                                            if ($fee[0]->ft_type == 'STATIC') {
                                                $de_fee = $fee[0]->ft_price;
                                            } else if ($fee[0]->ft_type == 'DYNAMIC') {
                                                $ft_rate = $fee[0]->ft_price;
                                                $de_fee = $ft_rate * $tr_amount;
                                            }
                                        }
                                    }
                                    
                                    $gst_rate = $this->my_func->getGST();
                                    $gst_tax = $gst_rate * $de_fee;
                                    $bol_depo = $this->m_transaction->add($arr);
                                    $dc = $this->m_dinarpal_config->getAll();
                                    $admin_account_no = (isset($dc) && !empty($dc)) ? ($dc[0]->dc_admin_bank_account) : ("-");
                                    $admin_account_name = (isset($dc) && !empty($dc)) ? ($dc[0]->dc_admin_bank_name) : ("-");
                                    if ($bol_depo) {
                                        
                                            $currency = $this->my_func->getCurrency();
                                            $sess = $this->session->all_userdata();
                                            $me_username = $sess['me_username'];
                                            $subject = "DinarPal Deposit Request - Pending";
                                            $tr_amount1 = (is_numeric($tr_amount)) ? (number_format($tr_amount, 2)) : ("0.00");
                                            $msg = "Username " . $me_username . " has request a cash deposit machine deposit of " . $currency . " " . $tr_amount1 . ".";
                                            $this->my_func->send_email_allAdmins($subject, $msg, $tr_datetime);

                                            $this->session->set_userdata('de_code', $arr['tr_deposit_code']);
                                            $this->session->set_userdata('admin_account_no', $admin_account_no);
                                            $this->session->set_userdata('admin_account_name', $admin_account_name);
                                            $this->session->set_userdata('de_amount', $tr_amount);
                                            $this->session->set_userdata('de_fee', $de_fee);
                                            $this->session->set_userdata('tr_datetime', $arr['tr_datetime']);
                                            $this->session->set_userdata('tr_notes', $arr['tr_notes']);
                                            $this->session->set_userdata('gst_tax', $gst_tax);
                                            //$this->session->set_flashdata('sucess', 'Alhamdulillah, your transaction is successful.');
                                            redirect(site_url('member/dinarDirham/cashdepositmachine3/593'));
                                    } else {
                                            $this->session->set_flashdata('error', 'Opps! Your transaction is failed!!');
                                            redirect(site_url('member/dinarDirham/cashdepositmachine/59'));
                                    }
                                    break;
                                case '593':
                                    $title = 'Cash Deposit Machine';
                                    break;
			}
			$this->_papar($data, 'dinarDirham/'.$output, $menu1, $title);
		}
		else
		{
			$this->_papar(); 
		}
	}
	
	public function tijari($output='dashboard', $menu1='11')
	{
                $sess = $this->session->all_userdata();
                $me_id = $sess['me_id'];
                $data['me_id'] = $me_id;
                
		if ($output != 'dashboard')
		{
			$title = 'E-Favorite';
			switch($menu1) {
                                case '451':
                                    if ($this->input->post('prod1')) {
                                        $arr = $this->input->post();
                                        unset($arr['prod1']);
                                        $arr['me_id'] = $me_id;
                                        
//                                        print_r($arr); die();
                                        
                                        if (!is_numeric($arr['bap_price']) && !is_numeric($arr['bap_gold']) && !is_numeric($arr['bap_silver'])) {
                                            $this->session->set_flashdata('error', 'Opss! Invalid price value!!');
                                            redirect(site_url('member/tijari/product/45'));
                                        }
                                        
                                        $arr['bap_price'] = (is_numeric($arr['bap_price'])) ? ($arr['bap_price']) : ("0");
                                        $arr['bap_gold'] = (is_numeric($arr['bap_gold'])) ? ($arr['bap_gold']) : ("0");
                                        $arr['bap_silver'] = (is_numeric($arr['bap_silver'])) ? ($arr['bap_silver']) : ("0");
                                        
                                        $bap_id = $this->m_button_api->add($arr);
                                        if ($bap_id) {
                                            $upload_data = $this->my_func->do_upload('bap_image', './assets/uploads/merchant/');
                                            if (isset($upload_data['upload_data'])) {
                                                $bap_goto_url = 'payment/?product='.$this->my_func->dinarpal_encrypt($bap_id);
                                                $data_bap = array(
                                                    'bap_hit' => 0,
                                                    'bap_sales' => 0,
                                                    'bap_image' => $upload_data['upload_data']['file_name'],
                                                    'bap_goto_url' => $bap_goto_url,
                                                    'bap_datetime' => date('Y-m-d H:i:s')
                                                );
                                                $this->m_button_api->edit($bap_id, $data_bap);
                                            } else {
                                                $this->m_button_api->delete($bap_id);
//                                                print_r($upload_data); die();
                                                $this->session->set_flashdata('error', 'Ops! Cannot upload product\'s image.<br />Error: '.$upload_data['error']);
                                                redirect(site_url('member/tijari/product/45'));
                                            }
                                        } else {
                                            $this->session->set_flashdata('error', 'Ops! Cannot add product. ..');
                                            redirect(site_url('member/tijari/product/45'));
                                        }
                                        redirect(site_url('member/tijari/productList/46'));
                                    }
                                case '45':
                                    $title = 'Payment Button';
                                    $data['purity1'] = $this->m_purity->getAll();
                                    $data['purity2'] = $this->m_purity->getAll();
                                    break;
                                case '47':
                                    $title = 'Merchant Summary';
                                    $data['button_api'] = $this->m_button_api->getAll_member($me_id);
                                    $data['purchase'] = $this->m_merchant->getPurchase($me_id);
                                    break;
                                case '471':
                                    $title = 'Merchant Summary Customer Detail';
                                    if ($this->input->get('bap')) {
                                        $bap_idx = $this->input->get('bap');
                                        $bap_id = $this->my_func->dinarpal_decrypt($bap_idx);
                                        
                                        $data['button_api'] = $this->m_button_api->get($bap_id);
                                        $data['merchant'] = $this->m_merchant->getBap($bap_id);
                                        
                                    } else {
                                        $this->session->set_flashdata('error', 'Access denied!');
                                        redirect(site_url('member/tijari/merchantList/47'));
                                    }
                                    break;
                                case '46':
                                    if ($this->input->get('action') && $this->input->get('product')) {
                                        $action = $this->input->get('action');
                                        $prodx = $this->input->get('product');
                                        $bap_id = $this->my_func->dinarpal_decrypt($prodx);
                                        $bap = $this->m_button_api->get($bap_id);
                                        if ($action == "delete") {
                                            if ($this->m_button_api->delete($bap_id) && (isset($bap) && !empty($bap))) {
                                                $bap_image = $bap[0]->bap_image;
                                                unlink('./assets/uploads/merchant/'.$bap_image);
                                            }
                                            redirect(site_url('member/tijari/productList/46'));
                                        } else if ($action == "deleteimage") {
                                            if ((isset($bap) && !empty($bap))) {
                                                $bap_image = $bap[0]->bap_image;
                                                unlink('./assets/uploads/merchant/'.$bap_image);
                                                $data_bap = array('bap_image' => '');
                                                $this->m_button_api->edit($bap_id, $data_bap);
                                            }
                                            $bap_idx = $this->my_func->dinarpal_encrypt($bap_id);
                                            redirect(site_url('member/tijari/productDetail/461?action=view&product='.$bap_idx));
                                        }
                                    }
                                    $data['button_api'] = $this->m_button_api->getAll_member($me_id);
                                    $title = 'Payment Link @ Button';
                                    break;
                                case '461':
                                    if ($this->input->post('prod1')) {
                                        $arr = $this->input->post();
                                        $bap_id = $arr['bap_id'];
                                        unset($arr['prod1']);
                                        unset($arr['bap_id']);
                                        unset($arr['bap_goto_url2']);
                                        unset($arr['bap_goto_url3']);
                                        $bap_goto_url = '';
                                        $bap_image = '';
                                        if ($arr['bap_image_status'] == 2) {
                                            $upload_data = $this->my_func->do_upload('bap_image', './assets/uploads/merchant/');
                                            if (isset($upload_data['upload_data'])) {
                                                $bap_image = $upload_data['upload_data']['file_name'];
                                                $bap_goto_url = 'payment/?product='.$this->my_func->dinarpal_encrypt($bap_id);
                                                $arr['bap_goto_url'] = $bap_goto_url;
                                                $arr['bap_image'] = $bap_image;
                                            }
                                        }
                                        unset($arr['bap_image_status']);
                                        $this->m_button_api->edit($bap_id, $arr);
                                        $bap_idx = $this->my_func->dinarpal_encrypt($bap_id);
                                        $this->session->set_flashdata('sucess', 'Edit Success.');
                                        redirect(site_url('member/tijari/productDetail/461?action=view&product='.$bap_idx));
                                    }
                                    if ($this->input->get('action') && $this->input->get('product')) {
                                        $action = $this->input->get('action');
                                        $prodx = $this->input->get('product');
                                        if ($action == "view") {
                                            $bap_id = $this->my_func->dinarpal_decrypt($prodx);
                                            $bap = $this->m_button_api->get($bap_id);
                                            if (isset($bap) && !empty($bap)) {
                                                $arr = array();
                                                foreach ($bap as $bapkey => $bapval) {
                                                    $arr[$bapkey] = $bapval;
                                                }
                                                $data['arr'] = $arr;
                                            } else {
                                                $this->session->set_flashdata('error', 'Opss! Something is wrong.');
                                                redirect(site_url('member/tijari/productList/46'));
                                            }
                                        } else {
                                            $this->session->set_flashdata('error', 'Opss! Something is wrong.');
                                            redirect(site_url('member/tijari/productList/46'));
                                        }
                                    } else {
                                        $this->session->set_flashdata('error', 'Opss! Something is wrong.');
                                        redirect(site_url('member/tijari/productList/46'));
                                    }
                                    $data['purity1'] = $this->m_purity->getAll();
                                    $data['purity2'] = $this->m_purity->getAll();
                                    $title = 'Product Detail';
                                    break;
				case '41':
//                                    $data['construction_dinarpal'] = 1;
                                    $title = 'Merchant API Code';
                                    $me_username = $sess['me_username'];
                                    $me_username_filtered = str_replace(' ', '_', $me_username);
                                    $data['username'] = $me_username_filtered;
                                    $data['merchantid'] = $this->my_func->getRandomVal('numeric', 12);
                                    $data['merchant_integration_api'] = $this->m_merchant_integration_api->getAll($me_id);
                                    $data['purity'] = $this->m_purity->getAll();
                                    if ($this->input->post('stats') == 2) {
                                        $arr = $this->input->post();
                                        $mia_idx = $arr['mia'];
                                        $mia_id = $this->my_func->dinarpal_decrypt($mia_idx);
                                        unset($arr['stats']);
                                        unset($arr['mia']);
                                        $arr2 = array(
                                            'mia_id' => $mia_id
                                        );
                                        $api_codes = $mia_id;
                                        foreach ($arr as $ar => $arval) {
                                            $arval2 = (isset($arval) && !empty($arval) && $arval != '' && $arval != null) ? ($arval) : ('0');
                                            $arval2 = str_replace(' ', '_', $arval2);
                                            $api_codes .= "|" . $arval2;
                                            $arr2['mpa_'.$ar] = $arval2;
                                        }
//                                        print_r($api_codes); die();
                                        $api_codes_enc = $this->my_func->dinarpal_encrypt($api_codes);
                                        $d['api_codes_enc'] = $api_codes_enc;
                                        $str_buttons = $this->load->view('member/tijari/ajax/formButton', $d, true);
                                        echo $str_buttons; die();
                                    }
                                    if ($this->input->post('stats') == 1) {
                                        $arr2 = $this->input->post();
                                        unset($arr2['stats']);
                                        
                                        if (!isset($arr2['merchant_id']) || empty($arr2['merchant_id']) || $arr2['merchant_id'] == '' || $arr2['merchant_id'] == null) {
                                            $this->session->flashdata('error', 'Opss! Merchant ID cannot be null.');
                                            redirect(site_url('member/tijari/productListing/41'));
                                        }
                                        if (!isset($arr2['secret_key']) || empty($arr2['secret_key']) || $arr2['secret_key'] == '' || $arr2['secret_key'] == null) {
                                            $this->session->flashdata('error', 'Opss! Secret key cannot be null.');
                                            redirect(site_url('member/tijari/productListing/41'));
                                        }
                                        if (!isset($arr2['return_url']) || empty($arr2['return_url']) || $arr2['return_url'] == '' || $arr2['return_url'] == null) {
                                            $this->session->flashdata('error', 'Opss! Return url cannot be null.');
                                            redirect(site_url('member/tijari/productListing/41'));
                                        }
                                        
                                        $arr = array();
                                        foreach ($arr2 as $ar2 => $ar2val) {
                                            $ar2val_filtered = str_replace(' ', '_', $ar2val);
                                            $arr['mia_'.$ar2] = $ar2val_filtered;
                                        }
                                        $arr['me_id'] = $me_id;
                                        $arr['mia_datetime'] = date('Y-m-d H:i:s');
                                        $arr['mia_status'] = 1;
//                                        print_r($arr2);
//                                        print_r($arr);
//                                        die();
                                        $mia_id = $this->m_merchant_integration_api->add($arr);
                                        if ($mia_id) {
                                            $this->session->flashdata('sucess', 'Add success.');
                                        } else {
                                            $this->session->flashdata('error', 'Opss! Add failed.');
                                        }
                                        redirect(site_url('member/tijari/productListing/41'));
                                    }
                                    if ($this->input->get('miaidx') && $this->input->get('status') == 'delete') {
                                        $miaidx = $this->input->get('miaidx');
                                        $mia_id = $this->my_func->dinarpal_decrypt($miaidx);
                                        $this->m_merchant_integration_api->delete($mia_id);
                                        redirect(site_url('member/tijari/productListing/41'));
                                    }
                                    break;
				case '43':
					$title = 'Online Store Services';
					break;
				/*case '42':
					$title = 'Subscribe To Me';
					break;
				case '43':
					$title = 'API Code';
					break;
				case '44':
					$title = 'Infak To Me';
					break;*/
			}
			$this->_papar($data, 'tijari/'.$output, $menu1, $title);
		}
		else
		{
			$this->_papar(); 
		}
	}
        
        function getAjaxSellBuyBoard() {
                $sess = $this->session->all_userdata();
                $me_id = $sess['me_id'];
                $data['me_id'] = $me_id;	
                $data['sellbuy_board'] = $this->m_sellbuy_board->getAll();
                echo $this->load->view('member/muamalat/ajax/getSellBuyBoard', $data, true);
        }
        
        function setAjaxSellBuyBoard() {
                if ($this->input->post('status')) {
                        $stat = $this->input->post('status');
                        if ($stat == 'add') {
                                $datas = $this->input->post('datas');
                                $arrSellBuyBoard = array();
                                for ($i=0; $i<sizeof($datas); $i++) {
                                    $data = explode("|", $datas[$i]);
                                    if ($data[0] != "" && $data[0] != NULL) {
                                        $arrSellBuyBoard[$data[0]] = $data[1];
                                    }
                                }
                                if ($arrSellBuyBoard['sb_weight'] == "" || !is_numeric($arrSellBuyBoard['sb_weight'])) {
                                    $this->session->set_flashdata('error', 'Invalid weight value!');
                                    echo "-1";
                                    die();
                                }
                                if ($arrSellBuyBoard['sb_pricepergram'] == "" || !is_numeric($arrSellBuyBoard['sb_pricepergram'])) {
                                    $this->session->set_flashdata('error', 'Invalid price per gram value!');
                                    echo "-1";
                                    die();
                                }
                                $bolAdd = $this->m_sellbuy_board->add($arrSellBuyBoard);
                                if ($bolAdd) {
                                    echo "1";
                                } else {
                                    $this->session->set_flashdata('error', 'Something is wrong! Cannot add your item!');
                                    echo "-1";
                                }
                        } else if ($stat == 'del') {
                                $sb_id = $this->my_func->dinarpal_decrypt($this->input->post('sb_id'));
                                $bolDel = $this->m_sellbuy_board->delete($sb_id);
                                if ($bolDel) {
                                    echo "1";
                                } else {
                                    $this->session->set_flashdata('error', 'Something is wrong! Cannot delete your item!');
                                    echo "-1";
                                }
                        } else {
                                $this->session->set_flashdata('error', 'Access Denied!');
                                echo "-1";
                        }
                } else {
                        $this->session->set_flashdata('error', 'Access Denied!');
                        echo "-1";
                }
        }
        
        function get_balance($me_id, $at_id)
	{
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
	
	public function muamalat($output='dashboard', $menu1='11')
	{
		if ($output != 'dashboard')
		{
			$data = array();
			$sess = $this->session->all_userdata();
			$me_id = $sess['me_id'];
			$data['me_id'] = $me_id;
			
			$title = 'E-Favorite';
			switch($menu1) {
				/*case '31':
				case '36':
					$title = 'Gold Group On';
					break;*/
				case '32':
                                    //$data['construction_dinarpal'] = 1;
                                        $data['sellbuy_board_type'] = $this->m_sellbuy_board_type->getAll();
                                        $data['sellbuy_board_status'] = $this->m_sellbuy_board_status->getAll();
                                        $data['item_type'] = $this->m_item_type->getAll();
                                        $data['me_username'] = $sess['me_username'];
					$title = 'Sell-Buy Board';
					break;
				case '33':
                                    $data['construction_dinarpal'] = 1;
					$title = 'E-Point Reward';
					break;
				case '35':
					if (sizeof($this->cart->contents()) <= 0) {
						$this->session->set_flashdata('error', 'Please adding your item into the list.');
						redirect(site_url('member/muamalat/purchase2/34'));
					}
					if ($this->input->post('dinarpal_form')) {
						if ($this->input->post('dinarpal_form') == 3) {
							$data['data_post'] = $this->input->post();
							$data['me'] = $this->m_members->get($me_id);
							//print_r($data['me']); die();
						}
					} else {
						$this->session->set_flashdata('error', 'Access Denied!');
						redirect(site_url('member/muamalat/purchase2/34'));
					}
				case '351':
                                        $this->session->unset_userdata('gs_sub_total');
                                        $this->session->unset_userdata('gs_discount');
                                        $this->session->unset_userdata('gs_fee');
                                        $this->session->unset_userdata('gs_gst');
                                        $this->session->unset_userdata('gs_datetime');
                                        $this->session->unset_userdata('gs_amil');
                                        
                                        $arr = $this->input->post();
//                                        print_r($arr); die();
//                                        $cart = $this->cart->contents();
//                                        $size_contents = sizeof($this->cart->contents());
//                                        print_r($cart); die();
                                        
					if (sizeof($this->cart->contents()) <= 0) {
						$this->session->set_flashdata('error', 'Please adding your item into the list.');
						redirect(site_url('member/muamalat/purchase2/34'));
					}
					if ($this->input->post('dinarpal_form')) {
						if ($this->input->post('dinarpal_form') == 1) {
							$data['data_post'] = $this->input->post();
                                                        $at_id = $arr['account_type'];
                                                        $at = $this->m_account_type->get($at_id);
                                                        $at_desc = (isset($at) && !empty($at)) ? ($at[0]->at_desc) : ("-");
                                                        $data['at_desc'] = $at_desc;
							$data['amils'] = $this->m_members->getAll_Amil($data['data_post']['am_id']);
						}
					} else {
						$this->session->set_flashdata('error', 'Access Denied!');
						redirect(site_url('member/muamalat/purchase2/34'));
					}
				case '352':
					if (sizeof($this->cart->contents()) <= 0) {
						$this->session->set_flashdata('error', 'Please adding your item into the list.');
						redirect(site_url('member/muamalat/purchase2/34'));
					}
					if ($this->input->post('dinarpal_form')) {
						if ($this->input->post('dinarpal_form') == 2) {
							$data['data_post'] = $this->input->post();
							
							// calculate total item and price
							$so_total_weight = 0;
							$so_grand_total = 0;
							$cart = $this->cart->contents();
							$data_sc = array();
                                                        $data_is = array();
                                                        
                                                        $sl_id = $data['data_post']['sl_id'];
                                                        $am_id = $data['data_post']['am_id'];
                                                        $at_id = $data['data_post']['at_id'];
                                                        
//                                                        print_r($cart); die();
//                                                        print_r($data); die();
                                                        
                                                        $tr_datetime = date('Y-m-d H:i:s');
                                                        
                                                        $arr_v_id = array();
                                                        
                                                        $ft_id = 7;
                                                        $ft = $this->m_fee_type->get($ft_id);
                                                        $ft_rate = (isset($ft) && !empty($ft)) ? ($ft[0]->ft_price) : (0.00);
                                                        $ft_type = (isset($ft) && !empty($ft)) ? ($ft[0]->ft_type) : ('STATIC');
                                                        $ft_price = 0.00;

                                                        $gst_rate = $this->my_func->getGST();
                                                        $gst_tax = 0.00;
                                                        
							foreach ($cart as $cakey => $caval) {
                                                            
                                                            $v_id = $caval['options']['v']->v_id;
                                                            $v = $caval['options']['v'];
                                                            
                                                            $ivmt_id = $caval['options']['v']->ivmt_id;
                                                            $v_price_rate = (is_numeric($caval['options']['v']->v_price_rate)) ? ($caval['options']['v']->v_price_rate) : (0);
                                                            $v_weight = (is_numeric($caval['options']['v']->v_weight)) ? ($caval['options']['v']->v_weight) : (0);
                                                            
                                                            $v_namex = $caval['options']['v_name'];
                                                            $br_idx = $caval['options']['br_id'];
                                                            $itc_idx = $caval['options']['itc_id'];
                                                            
                                                            $v_name = $this->my_func->dinarpal_decrypt($v_namex);
                                                            $br_id = $this->my_func->dinarpal_decrypt($br_idx);
                                                            $itc_id = $this->my_func->dinarpal_decrypt($itc_idx);
                                                            $qty = $caval['qty'];
//                                                            $v = $this->m_vault->getAll_distinct(3, $v_name, $br_id, $itc_id, 1, true);
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
                                                            
//                                                            print_r($caval);
//                                                            print_r($v[0]); die();
//                                                            for ($i=0; $i<$qty; $i++) {
                                                            
                                                            $arr_v_id[] = array(
                                                                'v_id' => $v->v_id,
//                                                                'v_price_rate' => ($v->itp_price * $v->v_weight),
                                                                'v_price_rate' => $v_price_rate,
                                                                'v_weight' => $v->v_weight,
                                                                'it_id' => $v->it_id,
                                                                'ivmt_id' => $ivmt_id
                                                            );
                                                            
//                                                                $arr_v_id[]['v_id'] = $v->v_id;
//                                                                $arr_v_id[]['v_price_rate'] = ($v->itp_price * $v->v_weight);
//                                                                $arr_v_id[]['v_weight'] = $v->v_weight;
//                                                                $arr_v_id[]['it_id'] = $v->it_id;
//                                                            }
                                                            
                                                            $so_total_weight += ($caval['qty'] * $v_weight);
//                                                            $so_grand_total_child = ($caval['qty'] * $caval['options']['v']->itp_price * $caval['options']['v']->v_weight);
                                                            $so_grand_total_child = ($caval['qty'] * $v_price_rate);
                                                            $so_grand_total += $so_grand_total_child;
                                                            
                                                            $ft_price_child = 0.00;
                                                        
                                                            // ivmt start
                                                            if ($ivmt_id == 1) {
                                                                if ($ft_type == 'STATIC') {
                                                                    $ft_price_child = $ft_rate;
                                                                } else if ($ft_type == 'DYNAMIC') {
                                                                    $ft_price_child = $so_grand_total_child * $ft_rate;
                                                                }
                                                            } else {
                                                                $ft_price_child = 0.00;
                                                            }
                                                            // ivmt end

                                                            $ft_price += $ft_price_child;
                                                            $gst_tax_child = $gst_rate * ($ft_price_child+$so_grand_total_child);
                                                            $gst_tax += $gst_tax_child;
							}
                                                        
//                                                        print_r($arr_v_id);
//                                                        echo "\n<br />";
//                                                        print_r($so_total_weight);
//                                                        echo "\n<br />";
//                                                        print_r($so_grand_total);
//                                                        echo "\n<br />";
//                                                        die();
                                                        
                                                        $so_grand_total_before = $so_grand_total;
                                                        
                                                        // deduct with discount
                                                        $num_adc = $data['data_post']['adc_num'];
                                                        $grand_discount = 0;
                                                        for ($i=0; $i<$num_adc; $i++) {
                                                            $adc_id = $data['data_post']['adc_id_'.$i];
                                                            $adc = $this->m_advertising_campaign->get($adc_id);
//                                                            print_r($adc);
                                                            $adc_rate = (isset($adc) && !empty($adc)) ? ($adc[0]->adc_rate) : (0.00);
                                                            $adc_type = (isset($adc) && !empty($adc)) ? ($adc[0]->adc_type) : ('STATIC');
                                                            if ($adc_type == 'STATIC') {
                                                                $grand_discount = $adc_rate;
                                                                $so_grand_total -= $adc_rate;
                                                            } else if ($adc_type == 'DYNAMIC') {
                                                                $grand_discount = (($adc_rate/100) * $so_grand_total);
                                                                $so_grand_total -= (($adc_rate/100) * $so_grand_total);
                                                            }
                                                        }
                                                        
//                                                        print_r($so_grand_total); 
//                                                        die();
							
							// match transaction with discount
							$data_sadc = array();
							$advertising_campaign = $this->m_advertising_campaign->getAll();
							if(isset($advertising_campaign)) { 
								foreach($advertising_campaign as $adc) { 
									if($adc->adc_status == 2) {
//										$so_grand_total = ($so_grand_total-$adc->adc_rate<0) ? (0) : ($so_grand_total-$adc->adc_rate);
										$data_sadc[] = array(
											'so_id' => 0,
											'adc_id' => $adc->adc_id,
											'sadc_status' => 1
										);
									}
								}
							}
                                                        
                                                        
                                                        
                                                        $grand_total_semua = $so_grand_total + $ft_price + $gst_tax;
                                                        
//                                                        print_r($so_grand_total_before);
//                                                        echo "<br />";
//                                                        print_r($so_grand_total);
//                                                        echo "<br />";
//                                                        print_r($grand_discount);
//                                                        echo "<br />";
//                                                        print_r($ft_price); 
//                                                        echo "<br />";
//                                                        print_r($gst_tax); 
//                                                        echo "<br />";
//                                                        print_r($grand_total_semua); 
//                                                        die();
//                                                        print_r($so_total_weight); die();
                                                        
                                                        $am = $this->m_members->getAll_Amil($am_id);
                                                        $am_name = (isset($am) && !empty($am)) ? ($am[0]->me_firstname . ' ' . $am[0]->me_lastname) : ("-");
                                                        
//                                                        echo "<br />";
//                                                        print_r($am_name);
//                                                        die();
                                                        
                                                        $gs_grand_total = $so_grand_total - $grand_discount + $ft_price + $gst_tax;
							
                                                        $tr_id = 0;
                                                        
							// check member account balance
							$da = $this->m_dinarpal_account->get_member($me_id);
							$dinar_balance = $da[0]->da_gold_balance; //pay with money dinar only for now.
                                                        
                                                        $dinar_balance = $this->get_balance($me_id, $at_id);
                                                        
							if ($grand_total_semua > $dinar_balance) {
								$this->session->set_flashdata('error', 'You have unsufficient balance!');
								redirect(site_url('member/muamalat/purchase2/34'));
							} else {
                                                            
                                                                // search admin account.
//                                                                $me_admin = $this->m_members->getSL($sl_id);
//                                                                $me_id_admin = (isset($me_admin) && !empty($me_admin)) ? ($me_admin[0]->me_id) : (0);
                                                                $me_id_admin = $this->my_func->getMeAdmin($sl_id);
                                                            
                                                                // purchase
                                                                $data_trans = array(
                                                                    'me_id_from' => $me_id,
                                                                    'me_id_to' => $me_id_admin,
                                                                    'tr_amount' => $so_grand_total,
                                                                    'at_id' => $at_id,
                                                                    'ft_id' => 7,
                                                                    'tr_notes' => 'Purchase',
                                                                    'tr_datetime' => $tr_datetime,
                                                                    'tt_id' => 23,
                                                                    'ts_id' => 1
                                                                );
                                                                $tr_id = $this->m_transaction->add($data_trans);
                                                                
                                                                // keep
                                                                $data_trans2 = array(
                                                                    'me_id_from' => $me_id,
                                                                    'me_id_to' => $me_id_admin,
                                                                    'tr_amount' => $ft_price,
                                                                    'at_id' => 6,
                                                                    'ft_id' => 7,
                                                                    'tr_notes' => 'Keep Fee',
                                                                    'tr_datetime' => $tr_datetime,
                                                                    'tt_id' => 24,
                                                                    'ts_id' => 1
                                                                );
                                                                $tr_id2 = $this->m_transaction->add($data_trans2);
                                                                
                                                                // gst
                                                                $data_trans3 = array(
                                                                    'me_id_from' => $me_id,
                                                                    'me_id_to' => $me_id_admin,
                                                                    'tr_amount' => $gst_tax,
                                                                    'at_id' => 7,
                                                                    'ft_id' => 13,
                                                                    'tr_notes' => 'GST Tax',
                                                                    'tr_datetime' => $tr_datetime,
                                                                    'tt_id' => 25,
                                                                    'ts_id' => 1
                                                                );
                                                                $tr_id3 = $this->m_transaction->add($data_trans3);
                                                                
                                                                // add affiliate
                                                                $bol_geneology = $this->payGeneology($me_id, $at_id, $ft_price, $tr_datetime);
                                                                
                                                                // deduct money from user.
                                                                $bol_from_money = $this->debit_kredit($me_id, $grand_total_semua, $at_id, 2); //2 - deduct
                                                                // add gram to user.
                                                                $bol_from_gram = $this->debit_kredit($me_id, $so_total_weight, 2, 1); //1 - add
                                                                
                                                                if ($bol_from_money && $bol_from_gram && (isset($me_id_admin) && !empty($me_id_admin))) {
                                                                    // add to admin account.
//                                                                    $bol_to = $this->debit_kredit($me_id_admin, $grand_total_semua, $at_id, 1); //1 - add
                                                                    $this->debit_kredit_fund($me_id_admin, $so_grand_total, 'SALES', 1);
                                                                    $this->debit_kredit_fund($me_id_admin, $ft_price, 'FEES', 1);
                                                                    $this->debit_kredit_fund($me_id_admin, $gst_tax, 'GST', 1);
                                                                } else {
                                                                    redirect(site_url('member/muamalat/purchase2/34'));
                                                                }
							}
							
							// add souq
							$dp = $data['data_post'];
							$data_souq = array(
								'me_id' => $me_id,
								'so_buy_date' => $tr_datetime,
								'am_id' => $dp['am_id'],
								'so_total_weight' => $so_total_weight,
								'so_grand_total' => $so_grand_total,
								'sl_id' => $dp['sl_id'],
								'so_address' => '-',
								'so_status' => 1,
                                                                'tr_id' => $tr_id
							);
							$so_id = $this->m_souq->add($data_souq);
							if ($so_id) {
                                                            
                                                                // insert table keep
                                                                $startdatetime = date('Y-m-d H:i:s');
                                                                $enddatetime = date('Y-m-d H:i:s', strtotime('+1 year'));
                                                                $data_keep = array(
                                                                    'k_startdate' => $startdatetime,
                                                                    'k_enddate' => $enddatetime,
                                                                    'sl_id' => $sl_id,
                                                                    'me_id' => $me_id,
                                                                    'k_status' => 1
                                                                );
                                                                // insert table keep child
                                                                $k_id = $this->m_keep->add($data_keep);
                                                                if ($k_id) {
                                                                    $v_ids = $arr_v_id;
                                                                    foreach ($v_ids as $v) {
                                                                        $v_id = $v['v_id'];
                                                                        $data_keep_child = array(
                                                                            'k_id' => $k_id,
                                                                            'v_id' => $v_id,
                                                                            'kc_status' => 1
                                                                        );
                                                                        // insert table keep_child
                                                                        $kc_id = $this->m_keep_child->add($data_keep_child);
                                                                    }
                                                                }
                                                            
                                                                // pindah dari vault store ke vault keep
                                                                foreach ($arr_v_id as $v_val) {
                                                                    $v_id = $v_val['v_id'];
                                                                    $v_price_rate = $v_val['v_price_rate'];
                                                                    $v_weight = $v_val['v_weight'];
                                                                    $it_id = $v_val['it_id'];
                                                                    
                                                                    $this->paySellGramCommission($me_id, $at_id, $it_id, $v_weight, $tr_datetime);
                                                                    
                                                                    $data_v = array(
                                                                        'me_id' => $me_id,
                                                                        'vt_id' => 3, // id ke vault keep
                                                                        'v_price_rate' => $v_price_rate
                                                                    );
                                                                    $this->m_vault->edit($v_id, $data_v);
                                                                    $dscc = array(
                                                                        'so_id' => $so_id,
                                                                        'v_id' => $v_id,
                                                                        'scc_datetime' => $tr_datetime,
                                                                        'scc_fee' => 0,
                                                                        'scc_status' => '1'
                                                                    );
                                                                    $scc_id = $this->m_souq_child_child->add($dscc);
                                                                    
                                                                    // transaction gram
                                                                    $at_id_gramx = ($it_id == 1) ? (2) : (($it_id == 2) ? (4) : (0));
                                                                    $data_tr2x = array(
                                                                        'me_id_from' => $me_id_admin,
                                                                        'me_id_to' => $me_id,
                                                                        'tr_amount' => $v_weight,
                                                                        'at_id' => $at_id_gramx,
                                                                        'ft_id' => 7,
                                                                        'tr_notes' => 'Purchase and Keep Gram Online',
                                                                        'tr_datetime' => $tr_datetime,
                                                                        'tt_id' => 7,
                                                                        'ts_id' => 1
                                                                    );
                                                                    $tr_id2x = $this->m_transaction->add($data_tr2x);
                                                                }
								
								// add souq_adc
								foreach ($data_sadc as $dsadc) {
									$dsadc['so_id'] = $so_id;
									$sadc_id = $this->m_souq_adc->add($dsadc);
									if ($sadc_id == 0) {
										break;
									}
								}
                                                                
                                                                $sess = $this->session->all_userdata();
                                                                $me_username = $sess['me_username'];
                                                                $subject = "DinarPal Purchase - Completed";
                                                                $so_total_weight1 = (is_numeric($so_total_weight)) ? (number_format($so_total_weight, 4)) : ("0.0000");
                                                                $msg = "Username " . $me_username . " has purchase " . $so_total_weight1 . " GRM items at dinarpal.";
                                                                $this->my_func->send_email_allAdmins($subject, $msg, $tr_datetime);
                                                                
                                                                $so_grand_total = (isset($so_grand_total) && !empty($so_grand_total) && is_numeric($so_grand_total)) ? (number_format($so_grand_total, 4)) : ("0.0000");
                                                                $grand_discount = (isset($grand_discount) && !empty($grand_discount) && is_numeric($grand_discount)) ? (number_format($grand_discount, 4)) : ("0.0000");
                                                                $ft_price = (isset($ft_price) && !empty($ft_price) && is_numeric($ft_price)) ? (number_format($ft_price, 4)) : ("0.0000");
                                                                $gst_tax = (isset($gst_tax) && !empty($gst_tax) && is_numeric($gst_tax)) ? (number_format($gst_tax, 4)) : ("0.0000");
                                                                $gs_grand_total = (isset($gs_grand_total) && !empty($gs_grand_total) && is_numeric($gs_grand_total)) ? (number_format($gs_grand_total, 4)) : ("0.0000");
                                                                $this->session->set_userdata('gs_sub_total', $so_grand_total);
                                                                $this->session->set_userdata('gs_discount', $grand_discount);
                                                                $this->session->set_userdata('gs_fee', $ft_price);
                                                                $this->session->set_userdata('gs_gst', $gst_tax);
                                                                $this->session->set_userdata('gs_grand_total', $gs_grand_total);
                                                                $this->session->set_userdata('gs_datetime', $tr_datetime);
                                                                $this->session->set_userdata('gs_amil', $am_name);
								
								redirect(site_url( 'member/muamalat/resitKeep/352/?souq='.$this->my_func->dinarpal_encrypt($tr_id) ));
								
							} else {
								$this->session->set_flashdata('error', 'Something is wrong! Cannot store your items ..');
								redirect(site_url('member/muamalat/purchase2/34'));
							}
						}
					}/* else {
						$this->session->set_flashdata('error', 'Access Denied!');
						redirect(site_url('member/muamalat/purchase2/34'));
					}*/
				case '353':
					if (sizeof($this->cart->contents()) <= 0) {
						$this->session->set_flashdata('error', 'Please adding your item into the list.');
						redirect(site_url('member/muamalat/purchase2/34'));
					}
					if ($this->input->post('dinarpal_form')) {
						if ($this->input->post('dinarpal_form') == 4) {
							$data['data_post'] = $this->input->post();
							
							// calculate total item and price
							$so_total_weight = 0;
							$so_grand_total = 0;
							$cart = $this->cart->contents();
							$data_sc = array();
							foreach ($cart as $cakey => $caval) {
								$so_total_weight += ($caval['qty'] * $caval['options']['itct']->itct_weight);
								$so_grand_total += $caval['subtotal'];
								// add souq child
								$data_sc[] = array(
									'so_id' => 0,
									'itct_id' => $caval['id'],
									'sc_qty' => $caval['qty'],
									'sc_status' => 1
								);
							}
							
							// deduct with discount
							$data_sadc = array();
							$advertising_campaign = $this->m_advertising_campaign->getAll();
							if(isset($advertising_campaign)) { 
								foreach($advertising_campaign as $adc) { 
									if($adc->adc_status == 2) {
										$so_grand_total = ($so_grand_total-$adc->adc_rate<0) ? (0) : ($so_grand_total-$adc->adc_rate);
										$data_sadc[] = array(
											'so_id' => 0,
											'adc_id' => $adc->adc_id,
											'sadc_status' => 1
										);
									}
								}
							}
							
							// retrieve services
							$data_sds = array();
							foreach ($data['data_post'] as $ddpkey => $ddpval) {
								if (strpos($ddpkey, 'cs_') !== false) {
									$data_sds[] = array(
										'so_id' => 0,
										'ds_id' => $ddpval,
										'sds_status' => 1
									);
								}
							}
							
							//print_r($data['data_post']); die();
							
							// check member account balance
							$da = $this->m_dinarpal_account->get_member($me_id);
							$dinar_balance = $da[0]->da_gold_balance;
							if ($so_grand_total > $dinar_balance) {
								$this->session->set_flashdata('error', 'You have unsufficient balance!');
								redirect(site_url('member/muamalat/purchase2/34'));
							} else {
								$da_gold_reserved = $da[0]->da_gold_reserved + $so_total_weight;
								$da_gold_balance = $da[0]->da_gold_balance - $so_grand_total;
								$da_id = $da[0]->da_id;
								$data_da = array(
									'da_gold_balance' => $da_gold_balance,
									'da_gold_reserved' => $da_gold_reserved
								);
								$bol_da = $this->m_dinarpal_account->edit($da_id, $data_da);
								if ($bol_da == false) {
									$this->session->set_flashdata('error', 'Cannot update your account balance!');
									redirect(site_url('member/muamalat/purchase2/34'));
								}
							}
							
							// add souq
							$dp = $data['data_post'];
							$data_souq = array(
								'me_id' => $me_id,
								'so_buy_date' => date('Y-m-d H:i:s'),
								'am_id' => 0,
								'so_total_weight' => $so_total_weight,
								'so_grand_total' => $so_grand_total,
								'sl_id' => 0,
								'so_address' => $dp['so_address'],
								'so_status' => 1
							);
							$so_id = $this->m_souq->add($data_souq);
							if ($so_id) {
								
								// add souq_ds
								foreach ($data_sds as $dsds) {
									$dsds['so_id'] = $so_id;
									$sds_id = $this->m_souq_ds->add($dsds);
									if ($sds_id == 0) {
										break;
									}
								}
								
								// add souq_adc
								foreach ($data_sadc as $dsadc) {
									$dsadc['so_id'] = $so_id;
									$sadc_id = $this->m_souq_adc->add($dsadc);
									if ($sadc_id == 0) {
										break;
									}
								}
								
								// add souq child
								foreach ($data_sc as $dsc) {
									$dsc['so_id'] = $so_id;
									$sc_id = $this->m_souq_child->add($dsc);
									if ($sc_id == 0) {
										break;
									}
								}
								
								redirect(site_url( 'member/muamalat/resitPost/353/?souq='.$this->my_func->dinarpal_encrypt($so_id) ));
								
							} else {
								$this->session->set_flashdata('error', 'Something is wrong! Cannot store your items ..');
								redirect(site_url('member/muamalat/purchase2/34'));
							}
						}
					}
				case '34':
//                                        $this->session->unset_userdata('gs_sub_total');
//                                        $this->session->unset_userdata('gs_discount');
//                                        $this->session->unset_userdata('gs_fee');
//                                        $this->session->unset_userdata('gs_gst');
//                                        $this->session->unset_userdata('gs_datetime');
//                                        $this->session->unset_userdata('gs_amil');
//                                    $data['construction_dinarpal'] = 1;
                                        
					$data['item_type'] = $this->m_item_type->getAll();
					$data['brands'] = $this->m_brands->getAll();
					$data['advertising_campaign'] = $this->m_advertising_campaign->getAll();
					$data['storage_location'] = $this->m_storage_location->getAll();
//					$data['amil'] = $this->m_amil->getAll();
					$data['amil'] = $this->m_members->getAll_Amil();
//					$data['payment_method'] = $this->m_payment_method->getAll();
					$data['payment_method'] = $this->m_account_type->getAll();
					$data['dinarpal_services_type'] = $this->m_dinarpal_services_type->getAll();
					$title = 'Gold &amp; Silver Souq';
					break;
                                case '341':
                                    $title = 'Product Detail';
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
                                case '3411':
                                    $title = 'Product Detail';
                                    break;
                                    
                                case '361':
//                                    $data['construction_dinarpal'] = 1;
                                        $so_id_enc = $this->uri->segment(5);
                                        $so_id = $this->my_func->dinarpal_decrypt($so_id_enc);
                                        $data['soud_child'] = $this->m_souq_child_child->get_bySouq($so_id);
				case '36':
                                        $data['souq'] = $this->m_souq->get_byMember($me_id);
					$title = 'Purchase Summary';
					break;
				case '37':
					$title = 'Purchase &amp; Keep Summary';
					break;
                                case '381':
                                        if ($this->uri->segment(5)) {
                                            $bid_id = $this->uri->segment(5);
                                            $data['bids'] = $this->m_bids->get($bid_id);
                                        } else {
                                            redirect(site_url('member/muamalat/auction/38'));
                                        }
				case '38':
                                    $data['construction_dinarpal'] = 1;
                                        $data['batch_bid'] = $this->m_batch_bids->getAll();
					$title = 'E-Rahnu Auction';
					break;

			    case '40':   //echo '</br></br>'.base64_decode($this->input->get('product'));

					$id = base64_decode($this->input->get('productx'));
					$items = $this->m_itc_type->get($id);
					$data['items'] = $items[0];

                                        $title = 'Product Detail';
					break;

			}
			$this->_papar($data, 'muamalat/'.$output, $menu1, $title);
		}
		else
		{
			$this->_papar(); 
		}
	}
       
	public function updateProfile()
	{
		$me_id = $this->input->post('me_id');
		$data_receive = $this->input->post();
                unset($data_receive['table1_length']);
                unset($data_receive['table2_length']);
                unset($data_receive['table3_length']);
                unset($data_receive['currentPassword']);
                unset($data_receive['newPassword']);
                unset($data_receive['confirmPassword']);
                
//                print_r($data_receive); die();
                
                $isError = false;
                $errorMsg = "";
                
//                $birthdate_day = $data_receive['birthdate_day'];
//                echo $birthdate_day . "<br />";
//                echo (int) $birthdate_day . "<br />";
//                var_dump(is_int((int) $birthdate_day)); die();
                
                if (!isset($data_receive['birthdate_day']) || empty($data_receive['birthdate_day'])) {
                    $errorMsg .= 'Day of birth cannot be null!<br />';
                    $isError = true;
                } else {
                    $birthdate_day = $data_receive['birthdate_day'];
                    if (!is_numeric($birthdate_day) || !is_int((int) $birthdate_day)) {
                        $errorMsg .= 'Day of birth must be numeric and not floating point!<br />';
                        $isError = true;
                    } else {
                        if ($birthdate_day < 1 || $birthdate_day > 31) {
                            $errorMsg .= 'Day of birth must between 1 to 31 inclusively!<br />';
                            $isError = true;
                        }
                    }
                }
                
                if (!isset($data_receive['birthdate_month']) || empty($data_receive['birthdate_month'])) {
                    $errorMsg .= 'Month of birth cannot be null!<br />';
                    $isError = true;
                } else {
                    $birthdate_month = $data_receive['birthdate_month'];
                    if (!is_numeric($birthdate_month) || !is_int((int) $birthdate_month)) {
                        $errorMsg .= 'Month of birth must be numeric and not floating point!<br />';
                        $isError = true;
                    } else {
                        if ($birthdate_month < 1 || $birthdate_month > 12) {
                            $errorMsg .= 'Month of birth must between 1 to 12 inclusively!<br />';
                            $isError = true;
                        }
                    }
                }
                
                if (!isset($data_receive['birthdate_year']) || empty($data_receive['birthdate_year'])) {
                    $errorMsg .= 'Year of birth cannot be null!<br />';
                    $isError = true;
                } else {
                    $birthdate_year = $data_receive['birthdate_year'];
                    if (!is_numeric($birthdate_year) || !is_int((int) $birthdate_year)) {
                        $errorMsg .= 'Year of birth must be numeric and not floating point!<br />';
                        $isError = true;
                    } else {
                        if ($birthdate_year < 1 || $birthdate_year > 9999) {
                            $errorMsg .= 'Month of birth must between 1 to 9999 inclusively!<br />';
                            $isError = true;
                        }
                    }
                }
                
                if (!isset($data_receive['me_email']) || empty($data_receive['me_email']) || $data_receive['me_email'] == '' || $data_receive['me_email'] == NULL) {
                    $errorMsg .= 'E-mail cannot be null!<br />';
                    $isError = true;
                }
                
                if (!is_numeric($data_receive['me_phone_no']) || !isset($data_receive['me_phone_no']) || empty($data_receive['me_phone_no']) || $data_receive['me_phone_no'] == '' || $data_receive['me_phone_no'] == NULL) {
                    $errorMsg .= 'Phone number cannot be null or invalid!<br />Valid Example (digit only): 0199737579<br />';
                    $isError = true;
                } else {
                    if (!isset($data_receive['me_whatsapp_no']) || empty($data_receive['me_whatsapp_no']) || $data_receive['me_whatsapp_no'] == '' || $data_receive['me_whatsapp_no'] == NULL) {
                        $data_receive['me_whatsapp_no'] = $data_receive['me_phone_no'];
                    }
                }
                
//                if (!isset($data_receive['me_whatsapp_no']) || empty($data_receive['me_whatsapp_no']) || $data_receive['me_whatsapp_no'] == '' || $data_receive['me_whatsapp_no'] == NULL) {
//                    $errorMsg .= 'Whatsapp number cannot be null!<br />';
//                    $isError = true;
//                }
                
                if ($isError) {
                    $this->session->set_flashdata('error', $errorMsg);
                    redirect(site_url('member/profile/profile/12'));
                }
                
                $birthdate_year = $data_receive['birthdate_year'];
                $birthdate_month = $data_receive['birthdate_month'];
                $birthdate_day = $data_receive['birthdate_day'];
                unset($data_receive['birthdate_year']);
                unset($data_receive['birthdate_month']);
                unset($data_receive['birthdate_day']);
                $data_receive['me_birth_date'] = $birthdate_year . '-' . $birthdate_month . '-' . $birthdate_day;
                
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
		if (isset( $data_upload['upload_data'] )) {
			$data_member['me_image'] = $data_upload['upload_data']['file_name'];
		} else {
			$data_member['me_image'] = $this->input->post('me_image2');
		}
		$data_member['me_image2'] = NULL;
		unset($data_member['me_image2']);
		//IF exceedes the maximum height or width
		if (isset( $data_upload['error'] )) {
			if (strpos($data_upload['error'], 'exceedes the maximum height or width') === false) {
			} else {
				$this->session->set_flashdata('error', $data_upload['error']);
			}
		}
                
                // upload company doc 1
                $me_company_doc1 = $this->my_func->do_upload('me_company_doc1', './assets/uploads/documents');
                if (isset( $me_company_doc1['upload_data'] )) {
//                    echo "<pre>"; print_r($me_company_doc1['upload_data']); echo "</pre>"; die();
			$data_member['me_company_doc1'] = $me_company_doc1['upload_data']['file_name'];
		} else {
			$data_member['me_company_doc1'] = $this->input->post('me_company_doc12');
		}
		$data_member['me_company_doc12'] = NULL;
		unset($data_member['me_company_doc12']);
		// ignore 'did not upload file' error message.
		if (isset( $me_company_doc1['error'] )) {
                        if (strpos($me_company_doc1['error'], 'You did not select a file to upload') === false) {
                            $this->session->set_flashdata('error', $me_company_doc1['error']);
                            redirect(site_url('member/profile/profile/12'));
                        }
		}
                
                // upload company doc 2
                $me_company_doc2 = $this->my_func->do_upload('me_company_doc2', './assets/uploads/documents');
                if (isset( $me_company_doc2['upload_data'] )) {
			$data_member['me_company_doc2'] = $me_company_doc2['upload_data']['file_name'];
		} else {
			$data_member['me_company_doc2'] = $this->input->post('me_company_doc22');
		}
		$data_member['me_company_doc22'] = NULL;
		unset($data_member['me_company_doc22']);
		// ignore 'did not upload file' error message.
		if (isset( $me_company_doc2['error'] )) {
                        if (strpos($me_company_doc2['error'], 'You did not select a file to upload') === false) {
                            $this->session->set_flashdata('error', $me_company_doc2['error']);
                            redirect(site_url('member/profile/profile/12'));
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
                            redirect(site_url('member/profile/profile/12'));
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
                            redirect(site_url('member/profile/profile/12'));
                        }
                    }
                }

//                echo "<pre>"; print_r($data_member); echo "</pre>"; die();
//                echo "<pre>"; print_r($data_biw); echo "</pre>"; die();
                
		$bol1 = $this->m_members->edit($me_id, $data_member);
		$bol2 = $this->m_bene_info_waris->edit_me($me_id, $data_biw);
                
                $this->session->set_userdata('g_id', $data_member['g_id']);
                
		if ($bol1 && $bol2) {
			$this->session->set_flashdata('sucess', 'Update success ..');
		} else {
			$this->session->set_flashdata('error', 'Update failed!');
		}
		redirect(site_url('member/profile/profile/12'));
	}
        
        function showVerificationPage() {
            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
            $data['dd1'] = $this->m_dinarpal_document->get_member($me_id, 1); // 1 = ddt_id
            $data['dd2'] = $this->m_dinarpal_document->get_member($me_id, 2); // 2 = ddt_id
            $data['members_verification'] = $this->m_members_verification->get_member($me_id);
            $data['dinarpal_document'] = $this->m_dinarpal_document->get_member($me_id);
            echo $this->load->view($this->parent_page.'/profile/verifyPage', $data, true);
        }
        
        function deleteVerificationPage($stat=1) {
            if ($stat==1) {
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
            if ($stat==21 || $stat==22) {
                if ($this->input->get('me')) {
                    $me_idx = $this->input->get('me');
                    $me_id = $this->my_func->dinarpal_decrypt($me_idx);
                    $data_me = array(
                        'me_company_doc1' => '',
                        'me_company_doc1_verify' => 1
                    );
                }
            }
            redirect(site_url('member/profile/profile/12'));
        }
	
	public function changePassword()
	{
		$arrData = $this->input->post();
		$currentPassword = $this->input->post('currentPassword');
		$newPassword = $this->input->post('newPassword');
		$confirmPassword = $this->input->post('confirmPassword');
		$sess = $this->session->all_userdata();
		$me_id = $sess['me_id'];
		$me = $this->m_members->get($me_id);
		// if user id exist.
		if ($me) {
			$isValid = $this->simpleloginsecure->isValidPassword($me[0]->me_username, $currentPassword);
                        // if same current pssword.
			if ($isValid) {
				if ($newPassword == $currentPassword) {
					$this->session->set_flashdata('error', 'New password cannot be the same with the current password!');
                                        die("1");
				} else if ($newPassword != $confirmPassword) {
					$this->session->set_flashdata('error', 'Confirmation password is not the same with the new password!');
                                        die("1");
				} else {
					// check if password not strong.
					$pwd_status = $this->my_func->isValidPassword($confirmPassword);
					if (strpos($pwd_status, 'strong') === false) {
						$this->session->set_flashdata('error', $pwd_status);
                                                die("1");
					} else {
						$arrMe = array(
							'me_password' => $this->simpleloginsecure->encrypt_password($confirmPassword),
							'me_question' => $this->input->post('me_question'),
							'me_answer' => $this->input->post('me_answer')
						);
						$me_update = $this->m_members->edit($me_id, $arrMe);
						if ($me_update) {
							$this->session->set_flashdata('sucess', 'Successfully update your password ..<br />Please login again.');
							die("0");
						} else {
							$this->session->set_flashdata('error', 'Cannot update your password!');
                                                        die("1");
						}
					}
				}
			} else {
				$this->session->set_flashdata('error', 'Invalid current password!');
                                die("1");
			}
		} else {
			$this->session->set_flashdata('error', 'Invalid member!');
                        die("1");
		}
//		redirect(site_url('member/profile/changePassword/14'));
                die("0");
	}

        public function getBranch($stat=-1) 
        {
            $ba_id = $this->input->post('ba_id');
            $str = ($this->input->post('str')) ? ($this->input->post('str')) : ('');
            $bbi_id = ($stat==1) ? ($this->input->post('bbi_id')) : (-1);
            $data['ba_id'] = $ba_id;
            $data['bbi_id'] = $bbi_id;
//            echo $bbi_id;
            $data['banks_branch'] = $this->m_banks_branch_info->getBanks($ba_id, $str);
            echo $this->load->view('member/profile/ajax/getBranch', $data, true);
        }
	
	
	public function getAjaxItemType()
	{
		$it_id = $this->input->post('it_id');
		$data['item_type'] = $this->m_item_type->get($it_id);
		$data['item_type_child'] = $this->m_item_type_child->getAll_byParent($it_id);
		echo $this->load->view($this->parent_page.'/purchaseAndPawn/ajax/ajaxItemType', $data, true);
	}
	
	public function getAjaxBrand()
	{
		$itc_id = $this->input->post('itc_id');
		$data['item_type_child'] = $this->m_item_type_child->get($itc_id);
		$data['brands'] = $this->m_brands->getAll_byItc($itc_id);
		echo $this->load->view($this->parent_page.'/purchaseAndPawn/ajax/ajaxBrandItc', $data, true);
	}
	
	public function getAjaxItem()
	{
		$br_id = $this->input->post('br_id');
		$itc_id = $this->input->post('itc_id');
		$data['itc_type'] = $this->m_itc_type->getAll_basedBI($br_id, $itc_id);
		echo $this->load->view($this->parent_page.'/purchaseAndPawn/ajax/ajaxItem', $data, true);
	}
	
	public function getAjaxList1($stat=1)
	{
		$data['haha'] = 'hai';
		$data['stat'] = $stat;
		echo $this->load->view($this->parent_page.'/purchaseAndPawn/ajax/ajaxGetList11', $data, true);
	}
	
	public function getAjaxList2($stat=1)
	{
		$data['haha'] = 'hai';
		$data['stat'] = $stat;
		echo $this->load->view($this->parent_page.'/purchaseAndPawn/ajax/ajaxGetList2', $data, true);
	}
	
	public function getAjaxViewDetail()
	{
		$arr = $this->input->post();
                
                $v_namex = $this->input->post('v_name');
                $br_idx = $this->input->post('br_id');
		$itc_idx = $this->input->post('itc_id');
                
                $v_name = $this->my_func->dinarpal_decrypt($v_namex);
                $br_id = $this->my_func->dinarpal_decrypt($br_idx);
                $itc_id = $this->my_func->dinarpal_decrypt($itc_idx);
                
                $data['vault'] = $this->m_vault->getAll_distinct(3, $v_name, $br_id, $itc_id);
                
//		$id = $this->my_func->dinarpal_decrypt($arr["id"]);
//		$items = $this->m_itc_type->get($id);
               
                if (isset($data['vault']) && !empty($data['vault'])) {
                
                    $data['items'] = $data['vault'][0];

                    echo $this->load->view('member/muamalat/viewProduct2', $data, TRUE);
                }
	}

    public function getAjaxViewDetailChild()
	{
		$arr = $this->input->post();
		$id = $this->my_func->dinarpal_decrypt($arr["id"]);
		$itemschild = $this->m_item_storage_child->get($id);
		$data['itemschild'] = $itemschild[0];
		echo $this->load->view($this->parent_page.'/dinarDirham/viewProduct', $data, TRUE);
	}

	public function getInsertCardDetail()
	{
		echo $this->load->view($this->parent_page.'/profile/viewProduct', $data, TRUE);
	}

	public function setAjaxList1($stat=1)
	{
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
				'id'      => $itct_id,
				'qty'     => $qty,
				'price'   => $price,
				'name'    => '-',
				'options' => $data_post
			);
			$this->cart->insert($data);
			//print_r($data);
		} else if ($stat == 2) {
			$this->cart->destroy();
		} else if ($stat == 3) {
			$data = array(
               'rowid' => $this->input->post('rowid'),
               'qty'   => 0
            );
			$this->cart->update($data);
		} else if ($stat == 11) {
			// buy gold souq
			$v_idx = $this->input->post('v');
			$qty = $this->input->post('qty');
			$v_namex = $this->input->post('v_name');
			$br_idx = $this->input->post('br_id');
			$itc_idx = $this->input->post('itc_id');
                        
                        $v_id = $this->my_func->dinarpal_decrypt($v_idx);
                        $v_name = $this->my_func->dinarpal_decrypt($v_namex);
                        $br_id = $this->my_func->dinarpal_decrypt($br_idx);
                        $itc_id = $this->my_func->dinarpal_decrypt($itc_idx);
			$data_post = $this->input->post();
//			$v = $this->m_vault->getAll_distinct(3, $v_name, $br_id, $itc_id, -1, true);
			$v = $this->m_vault->get($v_id);
                        
                        $error1 = "0|-";
                        
//                        $stock = $v[0]->v_stock;
////                        print_r($stock); die();
//                        if ($qty > $stock) {
//                            $error1 = "1|Limited stock!";
//                            echo $error1;
//                            return;
//                        }
                        
			$price = 1; //(isset($v[0])) ? ($v[0]->v_price_rate) : (0);
			$data_post['v'] = $v[0];
                        $data_post['v_size'] = sizeof($v);
//                        print_r('$v_name:'.$v_name);// die();
//                        print_r('$br_id:'.$br_id);// die();
//                        print_r('$itc_id:'.$itc_id);// die();
//                        print_r($v[0]); die();
                        
                        $v_id = $v[0]->v_id;
                        $sess = $this->session->all_userdata();
                        $me_id = $sess['me_id'];
                        $data_vault = array('me_id_lock' => $me_id);
                        $this->m_vault->edit($v_id, $data_vault);
                        
			$data = array(
				'id'      => $v[0]->v_id,
				'qty'     => $qty,
				'price'   => $price,
				'name'    => '-',
				'options' => $data_post
			);
			$this->cart->insert($data);
                        
                        echo $error1;
		}
	}
	
	public function setColRate()
	{
		$this->session->set_userdata('col_rate', 0.8);
		$this->session->set_userdata('col_percentage', '80%');
		$col_rate = $this->input->post('col_rate');
		$col_percentage = $col_rate . '%';
		$col_rate /= 100;
		$this->session->set_userdata('col_rate', $col_rate);
		$this->session->set_userdata('col_percentage', $col_percentage);
	}
	
	public function getGrandTotal($stat=1)
	{
		if ($stat == 3) {
			$sess = $this->session->userdata('cart_dinarpal');
			$total = 0;
			foreach ($sess as $se) {
				$total += $se['subtotal'];
			}
			echo $total;
                } else if ($stat == 2) { 
                        print_r($this->cart);
                } else {
			echo $this->cart->total()*1.06;
		}
	}
        
        public function getEDinarTotal($stat=1)
	{
		if ($stat == 3) {
			$sess = $this->session->userdata('cart_dinarpal');
			$total = 0;
			foreach ($sess as $se) {
				$total += $se['subtotal'];
			}
			echo $total;
                } else if ($stat == 2) { 
                        print_r($this->cart); die();
                } else {
			echo $this->cart->total()*1.06 * $this->session->userdata('col_rate');
		}
	}
        
        public function getBakiTotal($stat=1)
	{
		if ($stat == 3) {
			$sess = $this->session->userdata('cart_dinarpal');
			$total = 0;
			foreach ($sess as $se) {
				$total += $se['subtotal'];
			}
			echo $total;
                } else if ($stat == 2) { 
                        print_r($this->cart); die();
                } else {
			echo $this->cart->total()*1.06 * (1-$this->session->userdata('col_rate'));
		}
	}
        
        public function resitPurchase1_process()
        {
//            $arr = $this->input->post();
//            echo "<pre>"; print_r($arr); echo "</pre>"; 
//            $cart_x = $this->cart->contents();
//            echo "<pre>"; print_r($cart_x); echo "</pre>"; 
            
            if ($this->input->post()) {
                if ($this->input->post('am_id')) {
                    $am_id = $this->input->post('am_id');
                    $data['data_post'] = $this->input->post();
//                    echo "<pre>"; print_r($data['data_post']); echo "</pre>"; die();
                    $me_id = $this->session->userdata('me_id');
                    $data['data_post']['me_id'] = $me_id;
                    $time = date('H:i:s');
                    $data['data_post']['pa_start_date'] = $this->my_func->date_to_sql_time($data['data_post']['pa_start_date'], $time);
                    $data['data_post']['pa_end_date'] = $this->my_func->date_to_sql_time($data['data_post']['pa_end_date'], $time);
                    $data['data_post']['pa_rahnu_rate'] = $this->session->userdata('col_rate');
                    $data['data_post']['pt_id'] = 1;
                    $cart_x = $this->cart->contents();
                    $total_weight = 0;
                    foreach ($cart_x as $cx) {
                        $total_weight += ($cx['options']['itct']->itct_weight * $cx['qty']);
                    }
                    $da = $this->m_dinarpal_account->get_member($me_id);
                    $dinar_balance = $da[0]->da_gold_balance;

                    $pa_grand_total = $data['data_post']['pa_grand_total'];
                    $pa_edinar_total = $data['data_post']['pa_edinar_total'];
                    $pa_baki_total = $data['data_post']['pa_baki_total'];
                    unset($data['data_post']['pa_edinar_total']);
                    unset($data['data_post']['pa_baki_total']);
                    unset($data['data_post']['col_rate']);

                    $data['data_post']['pa_total_weight'] = $total_weight;

                    if ($pa_grand_total > $dinar_balance) {
                        $this->session->set_flashdata('error', 'You have unsufficient balance!');
                        redirect(site_url('member/purchaseAndPawn/purchaseAndPawn/21.1'));
                    }
                    
//                    echo "<pre>"; print_r($data['data_post']); echo "</pre>"; die();

                    $pa_id = $this->m_pawn->add($data['data_post']);
                    if ($pa_id && $this->cart->total() != 0) {
                        if (($pa_grand_total - $pa_edinar_total) > $dinar_balance) {
                            $this->session->set_flashdata('error', 'You have unsufficient balance!');
                            redirect(site_url('member/purchaseAndPawn/purchaseAndPawn/21.1'));
                        } else {
                            $da_id = $da[0]->da_id;
                            $dinar_kene_bayar = $pa_grand_total - $pa_edinar_total;

                            // tolak duit
                            $data_trans = array(
                                'me_id_from' => $me_id,
                                'me_id_to' => 0,
                                'tr_amount' => $pa_grand_total,
                                'pt_id' => 0,
                                'at_id' => 1,
                                'ft_id' => 2,
                                'tr_notes' => '',
                                'tr_datetime' => date('Y-m-d H:i:s'),
                                'ba_id' => 0,
                                'tt_id' => 5,
                                'ts_id' => 1,
                                'det_id' => 0,
                                'tr_deposit_code' => ''
                            );
                            $tr_id = $this->m_transaction->add($data_trans);
                            
                            // masuk duit
                            $data_trans2 = array(
                                'me_id_from' => 0,
                                'me_id_to' => $me_id,
                                'tr_amount' => $pa_edinar_total,
                                'pt_id' => 0,
                                'at_id' => 1,
                                'ft_id' => 2,
                                'tr_notes' => '',
                                'tr_datetime' => date('Y-m-d H:i:s'),
                                'ba_id' => 0,
                                'tt_id' => 5,
                                'ts_id' => 1,
                                'det_id' => 0,
                                'tr_deposit_code' => ''
                            );
                            $tr_id2 = $this->m_transaction->add($data_trans2);

                            $dinar_balance -= $pa_grand_total;
                            $dinar_balance += $pa_edinar_total;
                            $dinar_rahnu_gram = $da[0]->da_gold_rahnu_gram + $total_weight;
                            $dinar_rahnu_money = $da[0]->da_gold_rahnu_money + $pa_grand_total;
                            $data_da = array(
                                'da_gold_balance' => $dinar_balance,
                                'da_gold_rahnu_gram' => $dinar_rahnu_gram,
                                'da_gold_rahnu_money' => $dinar_rahnu_money
                            );
                            $bol_da = $this->m_dinarpal_account->edit($da_id, $data_da);
                            if ($bol_da == false) {
                                $this->session->set_flashdata('error', 'Cannot update your account balance!');
                                redirect(site_url('member/purchaseAndPawn/purchaseAndPawn/21.1'));
                            }
                        }
                        $carts = $this->cart->contents();
                        foreach ($carts as $ca) {
                            $data_pc = array(
                                'pa_id' => $pa_id,
                                'itct_id' => $ca['id'],
                                'pc_qty' => $ca['qty']
                            );
                            $pc_id = $this->m_pawn_child->add($data_pc);
                            if ($pc_id) {
                                $pcc_image = '-';
                                $itct = $this->m_itc_type->get($ca['id']);
                                if (isset($itct) && !empty($itct)) {
                                    $pcc_image = $itct[0]->itct_image;
                                }
                                $data_pcc = array(
                                    'pc_id' => $pc_id,
                                    'pcc_image' => $pcc_image,
                                    'pcc_datetime' => date('Y-m-d H:i:s'),
                                    'pcc_price' => '0',
                                    'pcc_status' => 1
                                );
                                for ($ipcc = 0; $ipcc < $ca['qty']; $ipcc++) {
                                    $pcc_id = $this->m_pawn_child_child->add($data_pcc);
                                }
                            }
                        }
                        //$this->session->set_flashdata('sucess', 'Alhamdulillah, your transaction is successful.');
                        $this->session->set_userdata('pa_id', $pa_id);
                        $this->session->set_userdata('cart_dinarpal', $this->cart->contents());
                        $this->cart->destroy();
                        $this->session->set_userdata('data_post', $data['data_post']);
                        redirect(site_url('member/purchaseAndPawn/resitPurchase2/28'));
                    } else {
                        $this->session->set_flashdata('error', 'There is something wrong with your purchases!');
                        redirect(site_url('member/purchaseAndPawn/purchaseAndPawn/21.1'));
                    }
                }
            }
        }
	
	public function getAmil()
	{
		$am_id = $this->input->post('am_id');
		$am = $this->m_amil->get($am_id);
		//echo $am[0]->am_name;
	}
	
	public function getMetalRate()
	{
		$data['purity'] = $this->m_purity->getAll();
		$data['item_type_purity'] = $this->m_item_type_purity->getAll();
		echo $this->load->view($this->parent_page.'/purchaseAndPawn/ajax/metalRate', $data, true);
	}
        
        public function getNewUsedItem($stat=1) {
                $col_rate = $this->input->post('col_rate');
                $sess = $this->session->all_userdata();
                $me_id = $sess['me_id'];
                $used_item = $this->m_used_item->getAll_carts($me_id);
                $data['used_item'] = $used_item;
                $data['col_rate'] = $col_rate;
                $data['storage_location'] = $this->m_storage_location->getAll();
                $ft = $this->m_fee_type->get(3);
                if (!isset($ft) || empty($ft)) {
                    echo "Opss! Fee cannot be calculated .."; die();
                }
                $data['ft'] = $ft;
                $data['stat'] = $stat;
                if ($stat == 1 || $stat == 2) {
                    echo $this->load->view($this->parent_page.'/purchaseAndPawn/ajax/getListUsedItem', $data, true);
                } else if ($stat == 3) {
                    if (isset($used_item) && !empty($used_item)) {
                        $t_ed = 0.0;
                        foreach ($used_item as $ui) {
                            $weight = $ui->ui_weight;
                            $pu_id = $ui->pu_id;
                            $it_id = $ui->it_id;
                            $price_rate = $this->m_item_type_purity->getRate($it_id, $pu_id);
                            $price = $price_rate * $weight;
                            $qty = $ui->ui_qty;
                            $totalPrice = $price * $qty;
                            $totalEDinar = $totalPrice * ($col_rate * 1.0 / 100);
                            $t_ed += $totalEDinar;
                        }
                        echo number_format($t_ed, 2);
                    } else {
                        echo number_format(0.00, 2);
                    }
                } else if ($stat == 4) {
                    if (isset($used_item) && !empty($used_item)) {
                        
                        // account dinar member
                        $da = $this->m_dinarpal_account->get_member($me_id);
                        $edinarbalance = (isset($da) && !empty($da)) ? ($da[0]->da_gold_balance) : (0.0);
                        
                        $t_ed = 0.0;
                        foreach ($used_item as $ui) {
                            $weight = $ui->ui_weight;
                            $pu_id = $ui->pu_id;
                            $it_id = $ui->it_id;
                            $price_rate = $this->m_item_type_purity->getRate($it_id, $pu_id);
                            $price = $price_rate * $weight;
                            $qty = $ui->ui_qty;
                            $totalPrice = $price * $qty;
                            $totalEDinar = $totalPrice * ($col_rate * 1.0 / 100);
                            $t_ed += $totalEDinar;
                        }
                        $t_ed += $edinarbalance;
                        echo number_format($t_ed, 2);
                    } else {
                        echo number_format(0.00, 2);
                    }
                } else if ($stat == 5) {
                    if (isset($used_item) && !empty($used_item)) {
                        
                        $t_w = 0.0;
                        $t_prg = 0.0;
                        $t_pr = 0.0;
                        $t_q = 0.0;
                        $t_tp = 0.0;
                        $t_ed = 0.0;
                        $t_skf = 0.0;
                        
                        $arrOut = array();
                        
                        foreach ($used_item as $ui) {
                            
                            $arrChild = array(
                                'ui_id' => $ui->ui_id,
                                'pc_qty' => $ui->ui_qty
                            );
                            $arrOut[] = $arrChild;
                            
                            $weight = $ui->ui_weight;
                            $t_w += $weight;
                            
                            $pu_id = $ui->pu_id;
                            $it_id = $ui->it_id;
                            $price_rate = $this->m_item_type_purity->getRate($it_id, $pu_id);
                            $t_prg += $price_rate;
                            
                            $price = $price_rate * $weight;
                            $t_pr += $price;
                            
                            $qty = $ui->ui_qty;
                            $t_q += $qty;
                            
                            $totalPrice = $price * $qty;
                            $t_tp += $totalPrice;
                            
                            $totalEDinar = $totalPrice * ($col_rate * 1.0 / 100);
                            $t_ed += $totalEDinar;
                            
                            $marhun = $totalEDinar;
                            $safeKeepingFee = $marhun * ($ft[0]->ft_price * 1.0 / 100);
                            $t_skf += $safeKeepingFee;
                        }
                        
                        $arrOut[] = $t_w . "|t_w|" 
                                . $t_prg . "|t_prg|" 
                                . $t_pr . "|t_pr|" 
                                . $t_q . "|t_q|" 
                                . $t_tp . "|t_tp|" 
                                . $t_ed . "|t_ed|" 
                                . $t_skf . "|t_skf";
                        return $arrOut;
                        die();
                        
                    } else {
                        return array();
                    }
                }
        }
        
        public function setNewUsedItem() {
            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
            $arr = $this->input->post();
            unset($arr['pc1']);
//            $qty = $arr['qty'];
            $qty = 1;
            $arr['ui_qty'] = $qty;
            unset($arr['qty']);
            $arr['me_id'] = $me_id;
            $arr['ui_status'] = 1;
            
            // validation on weight and quantity
            if ( (!isset($arr['ui_weight']) || empty($arr['ui_weight'])) 
                    || ($arr['ui_weight'] <= 0 || $arr['ui_weight'] == '') ) {
                $this->session->set_flashdata('error','Opss! Invalid weight.');
                redirect(site_url('member/purchaseAndPawn/pawn2/22#anchor1'));
            }
            if ( (!isset($arr['ui_qty']) || empty($arr['ui_qty'])) 
                    || ($arr['ui_qty'] <= 0 || $arr['ui_qty'] == '') ) {
                $this->session->set_flashdata('error', 'Opss! Invalid quantity.');
                redirect(site_url('member/purchaseAndPawn/pawn2/22#anchor1'));
            }
            
            $dataUpload = $this->my_func->do_upload('ui_image', './assets/uploads/items/');
            if (!isset($dataUpload['error'])) {
                $arr['ui_image'] = $dataUpload['upload_data']['file_name'];
                $uiAdd = $this->m_used_item->add($arr);
                if ($uiAdd) {
                    
                    // success add
                    
                } else {
                    $this->session->set_flashdata('error', 'Opss! Something wrong while adding that item.');
//                    echo "error";
//                    die();
                }
            } else {
                $this->session->set_flashdata('error', 'Opss! Error image: ' . $dataUpload['error']);
//                echo "error";
//                die();
            }
            redirect(site_url('member/purchaseAndPawn/pawn2/22#anchor1'));
        }


        public function topup($output='dashboard', $menu1='11') 
        {
            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
            $me_type = $sess['me_type'];
            $data['me_id'] = $me_id;
            $data['me_type'] = $me_type;

            if ($output != 'dashboard') {

                $title = 'E-Favorite';
                switch ($menu1) {
                    case 't01': 
                        $title = 'Prepaid Topup';
                        break;
                    case 't02':
                        if ($this->input->post('telco')) {
                            $arr = $this->input->post();
                            $amount = $arr['amount'];
                            $currency = $this->my_func->getCurrency();
                            if ($amount == '1') {
                                $title = 'Prepaid Topup Summary';
                                $output = 'topupSummary';
                            } else if ($amount == '2') {
                                $title = 'Prepaid Topup using GRM Silver';
                                $output = 'topup21';
                            } else if ($amount == '3') {
                                $title = 'Prepaid Topup using GRM Gold';
                                $output = 'topup22';
                            }
                        } else {
                            redirect(site_url('member/topup/topup1/t01'));
                        }
                        break;
                    case 't021':
                        $title = 'Prepaid Topup using GRM Silver Summary';
                        break;
                    case 't022':
                        $title = 'Prepaid Topup using GRM Gold Summary';
                        break;
                    case 't03':
                        $title = 'Prepaid Topup Receipt';
                        break;
                }
                $this->_papar($data, 'topup/' . $output, $menu1, $title);
            } else {
                $this->_papar();
            }
        }

	
        
        public function commissions($output = 'dashboard', $menu1 = '11') {

            $data = array();
            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
            if ($output != 'dashboard') {

                $title = 'E-Favorite';
                switch ($menu1) {
                    case '19932':
                        $title = 'View Commissions';
                        $geneology_aff_child1 = $this->m_geneology_aff_child->getAll_parent($me_id, 1);
                        $geneology_aff_child3 = $this->m_geneology_aff_child->getAll_parent($me_id, 3);
                        $geneology_aff_child1x = (isset($geneology_aff_child1) && !empty($geneology_aff_child1)) ? ($geneology_aff_child1) : (array());
                        $geneology_aff_child3x = (isset($geneology_aff_child3) && !empty($geneology_aff_child3)) ? ($geneology_aff_child3) : (array());
                        $data['geneology_aff_child'] = array_merge($geneology_aff_child1x, $geneology_aff_child3x);
                        break;
                    case '199321':
                        $title = 'View Commissions';
                        if ($this->input->get('ga')) {
                            $gac_idx = $this->input->get('ga');
                            $gac_id = $this->my_func->dinarpal_decrypt($gac_idx);
                            $mgac1 = $this->m_geneology_aff_child->get($gac_id, 1);
                            $mgac3 = $this->m_geneology_aff_child->get($gac_id, 3);
                            $mgac1x = (isset($mgac1) && !empty($mgac1)) ? ($mgac1) : (array());
                            $mgac3x = (isset($mgac3) && !empty($mgac3)) ? ($mgac3) : (array());
                            $data['mgac'] = array_merge($mgac1x, $mgac3x);
                        } else {
                            $this->session->set_flashdata('error', 'Opss! Invalid account.');
                            redirect(site_url('member/commissions/viewCommissions/19932'));
                        }
                        break;
                    case '19933': 
                        $title = 'Payment History';
                        $data['geneology_aff_child'] = $this->m_geneology_aff_child->getAll_parent($me_id, 2);
                        break;
                    case '199331':
                        $title = 'Payment History';
                        if ($this->input->get('ga')) {
                            $gac_idx = $this->input->get('ga');
                            $gac_id = $this->my_func->dinarpal_decrypt($gac_idx);
                            $data['mgac'] = $this->m_geneology_aff_child->get($gac_id, 2);
                        } else {
                            $this->session->set_flashdata('error', 'Opss! Invalid account.');
                            redirect(site_url('member/commissions/paymentHistory/19933'));
                        }
                        break;
                }

                $this->_papar($data, 'commissions/' . $output, $menu1, $title);
            } else {
                $this->_papar();
            }
        }

        public function advertisingAndPromotions($output='dashboard', $menu1='11')
	{
            $data = array();
            $sess = $this->session->all_userdata();
            $me_id = $sess['me_id'];
		if ($output != 'dashboard')
		{
			$title = 'Dashboard';
			switch($menu1) {
                                //echo 'lalala';
				case '19941': 
                                    $ga = $this->m_geneology_aff->getMe($me_id);
                                    $data['me'] = $sess;
//                                    $data['ga_unique_link'] = (isset($ga) && !empty($ga)) ? ($ga[0]->ga_unique_link) : ("0000000000000000");
                                    $data['ga_unique_link'] = (isset($sess['me_username']) && !empty($sess['me_username'])) ? ($sess['me_username']) : ("-0-");
                                    $title = 'Unique Link';                  
                                    break;
                                case '19942': 
                                    $title = 'Banner';                       
//                                    $crud=new grocery_CRUD();
//                                    $crud->set_theme('twitter-bootstrap');
//                                    $crud->unset_export();
//                                    $crud->unset_print();
//                                    $crud->unset_add();
//                                    $crud->unset_edit();
//                                    $crud->unset_delete();
//                                    $crud->set_table('banners');
//                                     $crud->display_as('ban_name', 'Name')
//                                             ->display_as('ban_image', 'Banner Picture')
//                                             ->display_as('ban_date', 'Date')
//                                             ->display_as('bty_id', 'Banner Type');
//                                    $crud->set_relation('bty_id', 'banners_type', 'bty_desc');
//                                    $crud->set_field_upload('ban_image', 'assets/uploads/banners/');
//                                    $data = $crud->render();
                                    $data['banners'] = $this->m_banners->getAll();
                                    break;
				case '19943': 
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
                                    $crud->unset_add();
                                    $crud->unset_edit();
                                    $crud->unset_delete();
                                    $data = $crud->render(); 
                                    break;
			
			}
			$this->_papar($data, 'advertisingAndPromotions/'.$output, $menu1, $title);
		}
		else
		{
			$this->_papar(); 
		}
	}
        
        public function affiliate($output = 'dashboard', $menu1 = '11') {
            if ($output != 'dashboard') {

                $data = array();
                $sess = $this->session->all_userdata();
                $me_id = $sess['me_id'];
                $title = 'E-Favorite';
                switch ($menu1) {

                    case '1991':
                        $title = 'Ittihad Overview ';

                        $gac_status_pending = 1;
                        $bol_today = 1;
                        $gac = $this->m_geneology_aff_child->getAll_parent($me_id, $gac_status_pending);
                        $data['total_trans'] = sizeof($gac);
                        $gac_latest = $this->m_geneology_aff_child->getAll_parent($me_id, $gac_status_pending, $bol_today);
                        $gac_all = $this->m_geneology_aff_child->getAll_parent($me_id, $gac_status_pending);
                        $data['curr_earn'] = (isset($gac_latest) && !empty($gac_latest)) ? ($gac_latest[0]->gac_amount) : (0);
                        $total_earn = 0.0;
                        if (isset($gac_all) && !empty($gac_all)) {
                            foreach ($gac_all as $gall) {
                                $total_earn += $gall->gac_amount;
                            }
                        }
                        $data['total_earn'] = $total_earn;
                        $data['ga'] = $this->m_geneology_aff->getParent($me_id);
                        break;
                    case '1992':
                        $title = 'Geneology';
                        $data['introducer'] = $this->m_geneology_aff->getParent($me_id);
                        $data['geneology_aff'] = $this->m_geneology_aff->getAll($me_id);
                        break;
                    case '19921':
                        $title = 'Geneology';
                        if ($this->input->get('me')) {
                            $me_idx = $this->input->get('me');
                            $me_id = $this->my_func->dinarpal_decrypt($me_idx);
                            $data['members'] = $this->m_members->get($me_id);
                        } else {
                            $this->session->set_flashdata('error', 'Opss! Invalid account.');
                            redirect(site_url('member/affiliate/geneology/1992'));
                        }
                        break;
                    case '1993':
                        $title = 'Commission';
                        $data['geneology_aff_child'] = $this->m_geneology_aff_child->getAll_parent($me_id, 1);
                        break;
                    case '19931':
                        $title = 'Commission';
                        if ($this->input->get('ga')) {
                            $gac_idx = $this->input->get('ga');
                            $gac_id = $this->my_func->dinarpal_decrypt($gac_idx);
                            $data['mgac'] = $this->m_geneology_aff_child->get($gac_id, 1);
                        } else {
                            $this->session->set_flashdata('error', 'Opss! Invalid account.');
                            redirect(site_url('member/affiliate/commissions/1993'));
                        }
                        break;
                    case '1994':
                        $title = 'Advertising And Promotions';
                        $data['geneology_aff_child'] = $this->m_geneology_aff_child->getAll_parent($me_id, 2);
                        break;
                }

                $this->_papar($data, 'affiliate/' . $output, $menu1, $title);
            } else {
                $this->_papar();
            }
        }

        public function purchaseAndPawn($output='dashboard', $menu1='11')
	{
                $sess = $this->session->all_userdata();
		$me_id = $sess['me_id'];
		$data = '';
		if ($output != 'dashboard')
		{
			$title = 'E-Favorite';
			switch($menu1) {
                                case '26.1':
                                    $title = "Purchase Confirmation";
                                    $data['data_post'] = $this->input->post();
                                    $data['data_post']['storage_location'] = $this->m_storage_location->get($this->input->post('storageLocation'));
                                    $data['data_post']['payment_method'] = $this->m_payment_method->get($this->input->post('paymentMethod'));
                                    break;
                                case '28.1':
                                    $data['data_post'] = $this->input->post();
                                    $data['amil'] = $this->m_amil->getAll();
                                    $data['data_post']['storage_location'] = $this->m_storage_location->get($this->input->post('storageLocation'));
                                    $data['data_post']['payment_method'] = $this->m_payment_method->get($this->input->post('paymentMethod'));
                                    $title = "Pawn";
                                    break;
				case '26':
					$this->session->unset_userdata('cart_dinarpal');
					if ($this->input->post('col_rate') && $this->cart->total() != 0) {
						$data['data_post'] = $this->input->post();
						//print_r($data['data_post']); die();
						$data['data_post']['storage_location'] = $this->m_storage_location->get($this->input->post('storageLocation'));
						$data['data_post']['payment_method'] = $this->m_payment_method->get($this->input->post('paymentMethod'));
						//print_r($data['data_post']); die();
					} else {
						$this->session->set_flashdata('error', 'There is something wrong with your purchases!');
						redirect(site_url('member/purchaseAndPawn/purchase/21'));
					}
					$data['amil'] = $this->m_amil->getAll();
				case '28':
					if ($this->input->post()) {
						if ($this->input->post('am_id')) {
							$am_id = $this->input->post('am_id');
							$data['data_post'] = $this->input->post();
							//print_r($data['data_post']); die();
							$me_id = $this->session->userdata('me_id');
							$data['data_post']['me_id'] = $me_id;
							$time = date('H:i:s');
							$data['data_post']['pa_start_date'] = $this->my_func->date_to_sql_time($data['data_post']['pa_start_date'], $time);
							$data['data_post']['pa_end_date'] = $this->my_func->date_to_sql_time($data['data_post']['pa_end_date'], $time);
							$data['data_post']['pa_rahnu_rate'] = $this->session->userdata('col_rate');
							$data['data_post']['pt_id'] = 1;
							$cart_x = $this->cart->contents();
							$total_weight = 0;
							foreach ($cart_x as $cx) {
								$total_weight += ($cx['options']['itct']->itct_weight * $cx['qty']);
							}
							$da = $this->m_dinarpal_account->get_member($me_id);
							$dinar_balance = $da[0]->da_gold_balance;
							
							$pa_grand_total = $data['data_post']['pa_grand_total'];
							$pa_edinar_total = $data['data_post']['pa_edinar_total'];
							unset($data['data_post']['pa_edinar_total']);
							
							//print_r($data['data_post']); die();
							
							$data['data_post']['pa_total_weight'] = $total_weight;
							
							if ($pa_grand_total > $dinar_balance) {
								$this->session->set_flashdata('error', 'You have unsufficient balance!');
								redirect(site_url('member/purchaseAndPawn/purchase/21'));
							}
							
							$pa_id = $this->m_pawn->add($data['data_post']);
							if ($pa_id && $this->cart->total() != 0) {
								if (($pa_grand_total - $pa_edinar_total) > $dinar_balance) {
									$this->session->set_flashdata('error', 'You have unsufficient balance!');
									redirect(site_url('member/purchaseAndPawn/purchase/21'));
								} else {
									$da_id = $da[0]->da_id;
                                                                        $dinar_kene_bayar = $pa_grand_total - $pa_edinar_total;
                                                                        
                                                                        $data_trans = array(
                                                                            'me_id_from' => $me_id,
                                                                            'me_id_to' => 0,
                                                                            'tr_amount' => $dinar_kene_bayar,
                                                                            'pt_id' => 0,
                                                                            'at_id' => 1,
                                                                            'ft_id' => 2,
                                                                            'tr_notes' => '',
                                                                            'tr_datetime' => date('Y-m-d H:i:s'),
                                                                            'ba_id' => 0,
                                                                            'tt_id' => 5,
                                                                            'ts_id' => 1,
                                                                            'det_id' => 0,
                                                                            'tr_deposit_code' => ''
                                                                        );
                                                                        $tr_id = $this->m_transaction->add($data_trans);
                                                                        
									$dinar_balance -= $pa_grand_total;
									$dinar_balance += $pa_edinar_total;
									$dinar_rahnu_gram = $da[0]->da_gold_rahnu_gram + $total_weight;
									$dinar_rahnu_money = $da[0]->da_gold_rahnu_money + $pa_grand_total;
									$data_da = array(
										'da_gold_balance' => $dinar_balance,
										'da_gold_rahnu_gram' => $dinar_rahnu_gram,
										'da_gold_rahnu_money' => $dinar_rahnu_money
									);
									$bol_da = $this->m_dinarpal_account->edit($da_id, $data_da);
									if ($bol_da == false) {
										$this->session->set_flashdata('error', 'Cannot update your account balance!');
										redirect(site_url('member/purchaseAndPawn/purchase/21'));
									}
								}
								$carts = $this->cart->contents();
								foreach ($carts as $ca) {
									$data_pc = array(
										'pa_id' => $pa_id,
										'itct_id' => $ca['id'],
										'pc_qty' => $ca['qty']
									);
									$pc_id = $this->m_pawn_child->add($data_pc);
                                                                        if ($pc_id) {
                                                                            $pcc_image = '-';
                                                                            $itct = $this->m_itc_type->get($ca['id']);
                                                                            if (isset($itct) && !empty($itct)) {
                                                                                $pcc_image = $itct[0]->itct_image;
                                                                            }
                                                                            $data_pcc = array(
                                                                                'pc_id' => $pc_id,
                                                                                'pcc_image' => $pcc_image,
                                                                                'pcc_datetime' => date('Y-m-d H:i:s'),
                                                                                'pcc_price' => '0',
                                                                                'pcc_status' => 1
                                                                            );
                                                                            for ($ipcc=0; $ipcc<$ca['qty']; $ipcc++) {
                                                                                $pcc_id = $this->m_pawn_child_child->add($data_pcc);
                                                                            }
                                                                        }
								}
								//$this->session->set_flashdata('sucess', 'Alhamdulillah, your transaction is successful.');
								$this->session->set_userdata('pa_id', $pa_id);
								$this->session->set_userdata('cart_dinarpal', $this->cart->contents());
								$this->cart->destroy();
                                                                $this->session->set_userdata('data_post', $data['data_post']);
								redirect(site_url('member/purchaseAndPawn/resitPurchase/28'));
							} else {
								$this->session->set_flashdata('error', 'There is something wrong with your purchases!');
								redirect(site_url('member/purchaseAndPawn/purchase/21'));
							}
						}
					}/* else {
						redirect(site_url('member/purchaseAndPawn/purchase/21'));
					}*/
				case '21':
					$data['purity'] = $this->m_purity->getAll();
					$data['item_type_purity'] = $this->m_item_type_purity->getAll();
					$data['item_type'] = $this->m_item_type->getAll();
					$data['payment_method'] = $this->m_payment_method->getAll();
					$data['storage_location'] = $this->m_storage_location->getAll();
					$title = 'Purchase &amp; Pawn';
					break;
                                case '21.1':
                                    $data['construction_dinarpal'] = 1;
                                    $data['purity'] = $this->m_purity->getAll();
                                    $data['item_type_purity'] = $this->m_item_type_purity->getAll();
                                    $data['item_type'] = $this->m_item_type->getAll();
                                    $data['payment_method'] = $this->m_payment_method->getAll();
                                    $data['storage_location'] = $this->m_storage_location->getAll();
                                    $title = 'Purchase And Pawn';
                                    break;
				case '22':
                                    $data['construction_dinarpal'] = 1;
                                        if ($this->input->get('ui')) {
                                            $ui_id_temp = $this->input->get('ui');
                                            $ui_id = $this->my_func->dinarpal_decrypt($ui_id_temp);
                                            $ui = $this->m_used_item->get($ui_id);
                                            $this->m_used_item->delete($ui_id);
                                            $path = './assets/uploads/dropzone/' . $ui[0]->ui_image;
                                            unlink($path);
                                            redirect(site_url('member/purchaseAndPawn/pawn2/22#anchor1'));
                                        }
					$data['brands'] = $this->m_brands->getAll();
                                        $data['item_type'] = $this->m_item_type->getAll();
					$data['item_courier'] = $this->m_item_courier->getAll();
					$data['item_status_courier'] = $this->m_item_status_courier->getAll();
					$data['purity'] = $this->m_purity->getAll();
					$data['storage_location'] = $this->m_storage_location->getAll();
				case '27':
                                        if ($this->input->post('formpostcourier1') && $this->input->post('formpostcourier1')==1) {
                                            $arr = $this->input->post();
                                            
                                            // validation fix if no item been pawned
                                            $used_item = $this->m_used_item->getAll_carts($me_id);
                                            $arr['used_item'] = $used_item;
                                            
                                            $sl_id = $arr['sl_id'];
                                            $sl = $this->m_storage_location->get($sl_id);
                                            $sl_address = (isset($sl) && !empty($sl)) ? ($sl[0]->sl_address) 
                                                    : (".. The storage location doesn't have any address! ..");
                                            
                                            $data['sl_address'] = $sl_address;
                                            $today = date('Y-m-d');
                                            $data['pa_start_date'] = date('d/m/Y', strtotime($today));
                                            $data['pa_end_date'] = date('d/m/Y', strtotime("+6 months", strtotime($today)));
                                            
                                            if (!isset($used_item) || empty($used_item)) {
                                                $this->session->set_flashdata('error', 'Opss! Your cart is '
                                                        . 'empty. You didn\'t set any items to be pawned yet.');
                                                redirect(site_url('member/purchaseAndPawn/pawn2/22#anchor1'));
                                            }
                                            
                                            $data['col_rate'] = $arr['col_rate'];
                                            $data['arr'] = $arr;
                                        }
                                        $data['amil'] = $this->m_amil->getAll();
				case '29':
                                        if ($this->input->post('formpostcourier2') && $this->input->post('formpostcourier2')==2) {
                                            $arr = $this->input->post();
                                            $arr['me_id'] = $me_id;
                                            $arr['data'] = $this->getNewUsedItem(5);
//                                            print_r($arr); die();
                                            
                                            $arr['pa_start_date'] = $this->my_func->date_to_sql_time($arr['pa_start_date'], date('Y-m-d'));
                                            $arr['pa_end_date'] = $this->my_func->date_to_sql_time($arr['pa_end_date'], date('Y-m-d'));
                                            
                                            $pc_data = $arr['data'][sizeof($arr['data'])-1];
                                            $pcd = explode("|", $pc_data);
                                            
//                                            print_r($arr); print_r($pcd); die();
                                            
                                            $pa_total_weight = $pcd[0];
                                            $pa_grand_total = $pcd[8];
                                            $pa_rahnu_rate = $arr['pa_rahnu_rate'] * 1.0 / 100;
                                            
                                            $pawnAdd = array(
                                                'me_id' => $me_id,
                                                'pa_start_date' => $arr['pa_start_date'],
                                                'pa_end_date' => $arr['pa_end_date'],
                                                'am_id' => $arr['am_id'],
                                                'pa_total_weight' => $pa_total_weight,
                                                'pa_grand_total' => $pa_grand_total,
                                                'pa_rahnu_rate' => $pa_rahnu_rate,
                                                'pa_safe_fee' => 0,
                                                'pt_id' => 2, // pawn type PC
                                                'sl_id' => $arr['sl_id'],
                                                'pa_status' => 2, // pending
                                                'pa_tracking' => $arr['pa_tracking']
                                            );
                                            $pa_id = $this->m_pawn->add($pawnAdd);
                                            if ($pa_id) {
                                                $this->session->set_userdata('pc_pa_id', $pa_id);
                                                $sizeData = sizeof($arr['data']);
                                                for ($i=0; $i<$sizeData-1; $i++) {
                                                    $ui = $arr['data'][$i];
//                                                    print_r($arr['data']);
                                                    $ui_id = $ui['ui_id'];
                                                    $uiObj = $this->m_used_item->get($ui_id);
                                                    $pcc_image = (isset($uiObj) && !empty($uiObj)) ? ($uiObj[0]->ui_image) : ("");
                                                    $tukarUiStatus = array('ui_status' => 2);
                                                    $this->m_used_item->edit($ui_id, $tukarUiStatus);
                                                    $pc_qty = $ui['pc_qty'];
                                                    $pawnChildAdd = array(
                                                        'pa_id' => $pa_id,
                                                        'ui_id' => $ui_id,
                                                        'pc_qty' => $pc_qty,
                                                        'pc_status' => 1
                                                    );
                                                    $pc_id = $this->m_pawn_child->add($pawnChildAdd);
                                                    if ($pc_id) {
                                                        for ($i1=0; $i1<$pc_qty; $i1++) {
                                                            $pawnChildChildAdd = array(
                                                                'pc_id' => $pc_id,
                                                                'pcc_image' => $pcc_image,
                                                                'pcc_datetime' => date('Y-m-d H:i:s'),
                                                                'pcc_price' => 0,
                                                                'pcc_status' => 1
                                                            );
                                                            $pcc_id = $this->m_pawn_child_child->add($pawnChildChildAdd);
                                                        }
                                                        if ($pc_id) {
//                                                            redirect(site_url('member/purchaseAndPawn/post2/29'));
                                                        } else {
                                                            $this->session->set_flashdata('error', 'Opss! Something wrong with the pawning.'
                                                                    . ' Contact your administrator for this inconvenient incident.');
                                                            redirect(site_url('member/purchaseAndPawn/pawn2/22#anchor1'));
                                                        }
                                                    } else {
                                                        $this->session->set_flashdata('error', 'Opss! Something wrong with the pawning.'
                                                                . ' Contact your administrator for this inconvenient incident.');
                                                        redirect(site_url('member/purchaseAndPawn/pawn2/22#anchor1'));
                                                    }
                                                }
                                            } else {
                                                $this->session->set_flashdata('error', 'Opss! Something wrong with the pawning.'
                                                        . ' Contact your administrator for this inconvenient incident.');
                                                redirect(site_url('member/purchaseAndPawn/pawn2/22#anchor1'));
                                            }
                                            redirect(site_url('member/purchaseAndPawn/post2/29'));
                                        }
					$title = 'Pawn &amp; Courier';
					break;
				case '23':
                                    $data['construction_dinarpal'] = 1;
					$me_id = $this->session->userdata('me_id');
					$data['pawn'] = $this->m_pawn->getAll_basedMember($me_id, 'DESC', 'all');
                                        $data['pawn_type'] = $this->m_pawn_type->getAll();
                                        $data['pawn_status'] = $this->m_pawn_status->getAll();
                                        if ($this->input->post('searchform')) {
                                                $arr = $this->input->post();
                                                $pt_id = $arr['pt_id'];
                                                $ps_id = $arr['ps_id'];
                                                $data['arr'] = $arr;
                                                $data['pawn'] = $this->m_pawn->getAll_basedMember($me_id, 'DESC', 'all', $pt_id, $ps_id);
                                        }
				case '231':
					$title = 'E-Rahnu History';
                                        if ($this->input->get('rh')) {
                                            $pa_id = $this->my_func->dinarpal_decrypt($this->input->get('rh'));
                                            if ($this->input->post('formpcupdate') && $this->input->post('formpcupdate')==1) {
                                                $dataupdate = array('pa_tracking' => $this->input->post('pa_tracking'));
                                                $pa_id = $this->input->post('pa_id');
                                                $this->m_pawn->edit($pa_id, $dataupdate);
                                            }
                                            $pa = $this->m_pawn->get($pa_id);
                                            $data['pa'] = $pa;
                                            $stat = ((isset($pa) && !empty($pa)) && $pa[0]->pt_code == 'PP') ? (1) : (2);
                                            $data['statp'] = $stat;
                                            $data['pa_tracking'] = (isset($pa) && !empty($pa)) ? ($pa[0]->pa_tracking) : ("");
                                            $data['pawn_child_child'] = $this->m_pawn_child_child->getAll($pa_id, $stat);
//                                            print_r(sizeof($data['pawn_child_child'])); die();
                                            
                                        }
					break;
				case '2111':
//                                    $data['construction_dinarpal'] = 1;
					$me_id = $this->session->userdata('me_id');
					$data['pawn'] = $this->m_pawn_child_child->getAll3($me_id);
                                        if ($this->input->get('it')) {
                                            $it = $this->input->get('it');
                                            $it_id = ($it == 'gold') ? (1) : (2);
                                            $data['pawn'] = $this->m_pawn_child_child->getAll3($me_id, -1, $it_id);
                                        }
                                        $data['currency'] = $this->my_func->getCurrency();
					$title = 'Rahnu Summary';
					break;
                                case '21111':
                                    $title = 'Rahnu Item Detail (Pay Loan)';
                                    if ($this->input->get('it') && $this->input->get('v')) {
                                        $vidx = $this->input->get('v');
                                        $it_type = $this->input->get('it');
                                        $v_id = $this->my_func->dinarpal_decrypt($vidx);
                                        $data['vault'] = $this->m_pawn_child_child->getVault($v_id);
                                    } else {
                                        $this->session->set_flashdata('error', 'Opss! Access Denied!!');
                                        redirect(site_url('member/dinarDirham/overview/51'));
                                    }
                                    break;
                                case '2112':
                                    $data['construction_dinarpal'] = 1;
                                    $title = 'Courier & Keep';
                                    break;
			}
			$this->_papar($data, 'purchaseAndPawn/'.$output, $menu1, $title);
		}
	
	}
        
        public function purchaseAndCourier($output='dashboard', $menu1='11')
	{
            $data = array();
		if ($output != 'dashboard')
		{
			$title = 'Dashboard';
			switch($menu1) {
                                //echo 'lalala';
				case 'x22.2': 
                                    $data['construction_dinarpal'] = 1;
                                    $title = 'Purchase And Courier';         
                                    break;
                                case 'x23.2': 
                                    $data['construction_dinarpal'] = 1;
                                    $title = 'Purchase And Pick Up';       
                                    break;
			}
			$this->_papar($data, 'purchaseAndCourier/'.$output, $menu1, $title);
		}
		else
		{
			$this->_papar(); 
		}
	}
        
        public function checkSession1() 
        {
            $sess = $this->session->all_userdata();
            if (isset($sess['me_id']) && !empty($sess['me_id'])) {
                $me_id = $sess['me_id'];
                $me = $this->m_members->get($me_id);
                $mos_id = (isset($me) && !empty($me)) ? ($me[0]->mos_id) : (1);
                if ($mos_id == 2) {
                    die("1");
                } else {
                    die("0");
                }
            } else {
                die("0");
            }
        }

	public function logout()
	{
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
            redirect(site_url('login'));
	}
}
/* End of file welcome.php */
/* Location: ./application/controllers/bootigniter.php */