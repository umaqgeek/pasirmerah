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
                    <h4 class="section-title text-center wow fadeInDown">Souq Capitalizations</h4>
                </div>
            </div>
                  
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="row">
                        <div class="col-md-4">
                            <ul id="category-tabs" class="nav nav-tabs text-left" role="tablist">
                                <li class="active">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"> All <span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Top 100</a></li>
                                        <li><a href="#">Full List</a></li>
                                    </ul>
                                </li> 
                                <li class="">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Currencies <span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Top 100</a></li>
                                        <li><a href="#">Full List</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Market Cap by Available Supply</a></li> 
                                        <li><a href="#">Market Cap by Total Supply</a></li>
                                        <li><a href="#">Filter Non-Mineable</a></li>
                                        <li><a href="#">Filter Premined</a></li>
                                        <li><a href="#">Filter Non-Mineable and Premined</a></li>
                                    </ul>
                                </li>
                                <li class="">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"> Assets <span class="caret"></span> </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Top 100</a></li>
                                        <li><a href="#">Full List</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Market Cap by Available Supply</a></li> 
                                        <li><a href="#">Market Cap by Total Supply</a></li>
                                    </ul>                        
                                </li>
                            </ul> 
                        </div>

                        <div class="hidden-xs hidden-sm col-md-4 text-left">
                            <div id="currency-switch" class="btn-group">
                                <button id="currency-switch-button" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                    USD <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu text-center" role="menu">
                                    <li class="pointer"><a href="#USD" class="price-toggle" data-currency="usd">USD</a></li>
                                    <li class="divider"></li>                                
                                    <li class="pointer"><a href="#BTC" class="price-toggle" data-currency="btc">DPC</a></li>
                                    <li class="divider"></li>
                                    <li class="pointer"><a href="#EUR" class="price-toggle" data-currency="eur">EUR</a></li>
                                    <li class="divider"></li>
                                    <li class="pointer"><a href="#CNY" class="price-toggle" data-currency="cny">CNY</a></li>
                                    <li class="divider"></li>
                                    <li class="pointer"><a href="#GBP" class="price-toggle" data-currency="gbp">GBP</a></li>
                                    <li class="divider"></li>
                                    <li class="pointer"><a href="#CAD" class="price-toggle" data-currency="cad">CAD</a></li>
                                    <li class="divider"></li>
                                    <li class="pointer"><a href="#RUB" class="price-toggle" data-currency="rub">RUB</a></li>
                                    <li class="divider"></li>
                                    <li class="pointer"><a href="#HKD" class="price-toggle" data-currency="hkd">HKD</a></li>
                                    <li class="divider"></li>
                                    <li class="pointer"><a href="#JPY" class="price-toggle" data-currency="jpy">JPY</a></li>
                                    <li class="divider"></li>
                                    <li class="pointer"><a href="#AUD" class="price-toggle" data-currency="aud">AUD</a></li>                
                                </ul>
                            </div> 
                        </div>

                        
                    </div>          
                    
                    <table class="table" style=" border-color: #B6BDD2;" border="1" cellpadding="0" cellspacing="0" width="70%">
                        <tr>
                            <td style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2; color: white;">No</td>
                            <td style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2; color: white;">Name</td>
                            <td style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2; color: white;">Market Cap</td>
                            <td style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2; color: white;">Price</td>
                            <td style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2; color: white;">Available  Supply</td>
                            <td style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2; color: white;">Volume (24h)</td>
                            <td style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2; color: white;">% Change (24h)</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td width="30%">
                                <img src="<?= base_url(); ?>assets/images/camera.jpg" alt="" style="width: 5%;">
                                <a href="#">DinarPalCoin</a>
                            </td>
                            <td>MYR 172,000 </td>
                            <td>MYR5.23</td>
                            <td>800 DPC</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>
                                <img src="<?= base_url(); ?>assets/imagess/currency/nubits.png" alt="">
                                <a href="#">JDTCoin</a>
                            </td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>
                                <img src="<?= base_url(); ?>assets/imagess/currency/supernet-unity.png" alt="">
                                <a href="#">SunnyGoldCoin</a>
                            </td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                    </table>

                    <div id="asterisks"> * Not Mineable <br> ** Significantly Premined </div>

                </div>
            </div>
            
            
            <div class="row text-center" id="total_market_cap">
                <strong>Total Market Cap: <span id="total-marketcap" data-usd="12,025,707,918" data-btc="19,809,430">

                        0
                    </span></strong>
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