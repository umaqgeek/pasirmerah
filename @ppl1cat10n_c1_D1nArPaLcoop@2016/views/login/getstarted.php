<!--
<script src="<?php echo base_url();?>assets/jss/jquery.min.js"></script>
<script src="<?php echo base_url();?>assets/jss/jquery.backstretch.js"></script>
<script>
    $.backstretch([
      "<?php echo base_url();?>assets/imagess/slider/bg10.jpg",
      "<?php echo base_url();?>assets/imagess/slider/bg11.jpg"
    ], {
      fade: 850,    //Speed of Fade
      duration: 10000  //Time of image display
    });
</script>
-->

<div class="container">
       
       
       <H2 align="center"> Create your DinaPal Coop account. It’s free to register. </H2>

       <H4 align="center"> Create your Account in Minutes. </H4>
              
       
       <script>
    $(document).ready(function () {
       
        $("#btn2").click(function () {
            location.href = '<?= site_url('login/registration/personal') ?>';
        });
       
        $("#btn1").click(function () {
            location.href = '<?= site_url('login/registration/corporate') ?>';
        });
    });
       </script>


       <div class="col-md-6 img-rounded" style="margin-top:1%; background-color: rgba(255,255,255,0.5); border: 20px solid rgba(0,0,0,0); height:auto;  line-height:20px; color:#000;  ">      


           <div class="col-md-10 col-md-offset-1" style=" text-align: justify;">   
               <center>                  
                   <br />
                   <img src="<?php echo base_url(); ?>assets/images/user43.png" align="center" width="70px" height="70px">
                   <h3>Member</h3>
               </center>
               Shop in your country and around the world, receive money or just pay someone back for lunch - all without sharing your financial info with the sellers.

               <br /><br />
               <div class="col-md-12 img-rounded" style="margin:80;" >
                   <center>
                       <a class="button " data-toggle="modal" href="<?= site_url('login/registration/personal') ?>">Get Started</a>
                   </center>
               </div> 

               <br /><br /><br />
           </div>
           <!-- Panels
              ================================================== -->


       </div>




       <div class="col-md-6 img-rounded" style="margin-top:1%; background-color: rgba(255,255,255,0.5); border: 20px solid rgba(0,0,0,0); height:auto;  line-height:20px; color:#000;">



           <div class="col-md-10 col-md-offset-2" style=" text-align: justify; ">
               <center>
                   <br />
                   <img src="<?php echo base_url(); ?>assets/images/maleuser.png" align="center" width="70px" height="70px">
                   <h3>Admin</h3>
               </center>
               Buy from millions of online stores across the world and keep earning credit card reward points.
               Your eligible purchases are covered by our Buyer Protection policy.
               <br /><br />
               <div class="col-md-12  img-rounded" >
                   <center>  
                       <a class="button" data-toggle="modal" href="<?= site_url('login/registration/corporate') ?>" >Get Started</a>
                   </center>
               </div> 

               <br /><br /><br />

           </div>
           <!-- Panels
              ================================================== -->

       </div>       
        
        <br /><br /><br /><br /><br /><br /><br /><br />
  
</div>


        

