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
            
            <li>
                <input type="text" class="text" value="IC Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Name';}" ><a href="#" class=" icon user"></a>
            </li>
            <li>
                <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"><a href="#" class=" icon lock"></a>
            </li>

            <div class ="forgot">
                <h3><a href="#">Forgot Password?</a></h3>
                <input type="submit" onclick="myFunction()" value="Sign In" > <a href="#"></a>                                                                                                                                                                                                                                 </h4>
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