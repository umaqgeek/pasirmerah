<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>login here</title>
</head>
<body>
<?php
	$att_label = array('style'=>'cursor:pointer;');
	
	if($this->session->flashdata('action_msg'))
	{
		$action_msg = $this->session->flashdata('action_msg');
	}else
		$action_msg = "";
	
	echo form_open('login/do_login');
	$row[] = array(array('data' => $action_msg, 'style' => 'color:red', 'colspan' => 3));
	$row[] = array(
				  form_label('Username','username',$att_label),
				  ':',
				  form_input(
							 array(
								   'type'=>'text',
								   'name'=>'username',
								   'id'=>'username'
								   )
							 )
				  );
	$row[] = array(
			  form_label('Password','password',$att_label),
			  ':',
			  form_input(
						 array(
							   'type'=>'password',
							   'name'=>'password',
							   'id'=>'password'
							   
							   )
						 )
			  );
	
	$row[] = array(
				   form_button(array('name'=>'submit','type'=>'submit','value'=>'Login','content'=>'Login')),
				   '',
				    form_button(array('name'=>'submit','type'=>'reset','value'=>'true','content'=>'Reset'))
				   );
	
	echo $this->table->generate($row);
	echo form_close();
?>
</body>
</html>