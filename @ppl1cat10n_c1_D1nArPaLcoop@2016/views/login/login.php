
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

<body></body>

<div class="container">


    <center>
        <img src="<?php echo base_url(); ?>assets/images/fw.png" width="50px" height="50px" align="center" style="margin-top:5%;" >
    </center>

    <div class="row">

        <div class="col-md-6 col-md-offset-3 img-rounded" style="margin-top:2%; background-color: rgba(255,255,255,0.5);   height:350px; ">



            <div class="col-md-10 col-md-offset-1">

                <!-- check for the flashdata -->
                <?php
                /* if($this->session->flashdata('error')!="")
                  echo $this->session->flashdata('error');
                  elseif($this->session->flashdata('sucess')!="")
                  echo $this->session->flashdata('sucess'); */
                ?>

                <?php
//                $attributes = array('class' => 'form-signin', 'id' => 'myform', 'role' => 'form');
//
//                echo form_open('login/asklogin', $attributes);
                ?>
                <form class="form-signin" method="post" id="myform" action="<?= site_url('login/asklogin'); ?>">


                    <h3 class="form-signin-heading" style="color:black;">Please sign in</h3>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                        <input type="text" class="form-control" name="username" id="username" placeholder="Username" required autofocus>
                    </div>
                    <br />


                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                        <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                    </div>


                    <div class="input-group">
                        <label class="checkbox" style=" text-align: right;" >

                            <div class="row">
                                <div class="col-md-12">
                                    <a href="<?= site_url('login/forgotPassword'); ?>" style="color:black;">Forgot password?</a>
                                </div>
                                <!--toggle-->
<!--                                <div class="col-md-7">

                                    <div class="col-md-3">
                                        <div class="switch">
                                            <input id="cmn-toggle-1" class="cmn-toggle cmn-toggle-round" type="checkbox">
                                            <label for="cmn-toggle-1"></label>
                                        </div>

                                        <div class="switch">
                                            <input id="cmn-toggle-4" class="cmn-toggle cmn-toggle-round-flat" type="checkbox">
                                            <label for="cmn-toggle-4"></label>
                                        </div>

                                        <div class="switch">
                                            <input id="cmn-toggle-7" class="cmn-toggle cmn-toggle-yes-no" type="checkbox">
                                            <label for="cmn-toggle-7" data-on="Yes" data-off="No"></label>
                                        </div>
                                    </div>

                                    <div class="col-md-9">
                                        <a>Remember Me?</a>
                                    </div>-->
                                    <!--/ end toggle-->

                                <!--</div>-->


<!--<input type="checkbox" value="remember-me" name="remember_me"> Remember me
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->

                            </div>

                        </label>
                    </div>


                    <div class="form-group">

                        <button id="formsubmitbutton1" class="button" type="submit" style="width:100%;">Log In</button>

                        <div id="buttonreplacement" style="margin-left:30px; display:none;">
                            <center><img src="<?php echo base_url(); ?>assets/login/action_icon/ajax-loader.gif" alt="loading..." style="width: 30px; height:30px;"></center>
                        </div>

                        <br /><br />

                        <a class="button blue-button" data-toggle="modal" style="width:100%; text-align: center;" href="<?= site_url('login/getstarted') ?>" onclick="ButtonClicked()">Register</a>



                        </body>
                    </div>
                </form>
            </div>


            <script type="text/javascript">
                
//                $(document).ready(function () {
//                    $("#formsubmitbutton1").click(function () {
//                        var username1 = $("#username").val();
//                        var password1 = $("#password").val();
//                        $.post("<?= site_url('login/asklogin'); ?>", {
//                            username: username1,
//                            password: password1
//                        }).done(function (data1) {
//                            alert(data1);
//                        });
//                    });
//                });
                
                /*Replacing Submit Button with 'Loading' Image*/
                function ButtonClicked()
                {
                    document.getElementById("formsubmitbutton").style.display = "none"; // to undisplay
                    document.getElementById("buttonreplacement").style.display = ""; // to display
                    return true;
                }
                var FirstLoading = true;
                function RestoreSubmitButton()
                {
                    if (FirstLoading)
                    {
                        FirstLoading = false;
                        return;
                    }
                    document.getElementById("formsubmitbutton").style.display = ""; // to display
                    document.getElementById("buttonreplacement").style.display = "none"; // to undisplay
                }
                // To disable restoring submit button, disable or delete next line.
                document.onfocus = RestoreSubmitButton;
            </script>     




            <!-- Panels
            ================================================== -->


        </div>


    </div>

    <!--        <div class="row">
                <div class="col-md-12" id="paparjap">
                    asd
                </div>
            </div>-->

    <!-- qr code reader -->
    <!--        <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    
                    
                    <video autoplay width="200" height="200"></video>
                    <br /><button id="reset" class="ui-btn">Reset camera</button>
      <script src="<?= base_url(); ?>/assets/js/QRcode/qcode-decoder.min.js"></script>
      <script type="text/javascript">
     
      (function () {
        'use strict';
     
        var qr = new QCodeDecoder();
     
        if (!(qr.isCanvasSupported() && qr.hasGetUserMedia())) {
          alert('Your browser doesn\'t match the required specs.');
          throw new Error('Canvas and getUserMedia are required');
        }
     
        var video = document.querySelector('video');
        var reset = document.querySelector('#reset');
        var stop = document.querySelector('#stop');
     
        function resultHandler (err, result) {
          if (err)
            return console.log(err.message);
            $.get( "<?= site_url('login/getstringqrcode'); ?>", { result1: result })
                .done(function( data ) {
                    //$("#paparjap").html(data); return;
                  var data1 = data.split("|");
                  $("#username").val(data1[0]);
                  $("#password").val(data1[1]);
                  $("#myform").submit();
                });
        }
     
        // prepare a canvas element that will receive
        // the image to decode, sets the callback for
        // the result and then prepares the
        // videoElement to send its source to the
        // decoder.
     
        qr.decodeFromCamera(video, resultHandler);
     
        // attach some event handlers to reset and
        // stop whenever we want.
     
        reset.onclick = function () {
          qr.decodeFromCamera(video, resultHandler);
        };
     
    //    stop.onclick = function () {
    //      qr.stop();
    //    };
     
      })();
      </script>
                    
                </div>
            </div>-->


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