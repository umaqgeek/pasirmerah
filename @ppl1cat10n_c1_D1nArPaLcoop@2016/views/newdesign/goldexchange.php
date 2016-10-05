<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>DinarPal</title>
	<link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url();?>images/favicon.ico">
	<!-- core CSS -->

    <link href="<?php echo base_url();?>assets/csss/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/animate.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/owl.carousel.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/owl.transitions.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/prettyPhoto.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/main.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/responsive.css" rel="stylesheet">
     <link href="<?php echo base_url().'assets/css/main.css' ?>" rel="stylesheet"> 
	
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]       
    <link rel="shortcut icon" href="assets/imagess/ico/favicon.ico">-->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo base_url();?>assets/imagess/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo base_url();?>assets/imagess/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo base_url();?>assets/imagess/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<?php echo base_url();?>assets/imagess/ico/apple-touch-icon-57-precomposed.png">
	
	
	

	
</head><!--/head-->

<body id="home" class="homepage">

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
                        <li class="scroll"><a href="<?php echo site_url('version3/goldexchange') ?>">Exchange</a></li>-->
                        <!--<li class="scroll"><a href="<?php echo site_url('version3/investors') ?>">Investors</a></li>-->
                       <li class="scroll"><a href="<?= site_url('login');?>"><input type="submit" class="button" value="Log In" style="height:30px;line-height:5px; margin-top:-6px;"></a></li>
                        <li class="scroll"><a href="<?= site_url('login/getstarted');?>"><input type="submit" class="button blue-button" value="Create Account" style="height:30px;line-height:5px;margin-top:-6px;"></a></li> 
                  </ul>
                 </div>
            </div>
        </nav><!--/nav-->
    </header><!--/header-->

	
    <section id="partners">
        <div class="container">
            <div class="section-header">
                <BR><BR>
                <h2 class="section-title text-center wow fadeInDown">Gold Exchange</h2>
                <p class="text-center wow fadeInDown">Hurry up and exchange your gold with us!</p>
                <!--<a href="<?php echo site_url('version3/zakat') ?>">zakat here!</a>-->
                <!--<a href="<?php echo site_url('version3/events') ?>">events here!</a>-->
            </div>

			
            <div class="row">
                <div class="col-sm-12 col-sm-offset-1 wow fadeInLeft">
                    <img class="img-responsive" src="<?php echo base_url();?>assets/imagess/b1.jpg"   alt="">
                </div>
					
                <div class="col-sm-12 col-sm-offset-1">
					
                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa fa-check"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">How to exchange your gold</h4>
                            <p class="text-justify wow FadeInDown">Bring your gold to our outlet, and exchange your gold with us only with RM15 per gram.</p>
                        </div>
                    </div>
					
                </div>
            </div>	
        </div><!--/.container-->
    </section><!--/#portfolio-->
	
<div class="divider"></div>

   
    <script src="<?php echo base_url();?>assets/jss/jquery.js"></script>
    <script src="<?php echo base_url();?>assets/jss/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="<?php echo base_url();?>assets/jss/owl.carousel.min.js"></script>
    <script src="<?php echo base_url();?>assets/jss/mousescroll.js"></script>
    <script src="<?php echo base_url();?>assets/jss/smoothscroll.js"></script>
    <script src="<?php echo base_url();?>assets/jss/jquery.prettyPhoto.js"></script>
    <script src="<?php echo base_url();?>assets/jss/jquery.isotope.min.js"></script>
    <script src="<?php echo base_url();?>assets/jss/jquery.inview.min.js"></script>
    <script src="<?php echo base_url();?>assets/jss/wow.min.js"></script>
    <script src="<?php echo base_url();?>assets/jss/main.js"></script>

     <script src="<?php echo base_url();?>assets/jss/jquery.min.js"></script>
        <script src="<?php echo base_url();?>assets/jss/jquery-ui.min.js"></script>
    
  
        
    
        <script src="<?php echo base_url();?>assets/jss/jquery.nb2sb.js"></script>
        
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