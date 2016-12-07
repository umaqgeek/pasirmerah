<!--
<script src="<?php echo base_url(); ?>assets/jss/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>assets/jss/jquery.backstretch.js"></script>
<script>
    $.backstretch([
        "<?php echo base_url(); ?>assets/imagess/slider/bg10.jpg",
        "<?php echo base_url(); ?>assets/imagess/slider/bg11.jpg",
        "<?php echo base_url(); ?>assets/imagess/slider/bg121.jpg"
    ], {
        fade: 850, //Speed of Fade
        duration: 10000  //Time of image display
    });
</script>
-->
<body></body>


<div class="container">
    
    <div class="login-form">
        <!---728x90--->
        <h1>Sign In</h1>
        <form>
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                <input type="text" class="form-control" name="username" id="username" placeholder="Username" required>
            </div>
            <br />
            
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                <input type="password" class="form-control" name="password" id="username" placeholder="password" required>
            </div>
            <br />
            
            <a> 
                <button class="button" type="submit" style="width:100%;" href="<?= site_url('member/newMenu/profile') ?>">Log In</button>
            </a> 

            <div class ="forgot">
                <h3><a href="#">Forgot Password?</a></h3>                                                                                                                                                                                                                               </h4>
            </div>
        </form>
    </div>
    <!--//End-login-form-->
    
</div>



<center style="color:white;  line-height: 18px; font-size: 12px;">

    <a href="<?= site_url('version3/privacy'); ?>"><B>Privacy </B></a> 
    &nbsp;&nbsp;&nbsp; 
    <a href="<?= site_url('version3/legal'); ?>"><B>Legal </B></a>  <br />

    Copyright © 2013 - <?php echo date("Y"); ?> DinarPal. All rights reserved. <br />

    Users are advised to read the <a href="<?= site_url('version3/condition'); ?>"><B> terms and conditions </B></a>carefully

</center>
<br /><br /><br /><br />

<?php $this->session->sess_destroy(); ?>