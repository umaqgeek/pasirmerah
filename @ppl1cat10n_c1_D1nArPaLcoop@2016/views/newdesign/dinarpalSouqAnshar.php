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

    <link href="<?php echo base_url();?>assets/csss/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/animate.min.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/owl.carousel.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/owl.transitions.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/prettyPhoto.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/main.css" rel="stylesheet">
    <link href="<?php echo base_url();?>assets/csss/responsive.css" rel="stylesheet">
     <link href="<?php echo base_url().'assets/css/main.css' ?>" rel="stylesheet"> 
     <link href="<?php echo base_url().'assets/css/jquery.dataTables.min.css' ?>" rel="stylesheet">
	
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
                <h2 class="section-title text-center wow fadeInDown">Gold &amp; Silver Mall</h2>

                <H4 class="text-left wow FadeInDown center-small-input"></H4>
                <p class="text-justify wow FadeInDown">
                
                <div class="col-md-12 col-md-offset-0">
                    <p>Current dinarpal gold price :-</p>
                    
                    <span id='paparCurrentGoldPrice'></span>
                    
                    <hr />
                </div>
                
                <br>
                
                
                <br>
                
            </div>
        </div>
    </section>
    
    
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
        <script src="<?php echo base_url().'assets/js/jquery.dataTables.min.js' ?>"></script>
        
        <script>
            $( document ).ready(function() {
                
                $.post("<?=site_url('version3/getGoldPrice/2'); ?>", {}).done(function (data1) {
                    $("#paparCurrentGoldPrice").html(data1);
                });
                $("#paparCurrentGoldPrice").html("<center>.. Connecting ..<br /><br /><span class=\"fa fa-spinner fa-spin fa-3x fa-fw\"></span></center>");
                
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