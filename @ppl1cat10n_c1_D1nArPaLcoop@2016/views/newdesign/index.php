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

       
      
    <!-- Required plugin - Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.4.0/animate.min.css">

<!-- Tutorial JS code -->
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/tutorial.js"></script>   
    
        <script type="text/javascript" src="//code.jquery.com/jquery-2.0.2.js"></script>	

        <style type="text/css">
            .scrollup {
                width: 50px;
                height: 50px;
                position: fixed;
                border-radius: 100%;
                bottom: 28px;
                left: 35px;
                display: none;
                text-indent: -9999px;
                background: url('<?= base_url() . 'assets/images/chevronup.png' ?>') no-repeat;
                background-size: 40px 40px;
                margin-top:2%; 
                background-color: rgba(255,255,255,1);
                border-style: solid;
                border-width: 4px;
                /* border-color: #252E33 #252E33; */
            }
            
            .scrollup2 {
                width: 100px;
                height: 100px;
                position: fixed;
                border-radius: 100%;
                top: 35px;
                right: 35px;
                display: none;
                text-indent: -9999px;
                background: url('<?= base_url() . 'assets/images/call2.png' ?>') no-repeat; 
                background-size: 90px 90px;
                margin-top:2%; 
                background-color: rgba(255,255,255,1);
                border-style: solid;
                border-width: 4px;
                z-index:30000;
                /* border-color: #252E33 #252E33; */
            }
            
            .image1 {
			position: absolute;
		     opacity: 0.02;
             filter: alpha(opacity=40);
			 height:850px;
             width:850px;
			 margin:100px 0 0 -780px;
			-webkit-animation:spin 150s linear infinite;
			-moz-animation:spin 150s linear infinite;
			animation:spin 150s linear infinite;
			
		}
		@-moz-keyframes spin { 100% { -moz-transform: rotate(360deg); } }
		@-webkit-keyframes spin { 100% { -webkit-transform: rotate(360deg); } }
		@keyframes spin { 100% { -webkit-transform: rotate(360deg); transform:rotate(360deg); } }
                
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



        <script type='text/javascript'>//<![CDATA[
            $(window).load(function () {
                $(document).ready(function () {

                    $(window).scroll(function () {
                        if ($(this).scrollTop() > 100) {
                            $('.scrollup').fadeIn();
                        } else {
                            $('.scrollup').fadeOut();
                        }
                    });

                    $('.scrollup').click(function () {
                        $("html, body").animate({
                            scrollTop: 0
                        }, 600);
                        return false;
                    });
                    
                    $(window).scroll(function () {
                        if ($(this).scrollTop() > 50) {
                            $('.scrollup2').fadeIn();
                        } else {
                            $('.scrollup2').fadeOut();
                        }
                    });

                });
            });//]]> 

        </script>

    </head>

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

                    <div class="collapse navbar-collapse navbar-right" id="navbar-collapse-1">
                        
                            <ul class="nav navbar-nav">
                                
                                <li ><a href="#portfolio" style="color: #f6f6f6;">Savings</a></li>
                                <li><a href="#services" style="color: #f6f6f6;">Payments</a></li>
                                <li><a href="#features" style="color: #f6f6f6;">Rahnu</a></li>
                                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #f6f6f6;">Shop<b class="caret"></b></a>
                                    <ul class="dropdown-menu" style="margin-top: 0px;border-top-left-radius: 10px;border-bottom-right-radius: 10px;background-color: #999;">
                                        <li><a href="<?php echo site_url('version3/dsa') ?>" style="color: #f6f6f6;">Gold &amp; Silver Mall</a></li>
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
        
        <!--
        <header id="header">
            <!-- <nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner"> -->
        <!--    <nav  class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="container-fluid">
                    <div class="navbar-header" >
                        <a class="navbar-brand" href="<?php echo site_url('version3') ?>"> <img src="<?php echo base_url(); ?>assets/imagess/DP-Logo-small.png" width="106" height="29" alt="logo" style="margin-top:-6px;"></a>
                        <a class="navbar-brand"><img src="<?php echo base_url(); ?>assets/imagess/malaysian-flag.png" style="width:25px; height:15px; margin-bottom: -24px "></a>
                        <a class="navbar-brand" style="font-size:0.70rem; color:#f6f6f6"><?=$this->my_func->getCurrency(); ?> <?=$this->my_func->getCurrentPrice(); ?> / grm</a>
                        
                        <!-- icon/button -->
        <!--                <button  type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span> 
                        </button>
                    </div>

                    <!-- content -->
        <!--            <div  class="collapse navbar-collapse navbar-right">   
                        <ul class="nav navbar-nav navbar-right" style="margin-top:5px;" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                                  
                            <!--<li class="scroll active"><a href="#">Home</a></li>-->
        <!--                    <li class="scroll"><a href="#portfolio">Savings</a></li>
                            <li class="scroll"><a href="#services">Payments</a></li>
                            <li class="dropdown" style="cursor:pointer;">
                                <a type="button" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" >
                                    Rahnu<img src="<?php echo base_url(); ?>assets/imagess/arrow-down.png" style="width: 15px; height: 15px;">
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li class="scroll"><a href="#bid">Bid</a></li>
                                </ul>
                            </li>
                            <li class="dropdown" style="cursor:pointer;">
                                <a type="button" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    Souq Anshar <img src="<?php echo base_url(); ?>assets/imagess/arrow-down.png" style="width: 15px; height: 15px;">
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li class="scroll"><a href="#sell">Sell</a></li>
                                    <li class="scroll"><a href="#buy">Buy</a></li>
                                    <li class="scroll"><a href="<?=site_url('version3/merchants'); ?>">Merchant</a></li>
                                </ul>
                            </li>
                            <li class="dropdown" style="cursor:pointer;">
                                <a type="button" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    More <img src="<?php echo base_url(); ?>assets/imagess/arrow-down.png" style="width: 15px; height: 15px;">
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li class="scroll"><a href="#features">DinarPal</a></li>
                                    <li class="scroll"><a href="#exchange">Gold Exchange</a></li><!--<?php echo site_url('version3/goldexchange') ?>-->
        <!--                            <li class="scroll"><a href="<?php echo site_url('version3/goldPrice') ?>">Gold Price</a></li>
                                    <li class="scroll"><a href="<?php echo site_url('version3/zakat') ?>">Zakat Calculator</a></li>
                                </ul>
                            </li>
                            <!--<li class="scroll"><a href="<?= site_url('version3/shopping'); ?>">Shopping</a></li>-->
        <!--                    <li class="scroll"><a href="<?= site_url('login'); ?>"><input type="submit" class="button" value="Log In" style="height:30px;line-height:5px; margin-top:-6px;"></a></li>
                            <li class="scroll"><a href="<?= site_url('login/getstarted'); ?>"><input type="submit" class="button blue-button" value="Create Account" style="height:30px;line-height:5px;margin-top:-6px;"></a></li> 
                        </ul>
                    </div>
                    </div>
                </div>
            </nav><!--/nav-->
        <!--</header><!--/header-->
    
        <section id="main-slider">
            <div class="owl-carousel" >

                <?php
                
                foreach ($lp as $lps) {

                    if ($lps->lan_status == 1) {
                        ?>

                        <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/uploads/landingpage/<?= $lps->lan_image; ?>);">
                            <div class="slider-inner">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="carousel-content">  
                                                </br></br>

                                              

                                                    <h2 style="font-family: 'Avant Garde', Avantgarde, 'Century Gothic', CenturyGothic, AppleGothic, sans-serif; color:<?= $lps->lan_colour;  ?>; "> <?= $lps->lan_title; ?> </h2>
                                                    <p style="color:<?= $lps->lan_colour;  ?>;"><i> <?= $lps->lan_subtitle; ?> </i></p>

                                             
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    <?php }
                } ?>


                <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagess/slider/bg3.jpg);">
                    <div class="slider-inner">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        </br></br>
                                        <h2>Surah Al-Imran: Verse 75</h2>

                                        <p>"And Among the People of the Book, there are people who, if thou trust him with a weight of treasure, will return it (properly) to you, and some of them who, if though trust store 1 dinar already"</p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagess/slider/bg42.jpg);">
                    <div class="slider-inner">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        </br></br>
                                        <h2>High financing <span> & </span> Low fees </h2>
                                        <p>Micro credit with no interest. No usury 
                                            and no late charges and no hidden charges. </p>
                                        <a class="button blue-button" href="#features">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagess/slider/bg6.jpg);">
                    <div class="slider-inner">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        </br></br>
                                        <h2>Payments in Dinar  <span> & </span> Dirham</h2>
                                        <p>Gold gram transfer and silver gram 
                                            transfer. Feel the excitement  </p>
                                        <a class="button blue-button" href="#services">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagess/slider/bg9.jpg);">
                    <div class="slider-inner">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        </br></br>
                                        <h2>Saving in Dinar <span> & </span> Dirham</h2>
                                        <p>Enjoy saving Dinar and Dirham with us </p>
                                        <a class="button blue-button" href="#portfolio">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagess/slider/bg5555.jpg);">
                    <div class="slider-inner">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        </br></br>
                                        <h2>Sell <span> & </span> sell <span> & </span> sell...</h2>
                                        <p> If you have anything to sell please snap and upload to our marketplace or your own online mall and enjoy doing business with us. The launching day is just round the corner</p>
                                        <a class="button blue-button" href="#sell">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagess/slider/bg7.jpg);">
                    <div class="slider-inner">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        </br></br>
                                        <h2>Open for HALAL business</h2>
                                        <p>Now you can purchase on our HALAL marketplace or your favorite merchant store using your DinarPal account.</p>
                                        <a class="button blue-button" href="#buy">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagess/slider/bg8.jpg);">
                    <div class="slider-inner">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        </br></br>
                                        <h2>Bid <span> & </span> Won </h2>
                                        <p> Enjoy gold and silver bidding with us</p>
                                        <a class="button blue-button" href="#bid">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
          
                <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagess/slider/g2.jpg);">
                    <div class="slider-inner">
                        <div class="container">				 
                            <div class="row">
                                <div class="col-sm-6" style="margin-top:240px" >
                                    <div class="carousel-content" >
                                        <a style="color:#F9C801;font-family: Gisha;font-size:35px;font-weight: bold;">Dinar</a>
                                        <a style="color:#A3A3A3;font-family:Gisha;font-size:35px;font-weight: bold;">Pal</a>&nbsp;
                                        <b style="font-size:35px;font-weight: 600px; font-family: 'Roboto', sans-serif;"> Outlet is open NOW !!!</b>
                                        <p> As first outlet store in bussiness operation for selling our gold on online transaction and exchange from other gold in our outlet. </p>
                                    </div>
                                </div>
                                <div class="col-sm-6" style="margin-top:30px" >
                                    <img class="image1" src="assets/imagess/slider/11111-islamic-vector-design.png" alt=""> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagess/slider/g3.jpg);">
                    <div class="slider-inner">
                        <div class="container">				 
                            <div class="row">
                                <div class="col-sm-6" style="margin-top:240px" >
                                    <div class="carousel-content" >
                                        <a style="color:#F9C801;font-family:Gisha;font-size:35px;font-weight: bold;">Dinar</a>
                                        <a style="color:#A3A3A3;font-family:Gisha;font-size:35px;font-weight: bold;">Pal</a>&nbsp;
                                        <b style="font-size:35px;font-weight: 600px; font-family: 'Roboto', sans-serif;"> Baitul Coffee </b>
                                        <p> To meet and discuss with important person or other merchants who trades in DinarPal gold bussines. </p>
                                    </div>
                                </div>
                                <div class="col-sm-6" style="margin-top:30px" >
                                    <img class="image1" src="assets/imagess/slider/11111-islamic-vector-design.png" alt=""> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagess/slider/g4.jpg);">
                    <div class="slider-inner">
                        <div class="container">				 
                            <div class="row">
                                <div class="col-sm-6" style="margin-top:240px" >
                                    <div class="carousel-content" >
                                        <a style="color:#F9C801;font-family:Gisha;font-size:35px;font-weight: bold;">Dinar</a>
                                        <a style="color:#A3A3A3;font-family:Gisha;font-size:35px;font-weight: bold;">Pal</a>&nbsp;
                                        <b style="font-size:35px;font-weight: 600px; font-family: 'Roboto', sans-serif;"> Safe Gold Box Vaults </b>
                                        <p>We own and operate the first Safe Gold Box vaults in the country and to protect your Gold Bar from Burglary, Fire & Flood. </p>
                                    </div>
                                </div>
                                <div class="col-sm-6" style="margin-top:30px" >
                                    <img class="image1" src="assets/imagess/slider/11111-islamic-vector-design.png" alt=""> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->

                

            </div><!--/.owl-carousel-->
        </section><!--/#main-slider-->


        
        <section id="cta" class="wow fadeIn">
            <div class="container">
                <div class="row">
                    
                    <div class="col-md-12">
                        <div class="col-md-3 col-md-offset-1">
                            <img src="<?php echo base_url(); ?>assets/imagess/skm.png" width="50%" style="margin-left: 60px;" />
                            <p align="center">Regulated by the Malaysia Cooperative Societies Commission</p>
                        </div>
                        
                        <div class="col-md-3">
                            <img src="<?php echo base_url(); ?>assets/imagess/mnzwaj.png" width="50%" style="margin-left: 60px;"/>
                            <p align="center">Audited by MNZWAJ Associated for Financial Statement & Customer Metal</p>
                        </div>
                        
                        <div class="col-md-3">
                            <img src="<?php echo base_url(); ?>assets/imagess/jakim.png" width="50%" style="margin-left: 60px;"/>
                            <p align="center">Policy by Department Of Islamic Development Malaysia</p>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section><!--/#cta-->

                        <section id="features">
                            <div class="container">
                                <div class="section-header">
                                    <h2 class="section-title text-center wow fadeInDown">Rahnu</h2>
                                    <p class="text-center wow FadeInDown">We help you grow you business by offering micro credit 
                                        without interest by pawning your gold or silver items on the basis of syariah mortgage 
                                        principle. Your cash will be stored in your DinarPal account and can be withdraw directly to
                                        your favourite bank or at the DinarPal counter</p>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 wow fadeInLeft">
                                        <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagess/rahnu.jpg" alt="">
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-tablet"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Online Purchase &amp; Pawn</h4>
                                                <p class="text-justify wow FadeInDown">No more 
                                                    walk-in,&nbsp; 
                                                    now you can DinarPal your gold and silver via online and 
                                                    enjoy the high financing up to 80% from your precious 
                                                    metal value with 12 month duration and can be renew.</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-file-text-o"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Low Safe Keeping Fees</h4>
                                                <p class="text-justify wow FadeInDown">Your safe keeping fee is only <?=$this->my_func->getFee(7, 100); ?>% from marhun amount per year.</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">

                                                <i class="fa fa-gift"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Special Features</h4>
                                                <p class="text-justify wow FadeInDown">Enjoy the special features 
                                                    such as price update, rahnu calculator, pay your 
                                                    fees, renew your contract, redeem your items, print 
                                                    your receipts, purchase DinarPal collections, 
                                                    advertise your collections and many more.</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-money"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Hassle-Free</h4>
                                                <p class="text-justify wow FadeInDown">You can pay 
                                                    for your rahnu loan as any amount you want to and at 
                                                    zero interest and no penalty charges and no hidden 
                                                    charges.</p>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <section id="cta2">
                            <div class="container">
                                <div class="text-center">
                                    <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
                                        <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms"><span>GO </span>FOR DINAR AND DIRHAM</h2>
                                        <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">Abu Bakar ibn Abi Maryam reported that he heard the Messenger of Allah, may Allah bless him and grant him peace, say: "A time is certainly coming over mankind in which there will be nothing [left] which will be of use save a dinar and a dirham." (The Musnad of Imam Ahmad ibn Hanbal)</p>
                                        <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms"><a class="button" href="<?php echo site_url('login/getstarted'); ?>">Join Us Now</a></p>
                                        <img class="img-responsive wow fadeIn" src="<?php echo base_url(); ?>assets/imagess/cta2/cta9-img.png" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
                                </div>
                            </div>
                        </section>
        
                        <section id="portfolio">
                            <div class="container">
                                <div class="section-header">
                                    <h2 class="section-title text-center wow fadeInDown">DinarPal for Saving</h2>
                                    <p class="text-center wow fadeInDown">Keep your montlhy saving 
                                        of gold and silver or dinar and dirham in our secure vault and 
                                        make it accessible. We offers the safest, most cost effective, and secure gold vault storage and silver vault storage services in the precious metals industry</p>
                                </div>

                                <div class="row">

                                    <div class="col-sm-6">
                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-university"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Fully Insured</h4>
                                                <p>Our safe gold box vault comes with insurance for every gram</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-files-o"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Low Storage Fees</h4>
                                                <p>Store your gold and silver at 2.5% x item values per year</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-list-alt"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Financial Reporting</h4>
                                                <p>We provide reporting tools to keep track of all 
                                                    your transactions and records making your vaulted 
                                                    gold feel digital.</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-clock-o"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Withdraw At Anytime</h4>
                                                <p>Store it at Malaysia outlet and you can withdraw 
                                                    it at Dubai. More outlet will open soon all over the 
                                                    world. In Sha Allah</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 wow fadeInLeft">
                                        <br>
                                        <br>
                                        <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagess/Guardian-Safe.png" alt="">

                                    </div>

                                </div>
                            </div><!--/.container-->
                        </section><!--/#portfolio-->
                        
                        <section id="cta2">
                            <div class="container">
                                <div class="text-center">
                                    <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms"><span>DINAR</span> AND DIRHAM PROTECTING YOUR WEALTH</h2>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">Thus, Gold is the security for you and your family and should exits in every household as capital production</p>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms"><a class="button" href="<?php echo site_url('login/getstarted'); ?>">Join Us Now</a></p>
                                    <img class="img-responsive wow fadeIn" src="<?php echo base_url(); ?>assets/imagess/cta2/cta3-img.png" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
                                </div>
                            </div>
                        </section>
        
                        <section id="services" >
                            <div class="container">

                                <div class="section-header">
                                    <h2 class="section-title text-center wow fadeInDown">DinarPal 
                                        Gram Transactions</h2>
                                    <p class="text-center wow fadeInDown">Feel the new excitement 
                                        using dinar and dirham (gram)&nbsp; to make payment or to 
                                        receive payment. </p>
                                </div>

                                <div class="row">
                                    <div class="features">
                                        <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
                                            <div class="media service-box">
                                                <div class="pull-left">
                                                    <i class="fa fa-share"></i>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading">Send Payment For Free</h4>
                                                    <p class="text-justify wow FadeInDown">You can send unlimited payment using gram or 
                                                        money among members with 0 fee. The minimum transfer 
                                                        amount  is MYR 0.10 for money and 0.1 gram for gold 
                                                        and silver</p>
                                                </div>
                                            </div>
                                        </div><!--/.col-md-4-->

                                        <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms">
                                            <div class="media service-box">
                                                <div class="pull-left">
                                                    <i class="fa fa-mobile"></i>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading">Dynamic Authentication</h4>
                                                    <p>We verify your identity via phone (sms), strong password, and One Time Passwords.</p>
                                                </div>
                                            </div>
                                        </div><!--/.col-md-4-->

                                        <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
                                            <div class="media service-box">
                                                <div class="pull-left">
                                                    <i class="fa fa-reply"></i>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading">Receive Payment</h4>
                                                    <p class="text-justify wow FadeInDown">Accepting 
                                                        payment into your account just only 2.5% fee from 
                                                        the amount you receive.</p>
                                                </div>
                                            </div>
                                        </div><!--/.col-md-4-->



                                    </div>
                                </div><!--/.row-->    
                            </div><!--/.container-->
                        </section><!--/#services-->


                        <section id="cta2">
                            <div class="container">
                                <div class="text-center">
                                    <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms"><span>YES!!</span> IN 1,400 YEARS INFLATION IS ZERO</h2>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">A chicken at the time of the Prophet, salla'llahu alaihi wa sallam, cost one dirham; today, 1,400 years later, a chicken costs approximately one dirham</p>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms"><a class="button" href="<?php echo site_url('login/getstarted'); ?>">Join Us Now</a></p>
                                    <img class="img-responsive wow fadeIn" src="<?php echo base_url(); ?>assets/imagess/cta2/cta4-img.png" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
                                </div>
                            </div>
                        </section>

                        <section id="sell">
                            <div class="container">
                                <div class="section-header">
                                    <BR><BR><BR><BR>
                                    <h2 class="section-title text-center wow fadeInDown">Sell</h2>
                                    <p class="text-center wow fadeInDown">If you have something to 
                                        sell on your website we suggest you to start accepting payments 
                                        using your DinarPal payment link and payment button.</p>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6 wow fadeInLeft">
                                        <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagess/iphone2.png" alt="">
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-hand-o-up"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Unique Payment Link & Button</h4>
                                                <p>Get your link and post it into your blog, web, whatsApp, twitter, instagram and etc</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-facebook-square"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">facebook and WhatsApp friendly</h4>
                                                <p>You can even start selling on facebook and on WhatsApp</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-credit-card"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Accept Major Debit Card</h4>
                                                <p>All major credit and debit card are accepted</p>

                                            </div>
                                        </div>

                                    </div>
                                </div>



                            </div><!--/.container-->
                        </section><!--/#portfolio-->

                        <section id="cta2">
                            <div class="container">
                                <div class="text-center">
                                    <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms"><span>GOLD</span> CANNOT BE INFLATED BY PRINTING MORE OF IT</h2>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">They are used to buy and sell since they are a legitimate medium of exchange</p>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms"><a class="button" href="<?php echo site_url('login/getstarted'); ?>">Join Us Now</a></p>
                                    <img class="img-responsive wow fadeIn" src="<?php echo base_url(); ?>assets/imagess/cta2/cta5-img.png" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
                                </div>
                            </div>
                        </section>

                        <section id="buy">
                            <div class="container">
                                <div class="section-header">
                                    <BR><BR><BR><BR>
                                    <h2 class="section-title text-center wow fadeInDown">Buy</h2>
                                    <p class="text-center wow FadeInDown">Have you experience the 
                                        sensational of purchasing and paying using dinar and dirham?. 
                                        Now is the time.</p>
                                </div>

                                <div class="row">

                                    <div class="col-sm-6">
                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-shopping-cart"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Shop at SouqAnshar</h4>
                                                <p>SouqAnshar is a place to store all your collections, share them and scope out others. Buy, sell, or just browse. Simply open an account on SouqAnshar and another on DinarPal, and link them </p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-exchange"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Connecting Buyer and 
                                                    Seller</h4>
                                                <p>We bring buyers and sellers together, reducing steps and costs.</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-truck"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Protecting you from checkout to the delivery</h4>
                                                <p>Shop until you drop</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-archive"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Syariah Compliance</h4>
                                                <p>Muammalah system </p>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-sm-6 wow fadeInLeft">
                                        <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagess/2012-10-06_2052.png" alt="">
                                    </div>


                                </div>



                            </div><!--/.container-->
                        </section><!--/#portfolio-->





                        <section id="cta2">
                            <div class="container">
                                <div class="text-center">
                                    <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms"><span>GOLD</span> IS DINAR AND DIRHAM IS SILVER</h2>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">In times of crisis, gold is the safest investment that also has the greatest potential to increase your wealth</p>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms"><a class="button" href="<?php echo site_url('login/getstarted'); ?>">Join Us Now</a></p>
                                    <img class="img-responsive wow fadeIn" src="<?php echo base_url(); ?>assets/imagess/cta2/cta8-img.png" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
                                </div>
                            </div>
                        </section>



                        <section id="bid">
                            <div class="container">
                                <div class="section-header">
                                    <BR><BR><BR><BR>
                                    <h2 class="section-title text-center wow fadeInDown">Bid</h2>
                                    <p class="text-center wow fadeInDown">For those members who not 
                                        plan to redeem their precious item, we help them to sell in our 
                                        private auction session</p>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6 wow fadeInLeft">
                                        <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagess/DnD-Landing-Page.png" alt="">
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-gavel"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Unlimited Bidding</h4>
                                                <p>Bid until you win</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-file"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Low Entering Fees</h4>
                                                <p>Only MYR5.00 per session</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-bell-o"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Easy To Bid</h4>
                                                <p>Bid among the best and no joy bidders</p>
                                            </div>
                                        </div>

                                    </div>
                                </div>



                            </div><!--/.container-->
                        </section><!--/#portfolio-->
                        
                        <section id="cta2">
                            <div class="container">
                                <div class="text-center">
                                    <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
                                        <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms"><span>GO </span>FOR DINAR AND DIRHAM</h2>
                                        <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">Abu Bakar ibn Abi Maryam reported that he heard the Messenger of Allah, may Allah bless him and grant him peace, say: "A time is certainly coming over mankind in which there will be nothing [left] which will be of use save a dinar and a dirham." (The Musnad of Imam Ahmad ibn Hanbal)</p>
                                        <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms"><a class="button" href="<?php echo site_url('login/getstarted'); ?>">Join Us Now</a></p>
                                        <img class="img-responsive wow fadeIn" src="<?php echo base_url(); ?>assets/imagess/cta2/cta9-img.png" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
                                        </div>
                                        </div>
                        </section>
                        
                        <section id="exchange">
                            <div class="container">
                                <div class="section-header">
                                    <BR><BR><BR><BR>
                                    <h2 class="section-title text-center wow fadeInDown">Gold Exchange Campaign</h2>
                                    <p class="text-center wow fadeInDown">Hurry up and exchange your gold with us!</p>
                                </div>

                                <div class="row">

                                    <div class="col-sm-6">
                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-shopping-cart"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Low Exchange Fee</h4>
                                                <p>Just RM 15 / gram </p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-coffee"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Full Enjoyment</h4>
                                                <p>Enjoy 100% DinarPal benefit</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-truck"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">We Accept All Brand</h4>
                                                <p>All item are been appreciate by DinarPal</p>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-sm-6 wow fadeInLeft">
                                        <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagess/exchange1.jpg" alt="">
                                    </div>


                                </div>
                                
                                
                               
                                <br>
                            </div><!--/.container-->
                        </section><!--/#portfolio-->
                        
                        
                        <section id="cta2">
                            <div class="container">
                                <div class="text-center">
                                    <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms"><span>GOLD</span> IS DINAR AND DIRHAM IS SILVER</h2>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">In times of crisis, gold is the safest investment that also has the greatest potential to increase your wealth</p>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms"><a class="button" href="<?php echo site_url('login/getstarted'); ?>">Join Us Now</a></p>
                                    <img class="img-responsive wow fadeIn" src="<?php echo base_url(); ?>assets/imagess/cta2/cta8-img.png" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
                                </div>
                                <!--
                        <h2>Saving, transfering and monetizing your dinar & dirham .</h2>
                        <p>Feel the excitement of DinarPal gold and silver by 
                            purchasing 0.5 gram of 24K purity.&nbsp;
                        </p>-->
                            </div>
                        </section>                        
                        
                        <section id="gac">
                            <div class="container">
                                <div class="section-header">
                                    <BR><BR><BR><BR>
                                    <h2 class="section-title text-center wow fadeInDown">Gold Affordable Campaign (GAC)</h2>
                                    <p class="text-center wow fadeInDown">Anyone can have their gold now</p>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6 wow fadeInLeft">
                                        <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagess/gac.png" alt="">
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-gavel"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Affordable</h4>
                                                <p>Just RM 30 / 0.1 gram</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-exchange"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Transferable</h4>
                                                <p>With DinarPal you can send your gold to anyone you like</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-bell-o"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Redeemable</h4>
                                                <p>Can redeem at anytime</p>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div><!--/.container-->
                        </section><!--/#portfolio-->
                        
                        <section id="cta2">
                            <div class="container">
                                <div class="text-center">
                                    <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms"><span>GOLD</span> CANNOT BE INFLATED BY PRINTING MORE OF IT</h2>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">They are used to buy and sell since they are a legitimate medium of exchange</p>
                                    <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms"><a class="button" href="<?php echo site_url('login/getstarted'); ?>">Join Us Now</a></p>
                                    <img class="img-responsive wow fadeIn" src="<?php echo base_url(); ?>assets/imagess/cta2/cta5-img.png" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
                                </div>
                            </div>
                        </section>
                        
                        <section id="ourgold">
                            <div class="container">
                                <div class="section-header">
                                    <BR><BR><BR><BR>
                                    <h2 class="section-title text-center wow fadeInDown">DinarPal Physical Gold & Silver</h2>
                                    <p class="text-center wow fadeInDown">Lets buy our product</p>
                                </div>

                                <div class="row">

                                    <div class="col-sm-6">
                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-shopping-cart"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Competative Price</h4>
                                                <p>Affordable price</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-credit-card"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Buy Back</h4>
                                                <p>Spread up to 10%</p>
                                            </div>
                                        </div>

                                        <div class="media service-box wow fadeInRight">
                                            <div class="pull-left">
                                                <i class="fa fa-exchange"></i>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Ar Rahnu Able</h4>
                                                <p>Ar Rahnu accepted</p>
                                            </div>
                                        </div>
                                    </div>

                                    
                                    <div class="col-sm-6 wow fadeInLeft">
                                        <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagess/pic.jpg" style="width: 400px;" alt="">
                                    </div>
                                    

                                </div>



                                <br>
                            </div><!--/.container-->
                        </section><!--/#portfolio-->
                        
                        
                       
                       
                        <section id="get-in-touch">
                            <div class="container">
                                <div class="section-header">
                                    <h2 class="section-title text-center wow fadeInDown">Ready to 
                                        serve you</h2>
                                    <center><img class="text-center wow fadeInDown" src="<?php echo base_url(); ?>assets/imagess/whatsapp-inc.png" width="100px" height="100px" alt="" data-wow-duration="500ms" data-wow-delay="500ms"></center>
                                    <p class="text-center wow fadeInDown">WhatsApp us now at +6012-222 8069 </p>
