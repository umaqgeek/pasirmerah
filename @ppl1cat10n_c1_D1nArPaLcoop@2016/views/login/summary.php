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

    <div class="col-md-8 col-md-offset-2" style="margin-top:5%; ">
        <center>
            <h1>
                <span class="fa fa-check"></span> 
                <em>Hi <?= $me_username; ?>! Your Account Has Been Created</em>
            </h1>
        </center>
    </div>

	<div class="col-md-6 col-md-offset-3 img-rounded" style="margin-top:2%; background-color: rgba(255,255,255,0.8);height: 330px; ">
	                           
	        <div class="col-md-10 col-md-offset-1">

	            <center>
	               <img src="<?php echo base_url(); ?>assets/images/email.png" width="80px" height="80px" align="center" style="margin-top:5%;" >
	            </center>


                        <h4 align="center" class="form-signin-heading" style="color:black;">Hello <?php echo $me_username; ?>, Welcome to Dinarpal.</h4>

                        </br>

                        <p align="center"> We're happy you are here. Verify your email by clicking the link we sent to your inbox to unlock your account. </br>

                            <!--<a href=""> <?php echo $email; ?> </a> 

                            then, Please click the link in email to get started using Dinarpal Account --></p>
                         </br>
                         
	        </div>

	</div>

</div>