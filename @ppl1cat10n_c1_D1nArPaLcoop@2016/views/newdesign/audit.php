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

        <style>
            .rta-hero {
                position: relative;
                height: 900px;
                background-image: -webkit-linear-gradient(100deg,#2a3a49,#090f17 60%);
                background-image: linear-gradient(-10deg,#2a3a49,#090f17 60%);
            }

            .rta-hero::after,
            .rta-hero::before {
                position: absolute;
                z-index: 0;
            }

            .rta-hero::after {
                top: -200px;
                left: -300px;
                width: 800px;
                height: 600px;
                border-radius: 50%;
                background-image: -webkit-radial-gradient(rgba(20,160,240,.3),transparent 60%);
                background-image: radial-gradient(rgba(20,160,240,.3),transparent 60%);
            }

            .rta-hero::before {
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                /* background-image: url(" https://www.goldmoney.com/img/rta-dot-bg.svg?v=1470222295972"); */
                background-repeat: repeat;
            }

            .rta-hero__intro {
                position: relative;
                z-index: 1;
                margin-top: 88px;
                padding: 3.125rem 0 1.875rem;
                text-align: center;
            }

            .rta-hero__intro-h1 {
                margin-bottom: 10px;
            }

            .fp-text-block__large-heading,
            .hp-accounts__title,
            .ubuntu-h4 {
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;
                font-style: italic;
                font-weight: 300;
                font-size: 1.75rem;
                line-height: 2.375rem;
            }

            .chart-directive .chart-pager__items,
            .content-hero-explore__label-elm,
            .hero-components__h2,
            .pf-din-h6,
            .rta-hero-map-item__data,
            .rta-hero-map-item__vault {
                font-size: .75rem;
                line-height: 1.25rem;
                letter-spacing: 2px;
            }

            .rta-hero__stats-container {
                position: relative;
                z-index: 1;
                width: 85%;
                max-width: 850px;
                margin: 0 auto;
            }

            .rta-hero-stats {
                display: -webkit-box;
                display: flex;
                -webkit-box-pack: center;
                justify-content: center;
                padding: 30px;
                margin-bottom: 35px;
                text-align: center;
                border-radius: 4px;
                background-color: #121C27;
                border: 2px solid rgba(255,132,0,.4);
            }

            .rta-hero-stats__item {
                display: -webkit-box;
                display: flex;
                flex-direction: column;
                padding: 0 6%;
            }

            .rta-hero-stats__value {
                display: block;
                margin-bottom: 2px;
                color: #fff;
            }

            @media (max-width:767px) {
                .rta-hero-stats {
                    -webkit-box-orient: vertical;
                    -webkit-box-direction: normal;
                    flex-direction: column;
                }

                .pf-din-h7,
                .reviews-hero__tp-label,
                .rta-data-box,
                .rta-hero-map-item__type {
                    font-size: .625rem;
                    line-height: 1.125rem;
                    letter-spacing: 1.5px;
                }

                .rta-hero-vaults {
                    position: absolute;
                    z-index: 1;
                    bottom: 0;
                    left: 0;
                    width: 100%;
                    max-width: 1440px;
                    height: 90px;
                    background-color: rgba(0,0,0,.6);
                    overflow: auto;
                }

                @media (max-width:1199px) {
                    .rta-hero-vaults__container {
                        padding: 0 30px;
                        -webkit-box-pack: start;
                        justify-content: flex-start;
                    }

                    .rta-hero-vaults__item {
                        -webkit-box-flex: 0;
                        flex: 0 0 180px;
                    }
                }

                .rta-hero-map-item .rta-hero-map-item__vault,
                .rta-hero-map-item--toronto .rta-hero-map-item__vault {
                    color: #e85656;
                }

                .rta-hero-vaults__dot {
                    margin-right: 25px;
                }

                .spin-dot--toronto {
                    background-color: #e85656;
                }

                .spin-dot {
                    position: relative;
                    border-radius: 50%;
                    width: 8px;
                    height: 8px;
                }

                .spin-dot::before {
                    -webkit-animation: spin-reverse 2.5s infinite linear;
                    animation: spin-reverse 2.5s infinite linear;
                    width: 26px;
                    height: 26px;
                    margin-left: -13px;
                    margin-top: -13px;
                }
                .spin-dot::after, .spin-dot::before {
                    position: absolute;
                    content: "";
                    left: 50%;
                    top: 50%;
                    border-radius: 50%;
                    border: 1px solid transparent;
                }

                .flag, .nav-icon {
                    position: relative;
                }
                .flag, .spin-dot {
                    display: inline-block;
                }
                .flag, .rta-map__map {
                    background-repeat: no-repeat;
                }

                .choose-account-box__list-item::before,
                .comparison-table-header__item::after,
                .gmy-physical-charts::after,
                .hp-hero-accounts-bg::after,
                .hp-hero-accounts-bg::before,
                .ir-tabs__item::after,
                .rta-hero-map-item__data::after,
                .rta-hero::after,
                .rta-hero::before {
                    content: "";
                }

                .rta-hero-map-item--zurich {
                    bottom: 397px;
                    left: 586px;
                }
                .rta-hero-map-item--active {
                    opacity: 1;
                }
                .rta-hero-map-item {
                    position: absolute;
                    opacity: 0;
                    -webkit-transition: opacity .4s;
                    transition: opacity .4s;
                    bottom: 300px;
                    left: 533px;
                }

                .rta-hero-map {
                    position: absolute;
                    bottom: 0;
                    left: 50%;
                    -webkit-transform: translateX(-50%);
                    transform: translateX(-50%);
                    width: 1440px;
                    height: 100%;
                    background-image: url("  <?= base_url() . 'assets/imagess/audit/audit-map.png' ?>");
                    background-size: 100%!important;
                    background-repeat: no-repeat;
                    background-position: center bottom;
                }

                @media (-webkit-min-device-pixel-ratio:2),(min-resolution:192dpi) {
                    .rta-hero-map {
                        background-image: url(" <?= base_url() . 'assets/imagess/audit/audit-map2.gif' ?>");
                        background-size: 1440px 669px;
                    }
                }

                @media (max-width:767px) {
                    .rta-hero-map {
                        bottom: -135px;
                        left: 50%;
                        -webkit-transform: scale(.5) translateX(-100%);
                        transform: scale(.5) translateX(-100%);
                    }
                }

                .rta-hero-map-item {
                    position: absolute;
                    opacity: 0;
                    -webkit-transition: opacity .4s;
                    transition: opacity .4s;
                    bottom: 300px;
                    left: 533px;
                }

                .rta-hero-map-item__data {
                    position: relative;
                    padding: 8px 20px;
                    text-align: center;
                    background-color: rgba(0,0,0,.8);
                    border-radius: 2px;
                    opacity: 0;
                    -webkit-transform: translateY(10px);
                    transform: translateY(10px);
                    -webkit-transition: opacity .4s,-webkit-transform .4s ease-out;
                    transition: opacity .4s,-webkit-transform .4s ease-out;
                    transition: opacity .4s,transform .4s ease-out;
                    transition: opacity .4s,transform .4s ease-out,-webkit-transform .4s ease-out;
                }

                .rta-hero-map-item__data::after {
                    position: absolute;
                    top: 100%;
                    left: 50%;
                    -webkit-transform: translateX(-50%);
                    transform: translateX(-50%);
                    width: 0;
                    height: 0;
                    border-left: 10px solid transparent;
                    border-right: 10px solid transparent;
                    border-top: 10px solid rgba(0,0,0,.8);
                }

                .rta-hero-map-item__data,
                .rta-hero-map-item__type,
                .rta-hero-map-item__vault {
                    display: block;
                }

                .rta-hero-map-item__pin {
                    position: absolute;
                    bottom: -30px;
                    left: 50%;
                    -webkit-perspective: 100px;
                    perspective: 100px;
                    -webkit-transform: translateX(-50%) rotateX(45deg);
                    transform: translateX(-50%) rotateX(45deg);
                }
        </style>
        
        <style class="cp-pen-styles">* {
                box-sizing: border-box;
            }

            /* Animation */
            @-webkit-keyframes pulsate {
                0% {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 0.8;
                }
                45% {
                    -webkit-transform: scale(1.75);
                    transform: scale(1.75);
                    opacity: 0;
                }
            }
            @keyframes pulsate {
                0% {
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    opacity: 0.8;
                }
                45% {
                    -webkit-transform: scale(1.75);
                    transform: scale(1.75);
                    opacity: 0;
                }
            }
            @-webkit-keyframes stop-pulsate {
                from {
                    opacity: 0.4;
                }
                to {
                    -webkit-transform: scale(2);
                    transform: scale(2);
                    opacity: 0;
                }
            }
            @keyframes stop-pulsate {
                from {
                    opacity: 0.4;
                }
                to {
                    -webkit-transform: scale(2);
                    transform: scale(2);
                    opacity: 0;
                }
            }
            /* Button */
            .btn-pulse {
                /*position: absolute;*/
                top: 1025px;  /* hotspot position*/
                left: 954px;
            }
            .btn-pulse .circle {
                position: absolute;
                left: 50%;
                top: 50%;
                width: 5px;   /* internal red hotspot */
                height: 5px;
                margin: -0.666em auto auto -0.666em;
                background: #df0024;
                border-radius: 50%;
                opacity: 0.6;
                -webkit-transform-origin: 50% 50%;
                transform-origin: 50% 50%;
                -webkit-transition: opacity .2s ease-in, -webkit-transform .1s ease-out;
                transition: opacity .2s ease-in, -webkit-transform .1s ease-out;
                transition: opacity .2s ease-in, transform .1s ease-out;
                transition: opacity .2s ease-in, transform .1s ease-out, -webkit-transform .1s ease-out;
                color: white;
                font-size: 1.5em;
                padding: 0;
                text-align: center;
                line-height: 32px;
                overflow: hidden;
            }
            .btn-pulse .circle:hover {
                opacity: 0.8;
                cursor: pointer;
            }
            .btn-pulse .circle:active {
                -webkit-transform: scale(0.875);
                transform: scale(0.875);
            }
            .btn-pulse .ring {
                display: block;
                position: absolute;
                top: 45%;
                left: 50%;
                width: 0.4em; /* ring red hotspot */
                height: 0.4em;
                margin: -1em auto auto -1em;
                -webkit-transform-origin: 50% 50%;
                transform-origin: 50% 50%;
                border-radius: 50%;
                border: 1px solid #ff0024;
                opacity: 0;
                -webkit-animation: pulsate 3s ease-out infinite;
                animation: pulsate 3s ease-out infinite;
            }
            .btn-pulse:hover .ring {
                -webkit-animation: none;
                animation: none;
            }
            .btn-pulse:active .ring {
                -webkit-animation: stop-pulsate 0.3s;
                animation: stop-pulsate 0.3s;
            }
            
            /*                .img-pin1 {
                    position: absolute;
                    left: 0px;
                    top: 0px;
                    z-index: 20;
                }*/
        </style>
        
        <section>
            
            <section style="background-color: #242a33;">
                <div class="container" >
                    <div class="rta-hero__intro" style="margin-top: -30px;">

                            <h2 class="rta-hero__intro-h1 ubuntu-h4 white-text">
                                <span style="color: white;">Real Time Audit</span>
                            </h2>
                            <h1 class="pf-din-h6 gold-text" translate="">
                                <span style="color: grey;">Platform Statistics</span>
                            </h1>
                        </div>
                        <div class="rta-hero__stats-container" >
                            <span id="paparRealtimeAudit"><center>.. Connecting ..</center></span>
                        </div>
                        
                        <!--
                        <div class="rta-hero__stats-container" style="height: 400px;">
                            <img class="img-responsive wow fadeIn" src="<?php echo base_url(); ?>assets/imagess/audit/audit-map2.png" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
                            <img src="<?=base_url(); ?>assets/images/pinpoint.svg" class="img-pin1" width="100px" height="100px" />
                        </div>
                        -->
                        
                        <img class="img-responsive wow fadeIn" src="<?php echo base_url(); ?>assets/imagess/audit/audit-map2.gif" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
                        <section class="btn-pulse">
                            <span class="ring"></span>
                            <span class="circle"></span>
                        </section>
                    </div>
                </section>

                <!--
                <div class="rta-hero-vaults">
                    <div class="rta-hero-vaults__container">
                        <div class="rta-hero-vaults__item">
                            <i class="rta-hero-vaults__dot spin-dot spin-dot--toronto"></i> 
                            <i class="flag ca"></i> Toronto
                        </div>
                        <div class="rta-hero-vaults__item">
                            <i class="rta-hero-vaults__dot spin-dot spin-dot--new-york"></i> 
                            <i class="flag us"></i> New York
                        </div>
                        <div class="rta-hero-vaults__item">
                            <i class="rta-hero-vaults__dot spin-dot spin-dot--london"></i> 
                            <i class="flag gb"></i> London
                        </div>
                        <div class="rta-hero-vaults__item">
                            <i class="rta-hero-vaults__dot spin-dot spin-dot--zurich"></i> 
                            <i class="flag ch"></i> Zurich
                        </div>
                        <div class="rta-hero-vaults__item">
                            <i class="rta-hero-vaults__dot spin-dot spin-dot--dubai"></i> 
                            <i class="flag ae"></i> Dubai
                        </div>
                        <div class="rta-hero-vaults__item">
                            <i class="rta-hero-vaults__dot spin-dot spin-dot--singapore"></i> 
                            <i class="flag sg"></i> Singapore
                        </div>
                        <div class="rta-hero-vaults__item">
                            <i class="rta-hero-vaults__dot spin-dot spin-dot--hong-kong"></i> 
                            <i class="flag hk"></i> Hong Kong</div>
                    </div>
                </div>-->
                <!--
                <div class="rta-hero-map">display
                    <div class="rta-hero-map-item rta-hero-map-item--toronto rta-hero-map-item--active" ng-class="{'rta-hero-map-item--active': displayActivity}">
                        <div class="rta-hero-map-item__data">
                            <!----><!--<span class="rta-hero-map-item__vault" ng-if="activity.vault.name" ng-bind="activity.vault.name | translate">Toronto</span>
                            <!----><!-- <span class="rta-hero-map-item__amount white-text" ng-bind="activity.gauAmount + ' GAU'">2.846 GAU</span> 
                            <span class="rta-hero-map-item__type light-text" ng-bind="activity.type + ' · ' + lastUpdated">Deposit · 4 minutes ago</span>
                        </div>
                        <i class="rta-hero-map-item__pin spin-dot spin-dot--toronto"></i>
                    </div>
                </div>
                -->

<!--                <div class="rta-periscope">
                    <div class="_wrapper" gm-set-aspect-ratio="0.85" style="height: 1482.35px;">
                        <iframe ng-src="https://www.periscopedata.com/shared/4208111f-c7f7-49a6-867d-1a1f2ee27270?embed=true&amp;border=off" frameborder="0" width="100%" height="100%" src="https://www.periscopedata.com/shared/4208111f-c7f7-49a6-867d-1a1f2ee27270?embed=true&amp;border=off"></iframe>
                    </div>
                </div>-->

                <section id="get-in-touch">
                    <div class="container">
                        <div class="section-header">
                            <h2 class="section-title text-center wow fadeInDown">Experience it For Yourself</h2>
                            <p class="text-center wow fadeInDown">Create an account in 3 simple steps and take advantage of the best gold price</p>
                            <center><a class="button" href="<?php echo site_url('login/getstarted'); ?>" style="margin-top:25px;">Get Started</a></center>
                        </div>
                    </div>
                </section><!--/#get-in-touch-->
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
            
            <script>
                function setAudit() {
                    $.post("<?=site_url('version3/getAudit'); ?>", {
                    }).done(function (data) {
                        $("#paparRealtimeAudit").html(data);
                    });
                    var auditTime = setTimeout("setAudit()", 1000);
                }
                $("#paparRealtimeAudit").html("<center>.. Connecting ..<br /><br /><span class=\"fa fa-spinner fa-spin fa-3x fa-fw\"></span></center>");
                setAudit();
            </script>

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