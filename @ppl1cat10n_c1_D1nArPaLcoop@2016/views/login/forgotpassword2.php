<script src="<?php echo base_url();?>assets/jss/jquery.min.js"></script>
<script src="<?php echo base_url();?>assets/jss/jquery.backstretch.js"></script>
<script>
    $.backstretch([
      "<?php echo base_url();?>assets/imagess/slider/bg10.jpg",
      "<?php echo base_url();?>assets/imagess/slider/bg11.jpg",
      "<?php echo base_url();?>assets/imagess/slider/bg121.jpg"
    ], {
      fade: 850,    //Speed of Fade
      duration: 10000  //Time of image display
    });
</script>

<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-offset-2" style="margin-top:2%">

				<!-- check for the flashdata -->
				<?php
				/*if($this->session->flashdata('error')!="")
					echo $this->session->flashdata('error');
				elseif($this->session->flashdata('sucess')!="")
				echo $this->session->flashdata('sucess');*/
				?>

<?php
$attributes = array('class' => 'form-signin', 'id' => 'myform', 'role'=>'form');

echo form_open('login/checkforgotpassword/2', $attributes);
?>

		</br></br>	
        <h2 class="form-signin-heading">Answer the question below ..</h2>
        <h3 class="form-signin-heading"><?=$me[0]->me_question; ?></h3>
        <input type="text" class="form-control" name="me_answer" placeholder="Enter your answer" required autofocus>
        <input type="hidden" class="form-control" name="email" value="<?=$me[0]->me_email; ?>">
		<label class="checkbox">
        </label>
        <div class="row">

     <button class="button" type="submit" style="width:100%;">Send</button>


   
      </form>
      

      
		</div>
		<!-- Panels
		================================================== -->
		
		
	</div>
    
    	
    
</div>

