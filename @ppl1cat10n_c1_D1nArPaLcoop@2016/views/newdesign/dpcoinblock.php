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

                                    <?= $this->load->view('newdesign/menux', '', true); ?>
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
        
        <!--<?=$this->load->view('testpage', '', true); ?>-->
        
        <section id="features">
            <div class="container">
                
                <div class="section-header">
                    <h2 class="section-title text-center wow fadeInDown">Mining Countdown</h2>
                </div>


                <!--
                <div class="flip-counter clock flip-clock-wrapper" style="display: flex; align-items: center; justify-content: center;"><span class="flip-clock-divider days"><span class="flip-clock-label">Days</span></span><ul class="flip "><li class="flip-clock-before"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">1</div></div><div class="down"><div class="shadow"></div><div class="inn">1</div></div></a></li><li class="flip-clock-active"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">1</div></div><div class="down"><div class="shadow"></div><div class="inn">1</div></div></a></li></ul><ul class="flip "><li class="flip-clock-before"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">2</div></div><div class="down"><div class="shadow"></div><div class="inn">2</div></div></a></li><li class="flip-clock-active"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">3</div></div><div class="down"><div class="shadow"></div><div class="inn">3</div></div></a></li></ul><ul class="flip "><li class="flip-clock-before"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">8</div></div><div class="down"><div class="shadow"></div><div class="inn">8</div></div></a></li><li class="flip-clock-active"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">9</div></div><div class="down"><div class="shadow"></div><div class="inn">9</div></div></a></li></ul><ul class="flip "><li class="flip-clock-before"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">9</div></div><div class="down"><div class="shadow"></div><div class="inn">9</div></div></a></li><li class="flip-clock-active"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">0</div></div><div class="down"><div class="shadow"></div><div class="inn">0</div></div></a></li></ul><span class="flip-clock-divider hours"><span class="flip-clock-label">Hours</span><span class="flip-clock-dot top"></span><span class="flip-clock-dot bottom"></span></span><ul class="flip "><li class="flip-clock-before"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">1</div></div><div class="down"><div class="shadow"></div><div class="inn">1</div></div></a></li><li class="flip-clock-active"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">1</div></div><div class="down"><div class="shadow"></div><div class="inn">1</div></div></a></li></ul><ul class="flip  play"><li class="flip-clock-before"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">7</div></div><div class="down"><div class="shadow"></div><div class="inn">7</div></div></a></li><li class="flip-clock-active"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">6</div></div><div class="down"><div class="shadow"></div><div class="inn">6</div></div></a></li></ul><span class="flip-clock-divider minutes"><span class="flip-clock-label">Minutes</span><span class="flip-clock-dot top"></span><span class="flip-clock-dot bottom"></span></span><ul class="flip  play"><li class="flip-clock-before"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">5</div></div><div class="down"><div class="shadow"></div><div class="inn">5</div></div></a></li><li class="flip-clock-active"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">4</div></div><div class="down"><div class="shadow"></div><div class="inn">4</div></div></a></li></ul><ul class="flip  play"><li class="flip-clock-before"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">4</div></div><div class="down"><div class="shadow"></div><div class="inn">4</div></div></a></li><li class="flip-clock-active"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">3</div></div><div class="down"><div class="shadow"></div><div class="inn">3</div></div></a></li></ul><span class="flip-clock-divider seconds"><span class="flip-clock-label">Seconds</span><span class="flip-clock-dot top"></span><span class="flip-clock-dot bottom"></span></span><ul class="flip  play"><li class="flip-clock-before"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">4</div></div><div class="down"><div class="shadow"></div><div class="inn">4</div></div></a></li><li class="flip-clock-active"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">3</div></div><div class="down"><div class="shadow"></div><div class="inn">3</div></div></a></li></ul><ul class="flip  play"><li class="flip-clock-before"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">6</div></div><div class="down"><div class="shadow"></div><div class="inn">6</div></div></a></li><li class="flip-clock-active"><a href="#"><div class="up"><div class="shadow"></div><div class="inn">5</div></div><div class="down"><div class="shadow"></div><div class="inn">5</div></div></a></li></ul></div>
                <script type="text/javascript">
                        var clock;
    
                        $(document).ready(function() {
                                clock = $('.clock').FlipClock(120160200, {
                                        clockFace: 'DailyCounter',
                                        countdown: true
                                });
                        });
                </script>
                -->

                <div class="col-md-8 col-md-offset-2">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <table class="table" style=" border-color: #B6BDD2;" border="1" cellpadding="0" cellspacing="0" width="70%">
                                <tbody>
                                    <tr>
                                        <td align="center" style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2; color: white;">DESCRIPTION</td>
                                        <td align="center" width="45%" style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2; color: white;">TOTAL</td>
                                    </tr>
                                
                                    <tr>
                                        <td>Total DinarPalcoins in circulation:</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>Total DinarPalcoins to ever be produced:</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>Percentage of total DinarPalcoins mined:</td>
                                        <td align="center">0%</td>
                                    </tr>
                                    <tr>
                                        <td>Total DinarPalcoins left to mine:</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>Total DinarPalcoins left to mine until next blockhalf:</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>DinarPalcoin price (MYR):</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>Market capitalization (MYR):</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>DinarPalcoins generated per day:</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>DinarPalcoin inflation rate per annum:</td>
                                        <td align="center">0%</td>
                                    </tr>
                                    <tr>
                                        <td>DinarPalcoin inflation rate per annum at next block halving event:</td>
                                        <td align="center">0%</td>
                                    </tr>
                                    <tr>
                                        <td>DinarPalcoin inflation per day (MYR):</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>DinarPalcoin inflation until next blockhalf event based on current price (MYR):</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>Total blocks:</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>Blocks until mining reward is halved:</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>Approximate block generation time:</td>
                                        <td align="center">0 minutes</td>
                                    </tr>
                                    <tr>
                                        <td>Approximate blocks generated per day:</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>Difficulty:</td>
                                        <td align="center">0</td>
                                    </tr>
                                    <tr>
                                        <td>Hash rate:</td>
                                        <td align="center">0 Exahashes/s</td>
                                    </tr>
                                    
                            </tbody>
                                
                            </table>
                            
                        </table>
                    </div>
                </div>
                
                <!--
                <div class="col-md-8 col-md-offset-2">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <tbody>
                                <tr><td><b>DESCRIPTION</b></td><td align="right">TOTAL</td></tr>
                                <tr><td><b>Total DinarPalcoins in circulation:</b></td><td align="right">0</td></tr>
                                <tr><td><b>Total DinarPalcoins to ever be produced:</b></td><td align="right">0</td></tr>
                                <tr><td><b>Percentage of total DinarPalcoins mined:</b></td><td align="right">0%</td></tr>
                                <tr><td><b>Total DinarPalcoins left to mine:</b></td><td align="right">0</td></tr>
                                <tr><td><b>Total DinarPalcoins left to mine until next blockhalf:</b></td><td align="right">0</td></tr>
                                <tr><td><b>DinarPalcoin price (MYR):</b></td><td align="right">0</td></tr>
                                <tr><td><b>Market capitalization (MYR):</b></td><td align="right">0</td></tr>
                                <tr><td><b>DinarPalcoins generated per day:</b></td><td align="right">0</td></tr>	
                                <tr><td><b>DinarPalcoin inflation rate per annum:</b></td><td align="right">0%</td></tr>
                                <tr><td><b>DinarPalcoin inflation rate per annum at next block halving event:</b></td><td align="right">0%</td></tr>
                                <tr><td><b>DinarPalcoin inflation per day (MYR):</b></td><td align="right">0</td></tr>
                                <tr><td><b>DinarPalcoin inflation until next blockhalf event based on current price (MYR):</b></td><td align="right">0</td></tr>
                                <tr><td><b>Total blocks:</b></td><td align="right">0</td></tr>
                                <tr><td><b>Blocks until mining reward is halved:</b></td><td align="right">0</td></tr>
                                <tr><td><b>Approximate block generation time:</b></td><td align="right">0 minutes</td></tr>
                                <tr><td><b>Approximate blocks generated per day:</b></td><td align="right">0</td></tr>
                                <tr><td><b>Difficulty:</b></td><td align="right">0</td></tr>
                                <tr><td><b>Hash rate:</b></td><td align="right">0 Exahashes/s</td></tr>
                            </tbody>
                        </table>
                        <div style="text-align:center">
                            <img src="<?= base_url(); ?>assets/images/camera.jpg" width="150px" height="150px">
                            <br>
                            <h2><a href="#">DinarPalCoin Block Halving Countdown</a></h2>
                        </div>
                    </div>

                </div>-->
            
            </div>
        </section>

        <style>
            @media screen and (max-width:1200px) {
                #selangda {
                    height: -800px;
                }
            }
        </style>

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
            var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
            (function () {
                var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
                s1.async = true;
                s1.src = 'https://embed.tawk.to/57946b89660462dd70bca746/default';
                s1.charset = 'UTF-8';
                s1.setAttribute('crossorigin', '*');
                s0.parentNode.insertBefore(s1, s0);
            })();
        </script>
        <!--End of Tawk.to Script-->

        <script>
            $(document).ready(function () {
                $('#nb2sb-nav').nb2sb({
                    selectors: {
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
