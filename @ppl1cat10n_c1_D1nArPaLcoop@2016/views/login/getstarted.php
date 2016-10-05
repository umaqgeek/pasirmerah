
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

<div class="container">
       
       
       <H2 align="center"> Create your DinarPal account. It’s free to register. </H2>

       <H4 align="center"> Create your Account in Minutes. </H4>
       
       
       <div class="container">

           <section class="choose-account choose-account--no-margin">
               <div class="col-md-5 col-md-offset-1">
                   <div class="choose-account__col">

                       <div class="border-box border-box--large-shadow">
                           <div class="border-box__inner choose-account-box choose-account-box--large">

                               <div class="choose-account-box__color-bar choose-account-box__color-bar--personal"></div>
                               <center><img class="choose-account-box__img" src="<?php echo base_url(); ?>assets/imagess/personal1.png" alt="">
                                   <h2 class="choose-account-box__title" translate="">
                                       <span>Personal Account</span>
                                   </h2>
                               </center>
                               <p class="choose-account-box__description">
                                   Start saving with gold and make or receive instant gold transfers.
                                   Shop in your country and around the world, receive money or just pay someone back for lunch.
                               </p>
                               <ul class="listStyleDisc">
                                   <li class="choose-account-box__list-item choose-account-box__list-item--blue">
                                       <span class="choose-account-box__list-item-label" translate="">
                                           <span>No minimums. Storage fee only 2.5% per year and Insurance cover for every grams.</span>
                                       </span>
                                   </li>
                                   <li class="choose-account-box__list-item choose-account-box__list-item--blue">
                                       <span class="choose-account-box__list-item-label" translate="">
                                           <span>Buy from millions of online stores across the world and keep earning credit card reward points.</span>
                                       </span>
                                   </li>
                                   <li class="choose-account-box__list-item choose-account-box__list-item--blue">
                                       <span class="choose-account-box__list-item-label" translate="">
                                           <span>Buying is usually free. A currency conversion fee may apply for overseas transactions.</span>
                                           <!--<sup>®</sup>-->
                                       </span>
                                   </li>
                               </ul>
                               <button class="choose-account-box__cta medium-rounded-blue-button glow" id="btn2">
                                   <span style="font-size: 15px;">Get Started</span>
                               </button>
                           </div>
                       </div>
                   </div>
               </div>
               <div class="col-md-5">
                   <div class="choose-account__col">
                       <div class="border-box border-box--large-shadow">
                           <div class="border-box__inner choose-account-box choose-account-box--large">
                               <div class="choose-account-box__color-bar choose-account-box__color-bar--business"></div>
                               <center>
                                   <img class="choose-account-box__img" src="<?php echo base_url(); ?>assets/imagess/bussines.png">
                                   <h2 class="choose-account-box__title" translate="">
                                       <span>Coporate Account</span>

                                   </h2>
                               </center>
                               <p class="choose-account-box__description">
                                   Earn gold for goods and services with invoicing and checkout tools. Pay people locally or internationally from your gold account.
                                   Your eligible purchases are covered by our Buyer Protection policy.
                               </p>
                               
                               <ul class="listStyleDisc">
                                   <li class="choose-account-box__list-item choose-account-box__list-item--orange">
                                       <span class="choose-account-box__list-item-label" translate="">
                                           <span>No set up or monthly fees. Pay a transaction fee when you make a sale.</span>
                                       </span>
                                   </li>
                                   <li class="choose-account-box__list-item choose-account-box__list-item--orange">
                                       <span class="choose-account-box__list-item-label" translate="">
                                           <span>Accept payments of all kinds- major credit and debit cards, linked bank accounts and buyer’s DinarPal balance.</span>
                                       </span>
                                   </li>
                                   
                               </ul>
                               
                               <button class="choose-account-box__cta medium-rounded-yellow-button glow" id="btn1">
                                       <span style="font-size: 15px;">Get Started</span>
                               </button>
                           </div>
                       </div>
                   </div>
               </div>


           </section>
       </div>
       
       
       <script>
    $(document).ready(function () {
       
        $("#btn2").click(function () {
            location.href = '<?= site_url('login/registration/corporate') ?>';
        });
       
        $("#btn1").click(function () {
            location.href = '<?= site_url('login/registration/corporate') ?>';
        });
    });
       </script>

<!--b
       <div class="col-md-6 img-rounded" style="margin-top:1%; background-color: rgba(255,255,255,0.5); border: 20px solid rgba(0,0,0,0); height:auto;  line-height:20px; color:#000;  ">      


           <div class="col-md-10 col-md-offset-1" style=" text-align: justify;">   
               <center>                  
                   <br />
                   <img src="<?php echo base_url(); ?>assets/images/user43.png" align="center" width="70px" height="70px">
                   <h3>Personal</h3>
               </center>
               Shop in your country and around the world, receive money or just pay someone back for lunch - all without sharing your financial info with the sellers.

               <br /><br />
               <div class="col-md-12 img-rounded" style="margin:80;" >
                   <center>
                       <a class="button " data-toggle="modal" href="<?= site_url('login/registration/personal') ?>">Get Started</a>
                   </center>
               </div> 

               <br /><br /><br />


               <ul class="b">
                   <li>Buying is usually free. A currency conversion fee may apply for overseas transactions.</li>
                   <li>Buy from millions of online stores across the world and keep earning credit card reward points.</li>

               </ul>



           </div>
           <!-- Panels
              ================================================== -->

<!--b
       </div>




       <div class="col-md-6 img-rounded" style="margin-top:1%; background-color: rgba(255,255,255,0.5); border: 20px solid rgba(0,0,0,0); height:auto;  line-height:20px; color:#000;">



           <div class="col-md-10 col-md-offset-2" style=" text-align: justify; ">
               <center>
                   <br />
                   <img src="<?php echo base_url(); ?>assets/images/maleuser.png" align="center" width="70px" height="70px">
                   <h3>Corporate</h3>
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

               <ul class="b">
                   <li>No set up or monthly fees. Pay a transaction fee when you make a sale.</li>
                   <li>Accept payments of all kinds- major credit and debit cards, linked bank accounts and buyer’s DinarPal balance.</li>

               </ul>



           </div>
           <!-- Panels
              ================================================== -->
<!--b
       </div>
b-->       
        
        <br /><br /><br /><br /><br /><br /><br /><br />
  
</div>
        

