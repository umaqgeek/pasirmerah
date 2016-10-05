<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>DinarPal</title>
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url() . 'assets/design_ori/favicon.ico' ?>">
        <!-- core CSS -->

        <link href="<?php echo base_url(); ?>assets/csss/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csss/font-awesome.min.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csss/animate.min.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csss/owl.carousel.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csss/owl.transitions.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csss/prettyPhoto.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csss/main.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csss/responsive.css" rel="stylesheet">
        <link href="<?php echo base_url() . 'assets/css/main.css' ?>" rel="stylesheet"> 

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]       
        <link rel="shortcut icon" href="assets/imagess/ico/favicon.ico">-->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo base_url(); ?>assets/imagess/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo base_url(); ?>assets/imagess/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo base_url(); ?>assets/imagess/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="<?php echo base_url(); ?>assets/imagess/ico/apple-touch-icon-57-precomposed.png">





    </head><!--/head-->
    
    <style>
    /*--dot---*/
            .dot {
                position: relative;
                top: -1px;
                width: 5px;
                height: 5px;
                border-radius: 50%;
                display: inline-block;
                margin: 0 20px;
                background-color: #1f272c;
                box-shadow: inset 0 1px 1px 0 #0d1418,0 1px 1px 0 #323c42;
            }

            @media screen and (max-width:1200px) {
                .dot {
                    margin: 0 5px;
                }
            }
        
    </style>


    <body id="home" class="homepage">

        <div class="navbar-dinarpal navbar-default navbar-fixed-top">
            <div class="container" style="margin-top: 9px;">

                <nav class="navbar navbar-inverse" role="navigation" style="background-color: #252e33; border: none;">
                    <div class="navbar-header">

                        <!--icon/button-->
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <!--Logo-->
                        <a class="navbar-brand" href="<?php echo site_url('version3') ?>"> <img src="<?php echo base_url(); ?>assets/imagess/DP-Logo-small.png" width="106" height="29" alt="logo" style="margin-top:-6px;"></a>
                        <a class="navbar-brand"><img src="<?php echo base_url(); ?>assets/imagess/malaysian-flag.png" style="width:25px; height:15px; margin-bottom: -24px "></a>
                        <a class="navbar-brand" href="<?php echo site_url('version3/goldPrice') ?>" style="font-size:0.70rem; color:#f6f6f6"><?=$this->my_func->getCurrency(); ?> <?=$this->my_func->getCurrentPrice(); ?> / grm</a>
                    </div>

                    <div class="collapse navbar-collapse navbar-right" id="navbar-collapse-1">

                        <ul class="nav navbar-nav">
                            <li><a href="<?= site_url('version3'); ?>#features" style="color: #f6f6f6;">Rahnu</a></li>
                            <li ><a href="<?= site_url('version3'); ?>#portfolio" style="color: #f6f6f6;">Savings</a></li>
                            <li><a href="<?= site_url('version3'); ?>#services" style="color: #f6f6f6;">Payments</a></li>
                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #f6f6f6;">Shop<b class="caret"></b></a>
                                <ul class="dropdown-menu" style="margin-top: 0px;border-top-left-radius: 10px;border-bottom-right-radius: 10px;background-color: #999;">
                                    <li class="kopie"><a href="<?= site_url('version3'); ?>#sell" style="color: #f6f6f6;">Sell</a></li>
                                    <li><a href="<?= site_url('version3'); ?>#buy" style="color: #f6f6f6;">Buy</a></li>
                                    <li><a href="<?php echo site_url('version3/merchants') ?>" style="color: #f6f6f6;">Merchant</a></li>
                                </ul>
                            </li>
                            <li class="dropdown" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="color: #f6f6f6;">More<b class="caret"></b></a>
                                <ul class="dropdown-menu"  style="margin-top: 0px;border-top-left-radius: 10px;border-bottom-right-radius: 10px;background-color: #999;">

                                    <?=$this->load->view('newdesign/menux', '', true); ?>
                                </ul>
                            </li>
                            <li class="dropdown dot" style="margin-top: 25px; margin-left: 20px;"></li>

                            <li class="scroll"><a href="<?= site_url('login'); ?>"><input type="submit" class="button" value="Log In" style="height:30px;line-height:5px; margin-top:-6px;"></a></li>
                            <li class="scroll"><a href="<?= site_url('login/getstarted'); ?>"><input type="submit" class="button blue-button" value="Create Account" style="height:30px;line-height:5px;margin-top:-6px;"></a></li> 
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </nav>
            </div>
        </div>

        <script>
        $('#myTab a').click(function (e) {
         e.preventDefault();
         $(this).tab('show');
            });

        $(function () {
            $('#myTab a:last').tab('show');
            })
        </script>
        
        
        <section id="features">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title text-center wow fadeInDown">DinarPal Events</h2>

                    <center><BR><H4 class="text-left wow FadeInDown center-small-input"></H4>Lets join our events!!!<BR></center>
                    
                    <br><br>
                    <div class="container">
                    <div class="col-md-12 col-md-offset-2">

                        <div class="form-group">
                            <lable class="col-sm-1 control-label">Region</lable>
                            <div class="col-sm-3">
                                <input type="hidden" name=region" id="region">
                                <select class="form-control">
                                    <option> Southern </option>
                                    <option> Northern </option>
                                    <option> East Coast </option>
                                    <option> East </option>
                                </select>
                            </div>
                        

                       
                            <lable class="col-sm-1 control-label">Branch</lable>
                            <div class="col-sm-3">
                                <input type="hidden" name=branch" id="branch">
                                <select class="form-control">
                                    <option> Melaka </option>
                                    <option> Johor </option>
                                    <option> Negeri Sembilan </option>
                                </select>
                            </div>
                        </div>
                        
                    </div>
                    
                    <br><br>
                    
                    <div class="col-md-12 col-md-offset-2">

                        <div class="form-group">
                            <label class="col-sm-1 control-label">Speaker</label>
                            <div class="col-sm-3">
                                <input type="hidden" name=Speaker" id="Speaker">
                                <select class="form-control">
                                    <option> Hj Azhar Yaacob</option>
                                    <option> Arash Rashid </option>
                                    <option> Muhammad Zulkefli </option>
                                </select>
                            </div>


                            <label class="col-sm-1 control-label">Day</label>
                            <div class="col-sm-3">
                                <input type="hidden" name=Day" id="Day">
                                <select class="form-control">
                                    <option> Monday </option>
                                    <option> Tuesday </option>
                                    <option> Wednesday </option>
                                    <option> Thursday </option>
                                    <option> Friday </option>
                                    <option> Saturday </option>
                                    <option> Sunday </option>
                                </select>
                            </div>
                        </div>
                        
                    </div>
                    
                    
                    <div class="col-sm-3 col-md-offset-9">
                        <a class="button blue-button" href="<?php echo site_url('login/getstarted'); ?>" style="margin-top:25px; margin-bottom: 20px;">Search...</a>
                        <br>
                    </div>

                    <br></br>
                    
                    <div class="col-md-12 col-md-offset-2">
                        <div class="table-responsive">
                        <table class="table-condensed" style=" border-color: white;" border="1" cellpadding="0" cellspacing="0" width="70%">
                            <thead style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2;"" >
                                <tr class="row-1 odd">
                                    <th class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">
                                        <div style="color: white">Region</div>
                                    </th>
                                    <th class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">
                                        <div style="color: white">Branch</div>
                                    </th>
                                    <th class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">
                                        <div style="color: white">Date</div>
                                    </th>
                                    <th class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">
                                        <div style="color: white">Time</div>
                                    </th>
                                    <th class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">
                                        <div style="color: white">Day</div>
                                    </th>
                                    <th class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">
                                        <div style="color: white">Speaker</div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody style=" border-color: #B6BDD2;">
                                <tr>
                                    <td style="text-align: center;">Southern</td>
                                    <td style="text-align: center;">Melaka</td>
                                    <td style="text-align: center;">24/08/2016</td>
                                    <td style="text-align: center;">9.00 PM</td>
                                    <td style="text-align: center;">Wednesday</td>
                                    <td style="text-align: center;">Arash Rashid</td>
                                </tr>
                                <tr>
                                    <td style="text-align: center;">Southern</td>
                                    <td style="text-align: center;">Melaka</td>
                                    <td style="text-align: center;">07/09/2016</td>
                                    <td style="text-align: center;">9.00 PM</td>
                                    <td style="text-align: center;">Wednesday</td>
                                    <td style="text-align: center;">Arash Rashid</td> 
                                </tr>
                                <tr>
                                    <td style="text-align: center;">Southern</td>
                                    <td style="text-align: center;">Melaka</td>
                                    <td style="text-align: center;">14/09/2016</td>
                                    <td style="text-align: center;">9.00 PM</td>
                                    <td style="text-align: center;">Wednesday</td>
                                    <td style="text-align: center;">Arash Rashid</td> 
                                </tr>
                                <tr>
                                    <td style="text-align: center;">Southern</td>
                                    <td style="text-align: center;">Melaka</td>
                                    <td style="text-align: center;">21/09/2016</td>
                                    <td style="text-align: center;">9.00 PM</td>
                                    <td style="text-align: center;">Wednesday</td>
                                    <td style="text-align: center;">Arash Rashid</td> 
                                </tr>
                                <tr>
                                    <td style="text-align: center;">Southern</td>
                                    <td style="text-align: center;">Melaka</td>
                                    <td style="text-align: center;">28/09/2016</td>
                                    <td style="text-align: center;">9.00 PM</td>
                                    <td style="text-align: center;">Wednesday</td>
                                    <td style="text-align: center;">Arash Rashid</td> 
                                </tr>
                                
                            </tbody>
                        </table>
                        </div>

                    </div>
                </div>
            </div>
                
                <br></br>
                
                <div class="container">
                    <div class="section-header">
                        <h2 class="section-title text-center wow fadeInDown">Meet The Speakers</h2>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-2">

                        </div>

                        <div class="col-sm-6 col-md-3">
                            <div class="team-member wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
                                <div class="team-img">
                                    <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagess/team/azhar1.png" alt="">
                                </div>
                                <div class="team-info" style="text-align: center;">
                                    <h3>Hj Azhar Yaacob</h3>
                                    <span>Speaker</span>
                                </div>
                                <!--
                                <ul class="social-icons">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>-->
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="team-member wow fadeInUp" data-wow-duration="400ms" data-wow-delay="100ms">
                                <div class="team-img">
                                    <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagess/team/arash.jpg" alt="">
                                </div>
                                <div class="team-info" style="text-align: center;">
                                    <h3>Arash Rashid</h3>
                                    <span>Speaker</span>
                                </div>
                                <!--
                                <ul class="social-icons">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>-->
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3">
                            <div class="team-member wow fadeInUp" data-wow-duration="400ms" data-wow-delay="200ms">
                                <div class="team-img">
                                    <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagess/team/zul.png" alt="">
                                </div>
                                <div class="team-info" style="text-align: center;">
                                    <h3>Mohd Zulkefli</h3>
                                    <span>Speaker</span>
                                </div>
                                <!--
                                <ul class="social-icons">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>-->
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </section>





