
<style>
    summary.ordersummary {
        -moz-box-shadow: 0 0 5px rgba(0,0,0,0.5);
        -webkit-box-shadow: 0 0 5px rgba(0,0,0,0.5);
        box-shadow: 0 0 2px rgba(0,0,0,0.5);

        margin-top:1%; 
        background-color:#FFF; 

        border-radius:10px;
        border: 10px solid #FFF;

    }

    div.detailsummary {
        -moz-box-shadow: 0 0 5px rgba(0,0,0,0.5);
        -webkit-box-shadow: 0 0 5px rgba(0,0,0,0.5);
        box-shadow: 0 0 2px rgba(0,0,0,0.5);
        background-color: #fff;
        border-radius:5px;
        padding:15px; 

    }

    div.accordion {
        margin-top: 20px; 
        font-size: 12px;
    }

    .circle {
        display: block;
        width: 150px;
        height: 150px;
        margin: 1em auto;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center center;
        -webkit-border-radius: 99em;
        -moz-border-radius: 99em;
        border-radius: 99em;
        border: 5px solid #eee;
        box-shadow: 0 3px 2px rgba(0, 0, 0, 0.3);  
    }

    .credit-card {
        width: 400px;
        height: 230px;
        margin: 0 auto;
        padding: 20px;
        border-radius: 20px;
        border: 1px solid #050607;
        background-image: -webkit-linear-gradient(310deg,#646e76,#252e33);
        background-image: linear-gradient(140deg,#646e76,#252e33);
        box-shadow: inset 0 1px 0 0 #7d8890,0 3px 6px 1px rgba(0,0,0,.1);
    }
</style>

<script type="text/javascript">


    $(document).ready(function () {

        $(window).keydown(function (event) {
            if (event.keyCode == 13) {
                event.preventDefault();
                return false;
            }
        });

<?php if ($profile->mas_id == 3) { ?>
            $("input").not(".pwd_yo").attr("readonly", "true");
            $(".geng_button_save_da").hide();
            $(".pwd_yo").removeAttr("readonly");
            $(".save_pwd1").show();
<?php } ?>

        $(".view").hide();
        $("#profile1").show();
        $("#accType").show();
        $("#button_save_da").show();

        var curr_link = window.location.href;
        var curr_links = curr_link.split("#");
        if (typeof curr_links[1] != 'undefined') {
            $(".view").hide();
            var url_link = curr_links[1];
            if (url_link == "change_pwd") {
                $("#" + url_link + "1").show();
                $("#passTips").show();
                $("#button_save_da").hide();
            } else if (url_link == "logout") {
                setTimeout(function () {
                    location.href = '<?= site_url('member/logout'); ?>';
                }, 5000);
            } else {
//                alert('disini');
                $("#" + url_link + "1").hide();
                $("#passTips").hide();
                $("#button_save_da").show();
                $("#profile1").show();
                $("#accType").show();
            }
        }

        $(".test").click(function () {
            var temp = "#" + $(this).attr('id') + "1";
            $(".view").hide();
            $(temp).show();

            if (temp == "#profile1") {
                $("#accType").show();
            } else {
                $("#accType").hide();
            }

            if (temp == "#change_pwd1") {
                $("#passTips").show();
            } else {
                $("#passTips").hide();
            }

            if (temp == '#email1' || temp == '#card1' || temp == '#bank1' || temp == '#change_pwd1' || temp == '#acc_deac1') {
                $("#button_save_da").hide();
            } else {
                $("#button_save_da").show();

<?php if ($profile->mas_id == 3) { ?>
                    $("input").not(".pwd_yo").attr("readonly", "true");
    //                        $(".geng_button_save_da").hide();
<?php } ?>
            }

            if (temp == "#acc_deac1") {
                $("#deacTips").show();
            } else {
                $("#deacTips").hide();
            }

            if (temp == "#address1") {
                $("#addTips").show();
            } else {
                $("#addTips").hide();
            }

            if (temp == "#social1") {
                $("#socialTips").show();
            } else {
                $("#socialTips").hide();
            }

            if (temp == "#beneficiary1") {
                $("#BeneficiaryTips").show();
            } else {
                $("#BeneficiaryTips").hide();
            }

            if (temp == "#email1") {
                $("#emailTips").show();
            } else {
                $("#emailTips").hide();
            }

            if (temp == "#card1") {
                $("#cardTips").show();
            } else {
                $("#cardTips").hide();
            }

            if (temp == "#bank1") {
                $("#bankTips").show();
            } else {
                $("#bankTips").hide();
            }

            if (temp == "#verification1") {
                $("#verifyTips").show();
            } else {
                $("#verifyTips").hide();
            }


        });
    });


</script>

</br>

<form class="form-horizontal" method="post" id="formprofile1" action="<?= site_url('member/updateProfile'); ?>" enctype="multipart/form-data">

    <div class="row">


        <div class="col-md-3">

            <section>
                <div id="section-settings-info-profile" class="details-box" >
                    <header class="details-box__header" style="background-image:linear-gradient(#28b3ee,#0287c0)">

                        
                    </header>
                </div>
            </section>

            <ul style="line-height:40px; font-size:15px; margin-top:25px;">
                <li class = "test" id = "profile"><a href="#" ><span> &nbsp;&nbsp; <i class="fa fa-user"></i> &nbsp; Profile & Identity</span></a></li>
                <li class = "test" id = "address"><a href="#" ><span> &nbsp; <i class="fa fa-envelope"></i> &nbsp; Address Info</span></a></li>
                <li class = "test" id = "social"><a href="#" ><span> &nbsp; <i class="fa fa-globe"></i> &nbsp;&nbsp; Social Profile</span></a></li>
                <li class = "test" id = "beneficiary"><a href="#" ><span> &nbsp; <i class="fa fa-users"></i> &nbsp; Beneficiary Info</span></a></li>
                <li class = "test" id = "verification"><a href="#" ><span> &nbsp;&nbsp; <i class="fa fa-unlock-alt"></i> &nbsp;&nbsp; Verification</span></a></li>
                <li class = "test" id = "email"><a href="#" ><span> &nbsp;&nbsp; <i class="fa fa-envelope"></i> &nbsp;&nbsp; E-Mails</span></a></li>
                <li class = "test" id = "card"><a href="#" ><span> &nbsp;&nbsp; <i class="fa fa-credit-card"></i> &nbsp;&nbsp; Cards</span></a></li>
                <li class = "test" id = "bank"><a href="#" ><span> &nbsp;&nbsp; <i class="fa fa-bank"></i> &nbsp;&nbsp; Banks</span></a></li>
                <li class = "test" id = "change_pwd"><a href="#" ><span> &nbsp;&nbsp; <i class="fa fa-key"></i> &nbsp;&nbsp; Change Password</span></a></li>
                <li class = "test" id = "acc_deac"><a href="#" ><span> &nbsp;&nbsp; <i class="fa fa-adjust"></i> &nbsp;&nbsp; Account Deactivation</span></a></li>
            </ul>
            <!--
            <summary class="ordersummary">
                
                    <div class="detailsummary" >
                           </br>
                    </div>
              </summary>
            -->
        </div>

        <input type="hidden" name="me_image2" id="me_image2" value="" />
        <input type="hidden" name="me_id" id="me_id" value="" />

        <div class="col-md-6">

            <div id="profile1" class="view"><!--Profile Information-->

                <h4 align="center"> Profile Information </h4>

                <div class="col-md-12">

                    <div class="col-md-3">
                        <img class="circle" src="" width="150" height="200" alt="profile-img" />
                    </div>
                    <div class="col-md-1"></div>
                    <div class="col-md-8">
                        <table width="100%">
                            <tr>
                                <td colspan="3" align="center">
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow=""
                                             aria-valuemin="0" aria-valuemax="100" style="width:%">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" width="25%">
                                    Lower Pts.
                                    <span class="top-tooltip bottom-tooltip" 
                                          data-tooltip="points">
                                        <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                                    </span>
                                </td>
                                <td align="center">
                                    <strong>%</strong> <br />
                                    <span class="top-tooltip bottom-tooltip" 
                                          data-tooltip="Your current point is points.">
                                        <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                                    </span>
                                </td>
                                <td align="right" width="25%">
                                    Highest Pts.
                                    <span class="top-tooltip bottom-tooltip" 
                                          data-tooltip="points. Reach this point to achieve the next rank.">
                                        <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center">
                                    <strong>Level</strong> 
                                    <span class="top-tooltip bottom-tooltip" 
                                          data-tooltip="Every 1 amount of your transactions will increase 1 point of your level.">
                                        <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                                    </span>
                                    <span class="top-tooltip bottom-tooltip" 
                                          data-tooltip="Every 1 downline you have will increase 100 points of your level.">
                                        <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center">
                                    <img width="50" height="50" src="<?= base_url(); ?>assets/images/ranks/" /> 
                                    <br />
                                    <strong>
                                        
                                    </strong>
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="username" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Upload Profile Picture </b> </label>
                        <div class="col-sm-12">
                            <input class="form-control pwd_yo" type="file" name="me_image" id="me_image" title="Please upload your profile picture" />

                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="username" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Username </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_username" id="me_username" placeholder="Username" readonly="readonly" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="firstname" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> First Name </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_firstname" id="me_firstname" placeholder="First Name" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="lastname" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Last Name </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_lastname" id="me_lastname" placeholder="Last Name" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="phone" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> E-Mail </b>   </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_email" id="me_email" placeholder="E-Mail Address" 
                                   value="" >
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">
                        <label for="gender" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Gender </b> </label>
                        <div class="col-sm-12">
                            <?php
                            if (isset($gender) && !empty($gender)) {
                                foreach ($gender as $g) {
                                    ?>
                                    <label>
                                        <input type="radio" name="g_id" value="<?= $g->g_id; ?>" 
                                        <?php
                                        if ($profile->g_id == $g->g_id) {
                                            echo 'checked';
                                        }
                                        ?> /> <?= $g->g_desc; ?>
                                    </label>
                                    <?php
                                }
                            }
                            ?>
                        </div>
                    </div>
                </div>


                <div class="col-md-8">
                    <div class="form-group">
                        <label for="unique_link" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Date of Birth </b> </label>
                        <br />
                        <div class="col-sm-3">
                            <input type="text" class="form-control" name="birthdate_day" placeholder="dd" value="" />
                        </div>
                        <div class="col-sm-1">/</div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" name="birthdate_month" placeholder="mm" value="" />
                        </div>
                        <div class="col-sm-1">/</div>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="birthdate_year" placeholder="YY" value="" />
                        </div>
                    </div>
                </div>


                <div class="col-md-12">
                    <div class="form-group">
                        <label for="phone" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Phone Number </b>  </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control pwd_yo" name="me_phone_no" id="me_phone_no" placeholder="Phone No." 
                                   value="" />

                        </div>
                    </div>
                </div>

                <div class="col-md-12"> <br/> </div> 

            </div><!--end Profile Information-->


            <div id="address1" class="view"><!--Address Information--> 

                <h4 align="center">  Address Information </h4>

                <h5 align="left"> Permanent Address </h5>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Street Address </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_address1" id="me_address1" placeholder="Street Address" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="form-group">
                        <label for="city" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> City </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_city1" id="me_city1" placeholder="City" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="form-group">
                        <label align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> State/Province </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_state1" id="me_state1" placeholder="State/Province" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="city" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Country </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_country1" id="me_country1" placeholder="Country" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="form-group">
                        <label align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Zip/Postal Code </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_postcode1" id="me_postcode1" placeholder="Postcode" 
                                   value="" />
                        </div>
                    </div>
                </div>



                <h5 align="left"> Mailing Address 
                    ( <input type="checkbox" id="sameAddr" style="cursor: pointer;" /> same as above. )
                </h5>

                <script>
                    $(document).ready(function () {
                        $("#sameAddr").click(function () {
                            if ($("#sameAddr").is(':checked')) {
                                $("#me_address2").val($("#me_address1").val());
                                $("#me_city2").val($("#me_city1").val());
                                $("#me_state2").val($("#me_state1").val());
                                $("#me_postcode2").val($("#me_postcode1").val());
                                $("#me_country2").val($("#me_country1").val());
                            } else {
                                $("#formprofile1")[0].reset();
                            }

                        });
                    });
                </script>


                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Street Address </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_address2" id="me_address2" placeholder="Street Address" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="form-group">
                        <label for="city" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> City </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_city2" id="me_city2" placeholder="City" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="form-group">
                        <label align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> State/Province </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_state2" id="me_state2" placeholder="State/Province" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="city" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Country </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_country2" id="me_country2" placeholder="Country" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="form-group">
                        <label align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Zip/Postal Code </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_postcode2" id="me_postcode2" placeholder="Postcode" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12"> <br/> </div> 

            </div><!--end Address Information-->


            <div id="social1" class="view"><!--Social Profile-->  

                <h4 align="center"> Social Profile </h4>

                <h5 align="left"> Social Media </h5>


                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> <i class="fa fa-facebook-square"></i> Facebook </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_facebook" id="me_facebook" placeholder="Facebook" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> <i class="fa fa-twitter-square"></i> Twitter </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_twitter" id="me_twitter" placeholder="Twitter" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> <i class="fa fa-instagram"></i> Instagram </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_instagram" id="me_instagram" placeholder="Instagram" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> <i class="fa fa-google-plus-square"></i> Google+ </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_googleplus" id="me_googleplus" placeholder="Google+" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <h5 align="left"> Messaging & Call Apps </h5>



                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> <i class="fa fa-phone"></i> Whatsapp No. </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control pwd_yo" name="me_whatsapp_no" id="me_whatsapp_no" placeholder="Whatsapp No." 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> <i class="fa fa-paper-plane"></i> Telegram </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_telegram" id="me_telegram" placeholder="Telegram No." 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> <i class="fa fa-weixin"></i> WeChat </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="me_wechat" id="me_wechat" placeholder="WeChat No." 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12"> <br/> </div> 

            </div><!--end Social Profile-->


            <div id="beneficiary1" class="view"><!--Beneficiary Information-->  

                <h4 align="center">   Beneficiary Information </h4>

                <h5 align="left"> Beneficiary Info </h5>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="city" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> First Name </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="biw_firstname" id="biw_firstname" placeholder="First Name" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="form-group">
                        <label align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Last Name </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="biw_lastname" id="biw_lastname" placeholder="Last Name" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="city" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Gender </b> </label>
                        <div class="col-sm-12">
                            <?php
                            if (isset($gender) && !empty($gender)) {
                                foreach ($gender as $g) {
                                    ?>
                                    <label>
                                        <input type="radio" name="g_id_biw" value="<?= $g->g_id; ?>" 
                                        <?php
                                        if ($profile->g_id_biw == $g->g_id) {
                                            echo 'checked';
                                        }
                                        ?> /> <?= $g->g_desc; ?>
                                    </label>
                                    <?php
                                }
                            }
                            ?>
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="form-group">
                        <label align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Relationship </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="biw_relationship" id="biw_relationship" placeholder="Relationship" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> E-Mail </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="biw_email" id="biw_email" placeholder="E-Mail" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Phone Number </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="biw_phone" id="biw_phone" placeholder="Phone Number" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <h5 align="left"> Address Info </h5>


                <div class="col-md-12">
                    <div class="form-group">
                        <label for="address" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Street Address </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="biw_address" id="biw_address" placeholder="Street Address" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="form-group">
                        <label for="city" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> City </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="biw_city" id="biw_city" placeholder="City" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="form-group">
                        <label align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> State/Province </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="biw_state" id="biw_state" placeholder="State/Province" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="city" align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Country </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="biw_country" id="biw_country" placeholder="Country" 
                                   value="" />
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="form-group">
                        <label align="left"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> Zip/Postal Code </b> </label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="biw_postcode" id="biw_postcode" placeholder="Postcode" 
                                   value="" />
                        </div>
                    </div>
                </div>

                <div class="col-md-12"> <br/> </div> 

            </div><!--end Beneficiary Information-->


            <div id="email1" class="view"><!--E-mails-->  

                <h4 align="center">   E-Mails </h4>

                <span id="email_view">
                    
                </span>

            </div><!--end E-mails--> 


            <div id="card1" class="view"><!--Cards-->  


                <h4 align="center">   Cards </h4>

                <span id="cards_view">
                    
                </span>

                

            </div><!--end Cards--> 


            <div id="bank1" class="view"><!--Banks-->  

                <h4 align="center">   Banks </h4>

                <span id="banks_view">
                    
                </span>

            </div><!--end Banks--> 


            <div id="change_pwd1" class="view"><!--Reset Password-->   

                <h4 align="center"> Reset Your Current Password </h4>

                <span id="change_pwd_view">
                    
                </span>

            </div><!--end Reset Password--> 


            <div id="acc_deac1" class="view"><!--Account Deactivation-->  

                <h4 align="center">   Account Deactivation </h4>

                <p><strong>Before you deactivate your account, you should know:</strong></p>
                <p>We only retain your user data for 30 days from the date of deactivation, 
                    after which we begin the process of deleting your account from our systems,which can take up to a week, as provided in our Privacy Policy,
                    unless there is a separate arrangement between you and Dinarpal to extend your deactivation period</p>
                <p>You may reactivate your account at any time during these 30 days by logging in.</p>

                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <button type="button" class="button blue-button" data-toggle="modal">Deactivation Account</button>
                    </div>
                </div>

            </div><!--end Account Deactivation-->
            
            
            <div id="verification1" class="view"><!--verification-->  

                <h4 align="center"> Verification </h4>

                <script>
                    $(document).ready(function () {
                        $.post("<?= site_url('member/showVerificationPage') ?>", {}).done(function (data) {
                            $("#paparVerification").html(data);
                        });
                    });
                </script>
                <div class="row">
                    <div class="col-md-12" id="paparVerification"></div>
                </div>

                <div class="col-md-12"> <br/> </div> 

            </div><!--end verification--> 


            <div class="col-md-12 geng_button_save_da" id="button_save_da">
                <div class="form-group">
                    <div class="col-sm-12">
                        <button type="submit" class="button " data-toggle="modal">Save</button>
                    </div>
                </div>
            </div>


        </div>

        <!--all about tips-->        
        <div class="col-md-3 view" id="accType"><!--accType-->
            <section>
                <div id="section-settings-info-profile" class="details-box">
                    <header class="details-box__header">
                        Account Type
                    </header>
                    <div class="details-box__inner" style="margin-top:4%; padding:32px;">
<!--                        <p>Your Account type : <br /> <strong><?= $profile->mas_desc; ?></strong></p>
                        <p class="details-box__text-block">Verify : 
                        <?php
                        $me_activation_status = $profile->me_activation_status;
                        $me_activation_status_color = "#0f0";
                        $me_activation_status_str = "Verified";
                        if ($me_activation_status == 1 || $me_activation_status == 2) {
                            // not verified
                            $me_activation_status_color = "#f00";
                            $me_activation_status_str = "Unverified <a class = 'test' id = 'verification'>(Verification)</a>";
                        } else if ($me_activation_status == 3) {
                            // verified
                            $me_activation_status_color = "#0f0";
                            $me_activation_status_str = "Verified";
                        }
                        ?>
                            <span style="color: <?= $me_activation_status_color; ?>;"><?= $me_activation_status_str; ?></span>
                        </p>-->
                        <table class="table">
                            <tr>
                                <td valign="top">Account Type</td>
                                <td valign="top">:</td>
                                <th valign="top"><strong></strong></th>
                            </tr>
                            <tr>
                                <td valign="top">Priviledge Level</td>
                                <td valign="top">:</td>
                                <th valign="top"><strong></strong></th>
                            </tr>
                            <tr>
                                <td valign="top">Status</td>
                                <td valign="top">:</td>
                                <th valign="top">
                                    
                                </th>
                            </tr>
                            <tr>
                                <td valign="top">Joined Date</td>
                                <td valign="top">:</td>
                                <th valign="top"></th>
                            </tr>
                        </table>

                    </div>
                </div>
            </section>
            <section>
                <div id="section-settings-info-profile" class="details-box">
                    <header class="details-box__header">
                        Dealer Type
                    </header>
                    <div class="details-box__inner" style="margin-top:4%; padding:32px;">
                        <center>
                            
                            <strong></strong>
                            <br />
                            <img style="max-height: 100px; max-width: 100px;" src="<?= base_url(); ?>assets/images/dealer/" />
                            <p align="justify">
                                
                            </p>
                        </center>
                    </div>
                </div>
            </section>
            <section>
                <div id="section-settings-info-profile" class="details-box">
                    <header class="details-box__header">
                        Editing Your Information
                    </header>
                    <div class="details-box__inner" style="margin-top:4%; padding:32px;">
                        <p>For benefit of our customer's we take security very seriously</p>
                        <p class="details-box__text-block">* Any changes to your Name, Email Address, 
                            Phone Number, Date of Birth or Country will require users to contact us directly via our  
                            <a support-link="" href="http://support.dinarpal.com" target="_blank">Support Center</a> 
                            or <a support-email="" href="mailto:support@dinarpal.com">support@dinarpal.com</a>
                        </p>
                    </div>
                </div>
            </section>
        </div><!--accType-->

        <div class="col-md-3 view" id="addTips"><!--addTips-->
            <div class="details-container">
                <div id="section-settings-info-addInfo" class="details-box">
                    <header class="details-box__header">Address Information Tips</header>
                    <div class="details-box__inner"  style="margin-top:4%; padding:32px;">
                        <p class="details-box__text-block">Please complete your address information, so that if we has any letter of info or statement, we can give to the correct address</p>
                        <p>Thank You very much.</p>
                    </div>
                </div>
            </div>
        </div><!--/ end addTips-->

        <div class="col-md-3 view" id="socialTips"><!--socialTips-->
            <div class="details-container">
                <div id="section-settings-info-social" class="details-box">
                    <header class="details-box__header">Social Information Tips</header>
                    <div class="details-box__inner"  style="margin-top:4%; padding:32px;">
                        <p class="details-box__text-block">Please complete your Social information</p>
                        <p>Thank You very much.</p>
                    </div>
                </div>
            </div>
        </div><!--/ end socialTips-->

        <div class="col-md-3 view" id="BeneficiaryTips"><!--BeneficiaryTips-->
            <div class="details-container">
                <div id="section-settings-info-beneficiary" class="details-box">
                    <header class="details-box__header">Beneficiary Information Tips</header>
                    <div class="details-box__inner"  style="margin-top:4%; padding:32px;">
                        <p class="details-box__text-block">Please complete your Beneficiary information</p>
                        <p>Thank You very much.</p>
                    </div>
                </div>
            </div>
        </div><!--/ end BeneficiaryTips-->

        <div class="col-md-3 view" id="verifyTips"><!--verifyTips-->
            <div class="details-container">
                <div id="section-settings-info-verify" class="details-box">
                    <header class="details-box__header">Verification Tips</header>
                    <div class="details-box__inner"  style="margin-top:4%; padding:32px;">
                        <p class="details-box__text-block">Please complete your verification information</p>
                        <p>Thank You very much.</p>
                    </div>
                </div>
            </div>
        </div><!--/ end verifyTips-->

        <div class="col-md-3 view" id="emailTips"><!--emailTips-->
            <div class="details-container">
                <div id="section-settings-info-email" class="details-box">
                    <header class="details-box__header">Email Tips</header>
                    <div class="details-box__inner"  style="margin-top:4%; padding:32px;">
                        <p class="details-box__text-block">Please complete your email information</p>
                        <p>Thank You very much.</p>
                    </div>
                </div>
            </div>
        </div><!--/ end emailTips-->

        <div class="col-md-3 view" id="cardTips"><!--cardTips-->
            <div class="details-container">
                <div id="section-settings-info-Card" class="details-box">
                    <header class="details-box__header">Card Tips</header>
                    <div class="details-box__inner"  style="margin-top:4%; padding:32px;">
                        <p class="details-box__text-block">Please complete your card information</p>
                        <p>Thank You very much.</p>
                    </div>
                </div>
            </div>
        </div><!--/ end cardTips-->

        <div class="col-md-3 view" id="bankTips"><!--bankTips-->
            <div class="details-container">
                <div id="section-settings-info-bank" class="details-box">
                    <header class="details-box__header">Bank Tips</header>
                    <div class="details-box__inner"  style="margin-top:4%; padding:32px;">
                        <p class="details-box__text-block">Please complete your bank information</p>
                        <p>Thank You very much.</p>
                    </div>
                </div>
            </div>
        </div><!--/ end bankTips-->

        <div class="col-md-3 view" id="passTips"><!--passTips-->
            <div class="details-container">
                <div id="section-settings-info-password" class="details-box">
                    <header class="details-box__header">Password Tips</header>
                    <div class="details-box__inner"  style="margin-top:4%; padding:32px;">
                        <p class="details-box__text-block">To ensure your password is secure, Dinarpal requires at least eight characters in length, with at least one number,one special character and one Caps character. Never write your password down or share it with others.</p>
                        <p class="details-box__text-block">If you require help changing your password, contact us directly via our  
                            <a support-link="" href="http://support.dinarpal.com" target="_blank">Support Center</a> or 
                            <a support-email="" href="mailto:support@dinarpal.com">support@dinarpal.com</a>
                        </p>

                    </div>
                </div>
            </div>
        </div><!--/ end passTips-->

        <div class="col-md-3 view" id="deacTips"><!--deacTips-->
            <div class="details-container">
                <div id="section-settings-info-deactivation" class="details-box">
                    <header class="details-box__header">Deactivation Information</header>
                    <div class="details-box__inner"  style="margin-top:4%; padding:32px;">
                        <p class="details-box__text-block">Deactivation puts your account in a queue for permanent deletion from Dinarpal.</p>
                        <p class="details-box__text-block">To deactivate your account please email
                            <a support-link="" href="http://support.dinarpal.com" target="_blank">Support Center</a> or 
                            <a support-email="" href="mailto:support@dinarpal.com">support@dinarpal.com</a>
                            and clearly state the reason for your request so that we may take the appropriate steps for improvement.
                        </p>
                        <p>Thank You very much.</p>
                    </div>
                </div>
            </div>
        </div><!--/ end deacTips-->
        <!--/end all about tips-->   

    </div>
</form>

