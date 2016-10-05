<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>DinarPal</title>
<link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>images/favicon.ico">
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

<header id="header">
       <!-- <nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner"> -->
       <nav id="nb2sb-nav" class="navbar navbar-default navbar-fixed-top">
           <div class="container">
                <div class="navbar-header" >
                  <a class="navbar-brand" href="<?php echo site_url('version3') ?>"> <img src="<?php echo base_url();?>assets/imagess/DP-Logo-small.png" width="106" height="29" alt="logo" style="margin-top:-6px;"></a>
                  
                  <!-- icon/button -->
                  <button id="nb2sb-btn" type="button" class="navbar-toggle" data-toggle="collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span> 
                  </button>
                </div>
                
                <!-- content -->
                
                <div id="nb2sb-content" class="collapse navbar-collapse navbar-right">
                  <ul class="nav navbar-nav" style="margin-top:5px;" >
                  
                       <li class="scroll active"><a href="<?php echo site_url('version3') ?>">Home</a></li>
                        <li class="scroll"><a href="http://dinarpal.coop" style="text-decoration: none" target="_blank">About</a></li>
                         <li class="scroll"><a href="<?php echo site_url('version3/supports') ?>">Supports</a></li>
                        <li class="scroll"><a href="<?php echo site_url('version3/compliances') ?>">Compliances</a></li>
                        <li class="scroll"><a href="<?php echo site_url('version3/awards') ?>">Awards</a></li>
                        <li class="scroll"><a href="<?php echo site_url('version3/ip') ?>">IP</a></li>
                        <!--<li class="scroll"><a href="<?php echo site_url('version3/goldPrice') ?>">Gold Price</a></li>
                        <li class="scroll"><a href="<?php echo site_url('version3/goldexchange') ?>">Gold Exchange</a></li>-->
                        <li class="scroll"><a href="<?php echo site_url('version3/investors') ?>">Investors</a></li>
                       <li class="scroll"><a href="<?= site_url('login');?>"><input type="submit" class="button" value="Log In" style="height:30px;line-height:5px; margin-top:-6px;"></a></li>
                        <li class="scroll"><a href="<?= site_url('login/getstarted');?>"><input type="submit" class="button blue-button" value="Create Account" style="height:30px;line-height:5px;margin-top:-6px;"></a></li> 
                  </ul>
                 </div>
            </div>
        </nav><!--/nav-->
    </header><!--/header-->
    
    <style>
        
        .buttonx {
            width: 250px;
            height: 50px;
            font-family: Ubuntu;
            border-radius: 10px;
        }    
        
        
    .fees-container {
        padding-top: 60px;
        padding-bottom: 60px;
    }

    .fees-container ._wrapper,
    .fees-container .cross-promotion-cta__wrapper,
    .fees-container .features-hero__wrapper,
    .fees-container .features-page__wrapper,
    .fees-container .features-page__wrapper--no-vertical-align,
    .fees-container .features-page__wrapper--row-reverse {
        max-width: 75em;
        margin-left: auto;
        margin-right: auto;
    }

    .fees-container ._wrapper::after,
    .fees-container .cross-promotion-cta__wrapper::after,
    .fees-container .features-hero__wrapper::after,
    .fees-container .features-page__wrapper--no-vertical-align::after,
    .fees-container .features-page__wrapper--row-reverse::after,
    .fees-container .features-page__wrapper::after {
        clear: both;
        content: "";
        display: table;
    }

    .fees-container ._wrapper .col,
    .fees-container .cross-promotion-cta__wrapper .col,
    .fees-container .features-hero__wrapper .col,
    .fees-container .features-page__wrapper .col,
    .fees-container .features-page__wrapper--no-vertical-align .col,
    .fees-container .features-page__wrapper--row-reverse .col {
        float: left;
        display: block;
        margin-right: 2.35765%;
        width: 31.76157%;
    }

    .fees-container ._wrapper .col:last-child,
    .fees-container .cross-promotion-cta__wrapper .col:last-child,
    .fees-container .features-hero__wrapper .col:last-child,
    .fees-container .features-page__wrapper .col:last-child,
    .fees-container .features-page__wrapper--no-vertical-align .col:last-child,
    .fees-container .features-page__wrapper--row-reverse .col:last-child {
        margin-right: 0;
    }

    .fees-container ._wrapper .col.buying-gold .item:first-of-type,
    .fees-container .cross-promotion-cta__wrapper .col.buying-gold .item:first-of-type,
    .fees-container .features-hero__wrapper .col.buying-gold .item:first-of-type,
    .fees-container .features-page__wrapper .col.buying-gold .item:first-of-type,
    .fees-container .features-page__wrapper--no-vertical-align .col.buying-gold .item:first-of-type,
    .fees-container .features-page__wrapper--row-reverse .col.buying-gold .item:first-of-type {
        margin-top: 47px;
    }

    @media screen and (max-width:1000px) {
        .fees-container ._wrapper .col,
        .fees-container .cross-promotion-cta__wrapper .col,
        .fees-container .features-hero__wrapper .col,
        .fees-container .features-page__wrapper .col,
        .fees-container .features-page__wrapper--no-vertical-align .col,
        .fees-container .features-page__wrapper--row-reverse .col {
            float: left;
            display: block;
            margin-right: 2.35765%;
            width: 100%;
        }

        .fees-container ._wrapper .col:last-child,
        .fees-container .cross-promotion-cta__wrapper .col:last-child,
        .fees-container .features-hero__wrapper .col:last-child,
        .fees-container .features-page__wrapper .col:last-child,
        .fees-container .features-page__wrapper--no-vertical-align .col:last-child,
        .fees-container .features-page__wrapper--row-reverse .col:last-child {
            margin-right: 0;
        }
    }

    .fees-container .fees-box {
        height: 465px;
    }

    .fees-container .fees-box>header>.superscript {
        vertical-align: text-top;
        font-size: .625rem;
    }

    .fees-container .fees-box.small {
        height: 250px;
    }

    .fees-container .fees-box.paying-with-gold {
        height: 195px;
    }

    .fees-container .fees-box .item {
        text-align: center;
        overflow: hidden;
        padding-bottom: 20px;
        border-bottom: 1px solid #d8e1e6;
    }

    .fees-container .fees-box .item span,
    .fees-container .fees-box .item strong {
        display: block;
        margin-bottom: 20px;
    }

    .fees-container .fees-box .item span {
        color: #687b86;
        font-size: 1.125rem;
    }

    .fees-container .fees-box .item strong {
        color: #252e33;
        font-size: 3.75rem;
        font-weight: 200;
    }

    .fees-container .fees-box .item:last-of-type {
        border-bottom: none;
        margin-top: 28px;
    }

    .fees-container .fees-box .item:last-of-type>span:last-of-type {
        margin-bottom: 0;
    }

    .fees-container .fees-box .sub-item {
        float: left;
        display: block;
        margin-right: 2.35765%;
        width: 48.82117%;
    }

    .fees-container .fees-box .sub-item:last-child {
        margin-right: 0;
    }

    .fees-container .fees-box .sub-item span {
        font-size: .8125rem;
        line-height: 1.5;
    }

    .fees-container .fees-box .sub-item strong {
        font-size: 2.625rem;
    }

    .fees-container .fees-box li {
        margin-bottom: 20px;
        padding-bottom: 20px;
    }

    .fees-container .fees-box li:first-of-type {
        border-bottom: 1px solid #d8e1e6;
    }

    .fees-container .fees-box li:last-of-type {
        margin-bottom: 0;
    }

    .fees-container .fees-box li span {
        color: #687b86;
        font-size: .875rem;
    }

    .fees-container .fees-box li strong {
        color: #252e33;
        font-weight: 500;
        float: right;
    }

    .fees-container .fees-box li strong>span {
        vertical-align: text-top;
        font-size: .625rem;
    }

    @media screen and (max-width:900px) {
        .mobile-header {
            display: block;
        }
    }

    .mobile-header {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        width: 100%;
        background-image: -webkit-linear-gradient(#2c383d,#232c30);
        background-image: linear-gradient(#2c383d,#232c30);
        border-bottom: 1px solid #0e1316;
        box-shadow: 0 1px 3px 0 rgba(0,0,0,.2);
        z-index: 1335;
        max-height: 100%;
        overflow: auto;
        display: none;
    }

    .mobile-header__live-prices {
        display: -webkit-box;
        display: flex;
        -webkit-box-pack: center;
        justify-content: center;
        line-height: 40px;
        padding: 0 15px;
        max-height: 0;
        opacity: 0;
        visibility: hidden;
        -webkit-transition: max-height .1s .3s,opacity .1s .3s,visibility 0s 1s;
        transition: max-height .1s .3s,opacity .1s .3s,visibility 0s 1s;
    }


    .mobile-header_open .mobile-header__live-prices {
        max-height: 80px;
        visibility: visible;
        opacity: 1;
        -webkit-transition: max-height .1s,opacity .1s,visibility 0s 0s;
        transition: max-height .1s,opacity .1s,visibility 0s 0s;
    }

    .mobile-header__live-prices-value {
        color: #fff;
        font-size: .875rem;
    }

   .dropdown-menu > li.kopie > a {
       padding-left:5px;
   }

   .dropdown-submenu {
       position:relative;
   }
   .dropdown-submenu>.dropdown-menu {
       top:0;
       left:100%;
       margin-top:-6px;
       margin-left:-1px;
       -webkit-border-radius:0 6px 6px 6px;
       -moz-border-radius:0 6px 6px 6px;
       border-radius:0 6px 6px 6px;
   }

   .dropdown-submenu > a:after {
       border-color: transparent transparent transparent #333;
       border-style: solid;
       border-width: 5px 0 5px 5px;
       content: " ";
       display: block;
       float: right;  
       height: 0;     
       margin-right: -10px;
       margin-top: 5px;
       width: 0;
   }

   .dropdown-submenu:hover>a:after {
       border-left-color:#555;
   }

   .dropdown-menu > li > a:hover, .dropdown-menu > .active > a:hover {
       text-decoration: underline;
   }  

   @media (max-width: 767px) {

       .navbar-nav  {
           display: inline;
       }
       .navbar-default .navbar-brand {
           display: inline;
       }
       .navbar-default .navbar-toggle .icon-bar {
           background-color: #fff;
       }
       .navbar-default .navbar-nav .dropdown-menu > li > a {
           color: red;
           background-color: #ccc;
           border-radius: 4px;
           margin-top: 2px;   
       }
       .navbar-default .navbar-nav .open .dropdown-menu > li > a {
           color: #333;
       }
       .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
       .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
           background-color: #ccc;
       }

       .navbar-nav .open .dropdown-menu {
           border-bottom: 1px solid white; 
           border-radius: 0;
       }
       .dropdown-menu {
           padding-left: 10px;
       }
       .dropdown-menu .dropdown-menu {
           padding-left: 20px;
       }
       .dropdown-menu .dropdown-menu .dropdown-menu {
           padding-left: 30px;
       }
       li.dropdown.open {
           border: 0px solid red;
       }

   }

   @media (min-width: 768px) {
       ul.nav li:hover > ul.dropdown-menu {
           display: block;
       }
       #navbar {
           text-align: center;
       }
   }  

</style>
