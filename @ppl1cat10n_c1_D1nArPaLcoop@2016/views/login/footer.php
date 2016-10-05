<footer>



    <div class="row">



        <div class="col-lg-12" style="color:#FFF; margin-top:10px">



            <!--<ul class="list-unstyled">



                <li class="pull-right"><p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p></li>



            </ul>-->



            <p align="center" style="font-size:11px;">



            <!--    <a href="<?=site_url('main/viewMenu/aboutUs'); ?>" class="dinarpal_footer_link">About Us</a>&nbsp;&nbsp;&nbsp;



                <a href="<?=site_url('main/viewMenu/partners'); ?>" class="dinarpal_footer_link">Partners</a>&nbsp;&nbsp;&nbsp;



                <a href="<?=site_url('main/viewMenu/ll.php'); ?>" class="dinarpal_footer_link">Licensor-Licensee</a>&nbsp;&nbsp;&nbsp;



               <a href="<?=site_url('main/viewMenu/comp.php'); ?>" class="dinarpal_footer_link">The Compliances</a>&nbsp;&nbsp;&nbsp;



             <a href="<?=site_url('main/viewMenu/awards.php'); ?>" class="dinarpal_footer_link">Awards and Recognitions</a>&nbsp;&nbsp;&nbsp;



                <a href="https://www.facebook.com/dinarpal" target="_blank" class="dinarpal_footer_link">



				facebook</a> -->



            </p>



        </div>



    </div>



    <div class="row">



        <div class="col-lg-12" style="color:#FFF;">



            <!--<ul class="list-unstyled">



                <li class="pull-right"><p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p></li>



            </ul>-->



            <p align="center" style="font-size:11px;">



                <!--    <a href="<?=site_url('main/viewMenu/privacy.php'); ?>" class="dinarpal_footer_link">Privacy Policy</a>&nbsp;&nbsp;&nbsp;



                <a href="<?=site_url('main/viewMenu/terms.php'); ?>" class="dinarpal_footer_link">Terms and Conditions</a>&nbsp;&nbsp;&nbsp;



                <a href="<?=site_url('main/viewMenu/intel.php'); ?>" class="dinarpal_footer_link">Intellectual Properties</a> -->





            </p>



        </div>



    </div>



    <div class="row">



        <div class="col-lg-12" style="color:#FFF;">



            <!--<ul class="list-unstyled">



                <li class="pull-right"><p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p></li>



            </ul>-->



            <p align="center" style="font-size:11px;">
                
                <BR>

Al-DinarPal Group. All right reserved 2013 - <?php echo date("Y"); ?>. 

               <!-- DinarPal Sdn. Bhd. (Co. Reg. 1041059-H) All Right Reserve &copy; 2014-->



            </p>

            <style>
        .scrollup2 {
            width: 50px;
            height: 50px;
            position: fixed;
            border-radius: 100%;
            bottom: 28px;
            right: 35px;
            display: none;
            text-indent: -9999px;
            background: url('<?= base_url() . 'assets/images/manage customer service.png' ?>') no-repeat;
            background-size: 40px 40px;
            margin-top:2%; 
            background-color: rgba(255,255,255,1);
            border-style: solid;
            border-width: 4px;
            /* border-color: #252E33 #252E33; */
        }

            </style>
            
            
            
            <script type='text/javascript'>//<![CDATA[
            $(window).load(function () {
                $(document).ready(function () {
                    
                    $(window).scroll(function () {
                        if ($(this).scrollTop() > 100) {
                            $('.scrollup2').fadeIn();
                        } else {
                            $('.scrollup2').fadeOut();
                        }
                    });

                    $('.scrollup2').click(function () {
                        $("html, body").animate({
                            scrollTop: 0
                        }, 600);
                        return false;
                    });

                });
            });//]]> 

            </script>


        </div>
        
    </div>

</footer>



<!-- Start of footer.php -->

<script src="<?php echo base_url().'assets/js/jquery-1.11.1.js' ?>"></script>

<script src="<?php echo base_url().'assets/js/bootstrap.js' ?>"></script>

<script src="<?php echo base_url().'assets/js/bootigniter.js' ?>"></script>



<script type="text/javascript">

$(document).ready(function() {

	$("ul.nav-tabs > li").click(function() {

		$("ul.nav-tabs > li").removeClass("active");

		$(this).addClass("active");

		var ti = $(this).attr("ti");

		$(".nav-ul").hide();

		$("td[til="+ti+"]").show(100);

	});

	$(".nav-ul").hide();

	$("td[til=1]").show();

	var options = {

		"backdrop" : "true"

	}

	$('#basicModalError').modal(options);

});

</script>



<?php if(isset($error)) { ?>

<div class="modal collapse" id="basicModalError" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog" style="margin-top:15%;">
        <div class="modal-content">
            <div class="modal-header">
                <i class="fa fa-exclamation-circle fa-2x" style="color:#c0392b"></i>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times" ></i></button>
                <BR>
            </div>
            <div class="modal-body">
            
                <div  role="alert"> 
                    <?=$error; ?>
                </div>

                 <div align="right">
                    <button type="button" onclick="history.back(-1);" class="button blue-button" style="height:30px;line-height:5px;">Back</button>
                    <button type="button" class="button red-button" data-toggle="modal"  data-dismiss="modal" style="height:30px;line-height:5px;">OK</button>
                </div>
                  
            </div>
        </div>
    </div>
</div>

<?php } else if(isset($sucess)) { ?>

<div class="modal collapse" id="basicModalError" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog" style="margin-top:20%;">
        <div class="modal-content">
            <div class="modal-header">
                <i class="fa fa-check-circle fa-2x"  style="color:#27ae60;"></i>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times" ></i></button>
                <BR>
            </div>
            <div class="modal-body">
            
              <div role="alert">
                <?=$sucess; ?> 
              </div>

              <div align="right">
                <button type="button" class="button green-button" data-toggle="modal"  data-dismiss="modal" style="height:30px;line-height:5px;">OK</button>
              </div>

            </div> 
 
        </div>
     </div>
  </div>

<?php } else if(isset($info)) { ?>

<div class="modal fade" id="basicModalError" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">

    <div class="modal-dialog">

        <div class="modal-content">

            <div class="modal-header">

            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>

            </div>

            <div class="modal-body">

            

            <div class="alert alert-info fade in" role="alert"><?=$info; ?></div>

            

            </div>

    </div>

  </div>

</div>

<?php } ?>

                        <style>
                            .hahaf {
                                position: fixed;
                                top: 80%;
                                right: 0;
                                left: 0;
                                z-index: 1030;
                                /*background-color:#252e33;*/
                                width: 100px;
                                height: 100px;
                                margin-bottom: 30%;
                                margin-left: 90%;
                            }
                        </style>

<!--                        <div class="hahaf img-circle">
                            <a target="blank" href="<?= site_url('support_system') ?>">
                                <img src="<?php echo base_url(); ?>assets/images/call2.png" style="border-radius: 50%; border-style: solid; border-color: #FFAA02; border-width: 4px; width: 100px; height: 100px;" />
                            </a>
                        </div>-->
                        
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/57946b89660462dd70bca746/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->


</body>

</html>

<!-- / footer.php -->