<!--                                    <p align="center">OR</p>
                                    <p align="center">
                                        <a target="_blank" href="<?= site_url('login/support_system'); ?>" style="color:white;">Chat With Us</a></p>-->
                                </div>
                            </div>
                        </section><!--/#get-in-touch-->
                        
                        

                        <section id="contact">
                            <div id="google-map" style="height:650px" data-latitude="2.268099" data-longitude="102.2915632"></div>
                            <div class="container-wrapper">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-sm-4 col-sm-offset-8">
                                            <div class="contact-form">
                                                <h3>DinarPal International Outlet</h3>

                                                <address>
                                                    <strong>Address</strong><br> 
                                                    Suite 15 MITC<br>
                                                    Commercial Street,<br>
                                                    75450 Ayer Keroh Melaka <br>
                                                    <abbr title="Phone">P:</abbr> +06-2318775
                                                </address>

                                                <form id="main-contact-form" name="contact-form" method="post" action="#">
                                                    <div class="form-group">
                                                        <input type="text" name="name" class="form-control" placeholder="Name" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="email" name="email" class="form-control" placeholder="Email" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" name="subject" class="form-control" placeholder="Subject" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <textarea name="message" class="form-control" rows="8" placeholder="Message" required></textarea>
                                                    </div>
                                                    <button type="submit" class="button blue-button">Send Message</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section><!--/#bottom-->



                        <script src="<?php echo base_url(); ?>assets/jss/jquery.js"></script>
                        <script src="<?php echo base_url(); ?>assets/jss/bootstrap.min.js"></script>
                        <script src="https://maps.google.com/maps/api/js?sensor=true"></script>
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

                        <a href="#" class="scrollup"></a>
                        
                <!--    <a class="scrollup2" href="<?= site_url('login/support_system') ?>" style="text-decoration: none"></a> -->
                        
                        <style>
                            .hahaf {
                                position: fixed;
                                top: 0%;
                                right: 0;
                                left: 0;
                                z-index: 1030;
                                /*background-color:#252e33;*/
                                width: 100px;
                                height: 100px;
                            }
                        </style>
                        <!--
                        <div class="hahaf img-circle">
                            <a target="_blank" href="<?= site_url('login/support_system') ?>">
                                <img src="<?php echo base_url(); ?>assets/imagess/slider/skm2.png" style="border-radius: 50%; border-style: solid; border-width: 4px; width: 250px; height: 250px; margin-top: -90px; margin-left: -600px; margin-bottom: 5px;" />
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
                        
                        <!--                        
                        <script>
                            var audio = new Audio(); 
                            audio.src ='http://translate.google.com/translate_tts?ie=utf-8&tl=en&q=Hello%20World.&client=tw-ob'; 
                            audio.play();
                        </script>-->