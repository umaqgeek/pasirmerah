<?php
  class M_members extends CI_Model {
      
          function deleteMemberAllAccount($me_id) {
              
              // delete members
              $this->db->where('me_id', $me_id);
              $this->db->delete('members');
              
              // delete account
              $this->db->where('me_id', $me_id);
              $this->db->delete('dinarpal_account');
              
              // delete emails
              $this->db->where('me_id', $me_id);
              $this->db->delete('emails');
              
              // delete geneology
              $this->db->where('me_id', $me_id);
              $this->db->delete('geneology_aff');
              
              // geneology back to admin hq
              $data = array('me_id_parent' => 1);
              $this->db->where('me_id_parent', $me_id);
              $this->db->update('geneology_aff', $data);
              
              // delete waris
              $this->db->where('me_id', $me_id);
              $this->db->delete('bene_info_waris');
              
              // delete amanah deal
              $this->db->where('me_id_from', $me_id);
              $this->db->or_where('me_id_to', $me_id);
              $this->db->delete('amanah_deal');
              
              // delete bank member
              $this->db->where('me_id', $me_id);
              $this->db->delete('banks_members');
              
              // delete bid
              $this->db->where('me_id', $me_id);
              $this->db->delete('bid_member');
              
              // delete button api
              $this->db->where('me_id', $me_id);
              $this->db->delete('button_api');
              
              // delete cards
              $this->db->where('me_id', $me_id);
              $this->db->delete('cards');
              
              // delete deposit
              $this->db->where('me_id', $me_id);
              $this->db->delete('deposit');
              
              // delete dinarpal_document
              $this->db->where('me_id', $me_id);
              $this->db->delete('dinarpal_document');
              
              // delete dinarpal_transaction
              $this->db->where('me_id', $me_id);
              $this->db->delete('dinarpal_transaction');
              
              // delete item_storage
              $this->db->where('me_id', $me_id);
              $this->db->delete('item_storage');
              
              // delete keep
              $this->db->where('me_id', $me_id);
              $this->db->delete('keep');
              
              // delete liquid_item
              $this->db->where('me_id', $me_id);
              $this->db->delete('liquid_item');
              
              // delete members_verification
              $this->db->where('me_id', $me_id);
              $this->db->delete('members_verification');
              
              // delete merchant
              $this->db->where('me_id', $me_id);
              $this->db->delete('merchant');
              
              // delete pawn
              $this->db->where('me_id', $me_id);
              $this->db->delete('pawn');
              
              // delete sellbuy_board
              $this->db->where('me_id', $me_id);
              $this->db->delete('sellbuy_board');
              
              // delete send_payment_gram
              $this->db->where('me_id_to', $me_id);
              $this->db->or_where('me_id_from', $me_id);
              $this->db->delete('send_payment_gram');
              
              // delete souq
              $this->db->where('me_id', $me_id);
              $this->db->delete('souq');
              
              // delete transaction
              $this->db->where('me_id_from', $me_id);
              $this->db->or_where('me_id_to', $me_id);
              $this->db->delete('transaction');
              
              // delete used_item
              $this->db->where('me_id', $me_id);
              $this->db->delete('used_item');
              
              // delete withdrawal_gram
              $this->db->where('me_id', $me_id);
              $this->db->delete('withdrawal_gram');
              
              // update vault to admin
              $data1 = array('me_id' => 1, 'vt_id' => 2);
              $this->db->where('me_id', $me_id);
              $this->db->update('vault', $data1);
          }
          
          function getAll_users($username='') {
                  $this->db->select('*');
		  $this->db->from('members me');
                  if ($username != '') {
                      $this->db->where('me.me_username', $username);
                  }
                  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
          }
	  
	  function getAll($ml_id=-1, $me_status=-1, $mas_id=-1, $me_register_date='') {
		  $this->db->select('*');
		  $this->db->from('members me, dinarpal_account da, '
                          . 'geneology_aff ga, bene_info_waris biw, '
                          . 'members_type mt, members_activation_status mas, '
                          . 'members_online_status mos ');
                  $this->db->where('me.mos_id = mos.mos_id');
		  $this->db->where('me.me_activation_status = mas.mas_id');
		  $this->db->where('me.me_id = da.me_id');
		  $this->db->where('me.me_id = ga.me_id');
		  $this->db->where('me.me_id = biw.me_id');
		  $this->db->where('me.me_type = mt.mt_code');
		  if ($ml_id != -1) {
			  $this->db->where('me.ml_id', $ml_id);
		  }
		  if ($me_status != -1) {
			  $this->db->where('me.me_status', $me_status);
		  }
		  if ($mas_id != -1) {
			  $this->db->where('me.me_activation_status', $mas_id);
		  }
                  if ($me_register_date != '') {
                      $this->db->where('DATE(me.me_register_date) = DATE(\''.$me_register_date.'\')');
                  }
		  $this->db->group_by('me.me_id');
                  $this->db->order_by('me.mos_id DESC, me.me_register_date DESC, me.me_lat_lon DESC');
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
          
          function getAll_Staff($ml_id=-1, $me_type='GA', $sl_id=-1) {
		  $this->db->select('*');
		  $this->db->from('members me, members_level ml, '
                          . 'storage_location sl, members_online_status mos ');
		  $this->db->where('me.ml_id = ml.ml_id');
		  $this->db->where('me.sl_id = sl.sl_id');
		  $this->db->where('me.mos_id = mos.mos_id');
		  $this->db->where('me.me_type', $me_type);
		  if ($ml_id != -1) {
			  $this->db->where('me.ml_id', $ml_id);
		  }
		  if ($sl_id != -1) {
			  $this->db->where('me.sl_id', $sl_id);
		  }
		  $this->db->group_by('me.me_id');
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
          
          function get_Staff($me_id=-1) {
		  $this->db->select('*');
		  $this->db->from('members me, members_level ml, '
                          . 'storage_location sl, members_online_status mos ');
		  $this->db->where('me.ml_id = ml.ml_id');
		  $this->db->where('me.sl_id = sl.sl_id');
		  $this->db->where('me.mos_id = mos.mos_id');
                  $this->db->where('me.me_id', $me_id);
		  $this->db->group_by('me.me_id');
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
          
          function getAll_DP($me_type='') {
		  $this->db->select('*');
		  $this->db->from('members me, '
                          . 'dinarpal_account da, '
                          . 'geneology_aff ga, '
                          . 'bene_info_waris biw, '
                          . 'members_type mt, '
//                          . 'storage_location sl, '
                          . 'members_status ms');
		  $this->db->where('me.me_id = da.me_id');
		  $this->db->where('me.me_id = ga.me_id');
		  $this->db->where('me.me_id = biw.me_id');
		  $this->db->where('me.me_type = mt.mt_code');
//		  $this->db->where('me.sl_id = sl.sl_id');
		  $this->db->where('me.me_status = ms.ms_id');
                  $this->db->where('me.ml_id', 3);
                  if ($me_type != '') {
                      $this->db->where('me.me_type', $me_type);
                  }
		  $this->db->group_by('me.me_id');
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
          
          function getAll_Amil($me_id=-1) {
		  $this->db->select('*');
		  $this->db->from('members me, members_type mt, '
                          . 'storage_location sl, members_status ms');
		  $this->db->where('me.me_type = mt.mt_code');
		  $this->db->where('me.sl_id = sl.sl_id');
		  $this->db->where('me.me_status = ms.ms_id');
                  $this->db->where("(me.me_type = 'DP' OR me.me_type = 'GA')");
                  $this->db->where('me.me_is_amil', 'yes');
                  if ($me_id != -1) {
                      $this->db->where('me.me_id', $me_id);
                  }
		  $this->db->group_by('me.me_id');
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
	  
	  function get($id, $isStaff=-1, $me_register_date='') {
		  $this->db->select('*');
                  if ($isStaff == -1) {
                    $this->db->from('members me, dinarpal_account da, '
                            . 'geneology_aff ga, bene_info_waris biw, '
                            . 'members_type mt, members_activation_status mas, '
                            . 'members_online_status mos ');
                    $this->db->where('me.me_id = da.me_id');
                    $this->db->where('me.me_id = ga.me_id');
                    $this->db->where('me.me_id = biw.me_id');
                  } else {
                    $this->db->from('members me, members_type mt, '
                            . 'members_activation_status mas, '
                            . 'members_online_status mos');
                  }
                  $this->db->where('me.mos_id = mos.mos_id');
		  $this->db->where('me.me_activation_status = mas.mas_id');
		  $this->db->where('me.me_type = mt.mt_code');
		  $this->db->where('me.me_id', $id);
                  if ($me_register_date != '') {
                      $this->db->where('DATE(me.me_register_date) = DATE(\'$me_register_date\')');
                  }
		  $this->db->group_by('me.me_id');
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
          
          function getStaff($me_id) {
		  $this->db->select('*');
		  $this->db->from('members me, '
                          . 'members_type mt');
		  $this->db->where('me.me_type = mt.mt_code');
		  $this->db->where('me.me_id', $me_id);
		  $this->db->group_by('me.me_id');
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
          
          function getSL($sl_id) {
		  $this->db->select('*');
		  $this->db->from('members me, dinarpal_account da, '
                          . 'geneology_aff ga, bene_info_waris biw, '
                          . 'members_type mt, members_activation_status mas, '
                          . 'members_online_status mos ');
                  $this->db->where('me.mos_id = mos.mos_id');
		  $this->db->where('me.me_activation_status = mas.mas_id');
		  $this->db->where('me.me_id = da.me_id');
		  $this->db->where('me.me_id = ga.me_id');
		  $this->db->where('me.me_id = biw.me_id');
		  $this->db->where('me.me_type = mt.mt_code');
		  $this->db->where('me.sl_id', $sl_id);
		  $this->db->where('me.me_type', 'DP');
		  $this->db->group_by('me.me_id');
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
	  
	  function getByName($username, $ml_id=-1, $me_type='') {
		  $this->db->select('*');
		  $this->db->from('members me, dinarpal_account da, '
                          . 'geneology_aff ga, bene_info_waris biw, '
                          . 'members_type mt, members_activation_status mas, '
                          . 'members_online_status mos ');
                  $this->db->where('me.mos_id = mos.mos_id');
		  $this->db->where('me.me_activation_status = mas.mas_id');
		  $this->db->where('me.me_id = da.me_id');
		  $this->db->where('me.me_id = ga.me_id');
		  $this->db->where('me.me_id = biw.me_id');
		  $this->db->where('me.me_type = mt.mt_code');
		  $this->db->where('me.me_username', $username);
                  if ($ml_id != -1) {
                      $this->db->where('me.ml_id', $ml_id);
                  }
                  if ($me_type != '') {
                      $this->db->where('me.me_type', $me_type);
                  }
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
          
          function getPoints($me_id=-1, $at_ids=array()) {
              /**
               * 
               * SELECT tr.tr_datetime, tr_amount, me.me_username, tt.tt_desc, tr.ts_id 
                    FROM `transaction` tr, members me, transaction_type tt 
                    WHERE (me.me_id = tr.me_id_to OR me.me_id = tr.me_id_from) 
                    AND tr.ts_id = 1 
                    AND tr.tt_id = tt.tt_id 
                    AND me.me_id = 6
               */
                  $this->db->select('*');
		  $this->db->from('transaction tr, members me, transaction_type tt ');
                  $str_atid = "tr.at_id = 1";
                  if (!empty($at_ids)) {
                      $str_atid = "(";
                      foreach ($at_ids as $at_id) {
                          $str_atid .= "tr.at_id = '" . $at_id . "' OR ";
                      }
                      $str_atid .= "1<>1)";
                  }
                  $this->db->where($str_atid);
                  $this->db->where('(me.me_id = tr.me_id_to OR me.me_id = tr.me_id_from) ');
		  $this->db->where('tr.ts_id = 1');
		  $this->db->where('tr.tt_id = tt.tt_id');
                  if ($me_id != -1) {
                      $this->db->where('me.me_id', $me_id);
                  }
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
          }
          
          function getAccountAdjustment($me_id=-1, $at_ids=array()) {
              /**
               * 
               * SELECT tr.tr_datetime, tr_amount, me.me_username, tt.tt_desc, tr.ts_id 
                    FROM `transaction` tr, members me, transaction_type tt 
                    WHERE (me.me_id = tr.me_id_to OR me.me_id = tr.me_id_from) 
                    AND tr.ts_id = 1 
                    AND tr.tt_id = tt.tt_id 
                    AND me.me_id = 6
               */
                  $this->db->select('*');
		  $this->db->from('transaction tr, members me, transaction_type tt ');
                  $this->db->where('(me.me_id = tr.me_id_to OR me.me_id = tr.me_id_from) ');
		  $str_atid = "tr.at_id = 1";
                  if (!empty($at_ids)) {
                      $str_atid = "(";
                      foreach ($at_ids as $at_id) {
                          $str_atid .= "tr.at_id = '" . $at_id . "' OR ";
                      }
                      $str_atid .= "1<>1)";
                  }
                  $this->db->where($str_atid);
		  $this->db->where('tr.ts_id = 1');
		  $this->db->where('tr.tt_id = 40');
		  $this->db->where('tr.tt_id = tt.tt_id');
                  if ($me_id != -1) {
                      $this->db->where('me.me_id', $me_id);
                  }
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
          }
          
          function getPointSelfTransfer($me_id=-1, $at_ids=array()) {
              /**
               * 
               * SELECT tr.tr_datetime, tr_amount, me.me_username, tt.tt_desc, tr.ts_id 
                    FROM `transaction` tr, members me, transaction_type tt 
                    WHERE (me.me_id = tr.me_id_to OR me.me_id = tr.me_id_from) 
                    AND tr.ts_id = 1 
                    AND tr.tt_id = tt.tt_id 
                    AND me.me_id = 6
               */
                  $this->db->select('*');
		  $this->db->from('transaction tr, members me, transaction_type tt ');
                  $this->db->where('(me.me_id = tr.me_id_to OR me.me_id = tr.me_id_from) ');
                  $str_atid = "tr.at_id = 1";
                  if (!empty($at_ids)) {
                      $str_atid = "(";
                      foreach ($at_ids as $at_id) {
                          $str_atid .= "tr.at_id = '" . $at_id . "' OR ";
                      }
                      $str_atid .= "1<>1)";
                  }
                  $this->db->where($str_atid);
		  $this->db->where('tr.ts_id = 1');
		  $this->db->where('(tr.tt_id = 47 OR tr.tt_id = 48 OR tr.tt_id = 49)');
		  $this->db->where('tr.tt_id = tt.tt_id');
                  if ($me_id != -1) {
                      $this->db->where('me.me_id', $me_id);
                  }
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
          }
          
          function getByUsername($username) {
		  $this->db->select('*');
		  $this->db->from('members me');
		  $this->db->where('me.me_username', $username);
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
          
          function getByUsernameLike($search_user) {
		  $this->db->select('*');
		  $this->db->from('members me');
		  $this->db->where("(UPPER(me.me_username) LIKE '%" 
                              . strtoupper($search_user) 
                              . "%' OR UPPER(me.me_firstname) LIKE '%" 
                              . strtoupper($search_user) 
                              . "%' OR UPPER(me.me_lastname) LIKE '%" 
                              . strtoupper($search_user) 
                              . "%')");
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
          
          function getByMAS($mas_id) {
		  $this->db->select('*');
		  $this->db->from('members me');
		  $this->db->where('me.me_activation_status', $mas_id);
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }

	  function getByIC($ic) {
		  $this->db->select('*');
		  $this->db->from('members me, dinarpal_account da, '
                          . 'geneology_aff ga, bene_info_waris biw, '
                          . 'members_type mt, members_activation_status mas, '
                          . 'members_online_status mos ');
                  $this->db->where('me.mos_id = mos.mos_id');
		  $this->db->where('me.me_activation_status = mas.mas_id');
		  $this->db->where('me.me_id = da.me_id');
		  $this->db->where('me.me_id = ga.me_id');
		  $this->db->where('me.me_id = biw.me_id');
		  $this->db->where('me.me_type = mt.mt_code');
		  $this->db->where('me.me_government_issue_id', $ic);
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
	  
	  function getByEmail($email) {
		  $this->db->select('*');
		  $this->db->from('members me, dinarpal_account da, '
                          . 'geneology_aff ga, bene_info_waris biw, '
                          . 'members_type mt, members_activation_status mas, '
                          . 'members_online_status mos ');
                  $this->db->where('me.mos_id = mos.mos_id');
		  $this->db->where('me.me_activation_status = mas.mas_id');
		  $this->db->where('me.me_id = da.me_id');
		  $this->db->where('me.me_id = ga.me_id');
		  $this->db->where('me.me_id = biw.me_id');
		  $this->db->where('me.me_type = mt.mt_code');
		  $this->db->where('me.me_email', $email);
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
          
          function getByEmailOrUsername($me_email, $me_username) {
		  $this->db->select('*');
		  $this->db->from('members me');
		  $this->db->where('me.me_email', $me_email);
		  $this->db->or_where('me.me_username', $me_username);
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }

	  function searchByName($name) {
		  $this->db->select('*');
		  $this->db->from('members me, dinarpal_account da, '
                          . 'geneology_aff ga, bene_info_waris biw, '
                          . 'members_type mt, members_activation_status mas, '
                          . 'members_online_status mos ');
                  $this->db->where('me.mos_id = mos.mos_id');
		  $this->db->where('me.me_activation_status = mas.mas_id');
		  $this->db->where('me.me_id = da.me_id');
		  $this->db->where('me.me_id = ga.me_id');
		  $this->db->where('me.me_id = biw.me_id');
		  $this->db->where('me.me_type = mt.mt_code');
		  $this->db->like('me.me_firstname', $name);
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d;
		  }
	  }
	  
	  function getUsername($me_id) {
		  $this->db->select('*');
		  $this->db->from('members me, dinarpal_account da, '
                          . 'geneology_aff ga, bene_info_waris biw, '
                          . 'members_type mt, members_activation_status mas, '
                          . 'members_online_status mos ');
                  $this->db->where('me.mos_id = mos.mos_id');
		  $this->db->where('me.me_activation_status = mas.mas_id');
		  $this->db->where('me.me_id = da.me_id');
		  $this->db->where('me.me_id = ga.me_id');
		  $this->db->where('me.me_id = biw.me_id');
		  $this->db->where('me.me_type = mt.mt_code');
		  $this->db->where('me.me_id', $me_id);
		  $this->db->group_by('me.me_id');
		  $q = $this->db->get();
		  if($q->num_rows() > 0) {
			  foreach($q->result() as $r) {
				  $d[] = $r;
			  }
			  return $d[0]->me_username;
		  } else {
			  return 'Dinarpal Administrator';
		  }
	  }
	  
	  function add($data) {
		  if($this->db->insert('members', $data)) {
			  return $this->db->insert_id();
		  } else {
			  return 0;
		  }
	  }
	  
	  function edit($id, $data) {
		  $this->db->where('me_id', $id);
		  return $this->db->update('members', $data);
	  }
          
          function editAll($data) {
		  return $this->db->update('members', $data);
	  }
	  
	  function delete($id) {
		  $this->db->where('me_id', $id);
		  return $this->db->delete('members');
	  }
          
      function deleteByEmail($me_email) {
		  $this->db->where('me_email', $me_email);
		  return $this->db->delete('members');
	  }

	  function overview(){

		$this->db->select('me.me_id as id , me.me_activation_status as verify , me_status as status');
		$this->db->from('members me');
		$this->db->where('me.ml_id', 3);
//		$this->db->where('me.me_type', 'NU');
		$q = $this->db->get();
		if($q->num_rows() > 0) {
			foreach($q->result() as $r) {
			  $d[] = $r;
			}
		}
		else{
			return null;
		}
		
		$num = array(0,0,0,0,0,0);
		for ($i = 0; $i < sizeof($d) ; $i++) { 
			if ($d[$i]->status == 1) {
				$num[4] ++;
			}
			switch ($d[$i]->verify) {
				case '1': 
					$num[0] ++;
					break;
				case '2': 
					$num[1] ++;
					break;
				case '3': 
					$num[2] ++;
					break;
				case '4': 
					$num[3] ++;
					break;
				default:
					# code...
					break;
			}
		}

		$num[5] = sizeof($d);
		$num[5] -= $num[4];// not active

		return $num;
	  }

	  function overviewDetail($verify = -1 , $status = -1)
	  {
	  	$this->db->select('me.* , mvs.* , count(dd.dd_id) as Total');
		$this->db->from('members me, members_activation_status mas');
		$this->db->join('dinarpal_document dd', 'dd.me_id = me.me_id', 'left');
		$this->db->where('mas.mas_id = me.me_activation_status');
		$this->db->where('me.ml_id', 3);
//		$this->db->where('me.me_type', 'NU');
		$this->db->group_by('me.me_id');
		if ($verify != -1) {
			$this->db->where('me.me_activation_status', $verify);
		}
		if ($status != -1) {
			$this->db->where('me.me_status', $status);
		}
		$q = $this->db->get();
		if ($q->num_rows() > 0) {
			foreach ($q->result() as $r) {
				$d[] = $r;
			}
			return $d;
		}else{
			return null;
		}		
	  }	  
  }

?>