<script src="<?php echo base_url(); ?>assets/jss/jquery.js"></script>
<script src="<?php echo base_url(); ?>assets/jss/bootstrap.min.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script src="<?php echo base_url(); ?>assets/jss/owl.carousel.min.js"></script>
<script src="<?php echo base_url(); ?>assets/jss/mousescroll.js"></script>
<script src="<?php echo base_url(); ?>assets/jss/smoothscroll.js"></script>
<script src="<?php echo base_url(); ?>assets/jss/jquery.prettyPhoto.js"></script>
<script src="<?php echo base_url(); ?>assets/jss/jquery.isotope.min.js"></script>
<script src="<?php echo base_url(); ?>assets/jss/jquery.inview.min.js"></script>
<script src="<?php echo base_url(); ?>assets/jss/wow.min.js"></script>
<script src="<?php echo base_url(); ?>assets/jss/main.js"></script>

<script src="<?php echo base_url(); ?>assets/jss/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>assets/jss/jquery-ui.min.js"></script>




<script src="<?php echo base_url(); ?>assets/jss/jquery.nb2sb.js"></script>

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

<script>
    $( document ).ready(function() {
        $( '#nb2sb-nav' ).nb2sb({
            selectors : {
            opener: '#nb2sb-btn',
            content: '#nb2sb-content',  
            closingLinks: '.close-sb'           
            },
            settings: {
                animation: {
                    easing: 'easeOutQuint'
                }                   
            }
        });
    });
</script>
</body>
</html>