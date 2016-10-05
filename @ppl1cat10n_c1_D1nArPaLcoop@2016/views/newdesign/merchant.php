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


        <script type="text/javascript" src="<?=base_url(); ?>assets/js/jquery-1.11.3.js"></script>	

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
                        <a class="navbar-brand" href="<?php echo site_url('version3/goldPrice') ?>" style="font-size:0.70rem; color:#f6f6f6"><?=$this->my_func->getCurrency(); ?> <?=$this->my_func->getCurrentPrice(); ?> / grm</a>
                    </div>

                    <div class="collapse navbar-collapse navbar-right" id="navbar-collapse-1">
                        
                            <ul class="nav navbar-nav">
                                
                                <li ><a href="<?= site_url('version3'); ?>#portfolio" style="color: #f6f6f6;">Savings</a></li>
                                <li><a href="<?= site_url('version3'); ?>#services" style="color: #f6f6f6;">Payments</a></li>
                                <li><a href="<?= site_url('version3'); ?>#features" style="color: #f6f6f6;">Rahnu</a></li>
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

<!--        <script>
        $('#myTab a').click(function (e) {
	 e.preventDefault();
	 $(this).tab('show');
            });

        $(function () {
            $('#myTab a:last').tab('show');
            })
        </script>-->

<!--        <header id="header">
             <nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner"> 
            <nav id="nb2sb-nav" class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header" >
                        <a class="navbar-brand" href="<?php echo site_url('version3') ?>"> <img src="<?php echo base_url(); ?>assets/imagess/DP-Logo-small.png" width="106" height="29" alt="logo" style="margin-top:-6px;"></a>
                        <a class="navbar-brand"><img src="<?php echo base_url(); ?>assets/imagess/malaysian-flag.png" style="width:25px; height:15px; margin-bottom: -24px "></a>
                        <a class="navbar-brand" style="font-size:0.70rem; color:#f6f6f6"><?=$this->my_func->getCurrency(); ?> <?=$this->my_func->getCurrentPrice(); ?> / grm</a>

                         icon/button 
                        <button id="nb2sb-btn" type="button" class="navbar-toggle" data-toggle="collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span> 
                        </button>
                    </div>

                     content 





                    <div id="nb2sb-content" class="collapse navbar-collapse navbar-right">   
                        <ul class="nav navbar-nav" style="margin-top:5px;" >



                            <li class="scroll active"><a href="<?= site_url('version3'); ?>#home">Home</a></li>
                            <li class="scroll"><a href="<?= site_url('version3'); ?>#features">DinarPal</a></li>
                            <li class="scroll"><a href="<?= site_url('version3'); ?>#services">Send</a></li>
                            <li class="scroll"><a href="<?= site_url('version3'); ?>#portfolio">Keep</a></li>
                            <li class="scroll"><a href="<?= site_url('version3'); ?>#sell">Sell</a></li>
                            <li class="scroll"><a href="<?= site_url('version3'); ?>#buy">Buy</a></li>
                            <li class="scroll"><a href="<?= site_url('version3'); ?>#bid">Bid</a></li>
                            <li class="scroll"><a href="<?= site_url('version3/merchants'); ?>">Merchant</a></li>
                            <li class="scroll"><a href="<?= site_url('version3/shopping'); ?>">Shopping</a></li>
                            <li class="scroll"><a href="<?= site_url('login'); ?>"><input type="submit" class="button" value="Log In" style="height:30px;line-height:5px; margin-top:-6px;"></a></li>
                            <li class="scroll"><a href="<?= site_url('login/getstarted'); ?>"><input type="submit" class="button blue-button" value="Create Account" style="height:30px;line-height:5px;margin-top:-6px;"></a></li> 
                        </ul>
                    </div>
                    <div id="nb2sb-content" class="collapse navbar-collapse navbar-right">   
                        <ul class="nav navbar-nav" style="margin-top:5px;" >
                            
                            
                            
                            <li class="scroll active"><a href="<?=site_url('version3'); ?>#home">Home</a></li>
                            <li class="scroll"><a href="<?=site_url('version3'); ?>#features">DinarPal</a></li>
                            <li class="scroll"><a href="<?=site_url('version3'); ?>#portfolio">Savings</a></li>
                            <li class="scroll"><a href="<?=site_url('version3'); ?>#services">Payments</a></li>
                            <li style="cursor: pointer;">
                            <a type="button" class="dropdown-toggle" data-toggle="dropdown" style=" color: white;">
                                Souq Anshar <span class="caret" ></span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li class="scroll"><a href="<?=site_url('version3'); ?>#sell">Sell</a></li>
                                <li class="scroll"><a href="<?=site_url('version3'); ?>#buy">Buy</a></li>
                                <li class="scroll"><a href="<?=site_url('version3/merchants'); ?>">Merchant</a></li>
                            </ul>
                        </li>
                        <li style="cursor: pointer;">
                            <a type="button" class="dropdown-toggle" data-toggle="dropdown" style=" color: white;">
                                Rahnu <span class="caret" ></span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li class="scroll"><a href="<?=site_url('version3'); ?>#bid">Bid</a></li>
                            </ul>
                        </li>
                            <li class="scroll"><a href="<?= site_url('version3/shopping'); ?>">Shopping</a></li>
                            <li class="scroll"><a href="<?= site_url('login'); ?>"><input type="submit" class="button" value="Log In" style="height:30px;line-height:5px; margin-top:-6px;"></a></li>
                            <li class="scroll"><a href="<?= site_url('login/getstarted'); ?>"><input type="submit" class="button blue-button" value="Create Account" style="height:30px;line-height:5px;margin-top:-6px;"></a></li> 
                        </ul>
                    </div>
                </div>
            </nav>/nav
        </header>/header-->
        
        <style>
    summary.ordersummary {
        -moz-box-shadow: 0 0 5px rgba(0,0,0,0.5);
        -webkit-box-shadow: 0 0 5px rgba(0,0,0,0.5);
        box-shadow: 0 0 2px rgba(0,0,0,0.5);


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
        background-image: url("<?= base_url() . 'assets/images/approve.png' ?>");
        background-repeat: no-repeat;
        background-position: 95% 10%; 


    }



        </style>

        <div class="col-md-12">
            <center>
                <h2>
                    Souq Anshar
                </h2>
            </center>
        </div>
        
        <br /><br /><br />
        
        <style>
            .searchBox1 {
                /*background-color: rgba(100,100,100, 0.1);*/
                /*background-color: #fecc0e;*/
                background-color: rgba(254, 204, 14, 0.1);
                padding-top: 20px;
                padding-left: 20px;
                padding-right: 20px;
            }
        </style>
        <script>
            $(document).ready(function () {
                $("#tekanSearch").click(function() {
                    $(".searchBox1").toggle("slow");
                });
                $(".searchBox1").hide();
            });
        </script>
        
        <div class="col-md-12">
            <center>
                <button class="button" type="button" id="tekanSearch">Search</button>
                <span class="top-tooltip multiline-tooltip" data-tooltip="Click here to start search.">
                    <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                </span>
            </center>
        </div>
        
        <div class="col-md-8 col-md-offset-2 img-rounded searchBox1">
            <table class="" width="100%">
                <tr>
                    <td width="20%">Search by Item Name</td>
                    <td width="5%" align="center">:</td>
                    <td>
                        <input type="text" class="form-control" placeholder="Example: Tea Pot." name="item_name" id="item_name" />
                    </td>
                    <td align="center">
                        <input type="checkbox" value="1" name="is_item_name" id="is_item_name" />
                        &nbsp;
                        <span class="top-tooltip multiline-tooltip" data-tooltip="Tick to choose.">
                            <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                        </span>
                    </td>
                    <td rowspan="5" align="center">
                        <button class="green-button" id="submitSearch1">Search</button>
                        <br />
                        <button class="green-button" id="submitReset1">Reset</button>
                    </td>
                </tr>
                <tr>
                    <td width="20%">Search by Seller</td>
                    <td width="5%" align="center">:</td>
                    <td>
                        <input type="text" class="form-control" placeholder="Example: umaq." name="username1" id="username1" />
                    </td>
                    <td align="center">
                        <input type="checkbox" value="1" name="is_username1" id="is_username1" />
                        &nbsp;
                        <span class="top-tooltip multiline-tooltip" data-tooltip="Tick to choose.">
                            <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td width="20%">Search by Price in <?=$this->my_func->getCurrency(); ?></td>
                    <td width="5%" align="center">:</td>
                    <td>
                        <table class="table">
                            <tr>
                                <td>From</td>
                                <td>
                                    <input type="text" class="form-control" placeholder="Example: 10" name="pricemyr_low" id="pricemyr_low" />
                                </td>
                                <td>To</td>
                                <td>
                                    <input type="text" class="form-control" placeholder="Example: 5000" name="pricemyr_high" id="pricemyr_high" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td align="center">
                        <input type="checkbox" value="1" name="is_pricemyr" id="is_pricemyr" />
                        &nbsp;
                        <span class="top-tooltip multiline-tooltip" data-tooltip="Tick to choose.">
                            <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td width="20%">Search by Price in Gold GRM</td>
                    <td width="5%" align="center">:</td>
                    <td>
                        <table class="table">
                            <tr>
                                <td>From</td>
                                <td>
                                    <input type="text" class="form-control" placeholder="Example: 0.1" name="pricegold_low" id="pricegold_low" />
                                </td>
                                <td>To</td>
                                <td>
                                    <input type="text" class="form-control" placeholder="Example: 100" name="pricegold_high" id="pricegold_high" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td align="center">
                        <input type="checkbox" value="1" name="is_pricegold" id="is_pricegold" />
                        &nbsp;
                        <span class="top-tooltip multiline-tooltip" data-tooltip="Tick to choose.">
                            <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td width="20%">Search by Price in Silver GRM</td>
                    <td width="5%" align="center">:</td>
                    <td>
                        <table class="table">
                            <tr>
                                <td>From</td>
                                <td>
                                    <input type="text" class="form-control" placeholder="Example: 0.1" name="pricesilver_low" id="pricesilver_low" />
                                </td>
                                <td>To</td>
                                <td>
                                    <input type="text" class="form-control" placeholder="Example: 100" name="pricesilver_high" id="pricesilver_high" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td align="center">
                        <input type="checkbox" value="1" name="is_pricesilver" id="is_pricesilver" />
                        &nbsp;
                        <span class="top-tooltip multiline-tooltip" data-tooltip="Tick to choose.">
                            <img src="<?= base_url() . 'assets/imagess/info.png' ?>" height='13' width='13'><br />
                        </span>
                    </td>
                </tr>
            </table>
        </div>
        
        <div class="col-md-8 col-md-offset-2">
            <hr />
        </div>
        
        <div class="row" style="margin-top: 5%; margin-left: 5%; margin-right: 5%;">
            <div class="col-md-12">
                
                <span id="paparMerchant"></span>
                
            </div>
        </div>
        
        <script type="text/javascript">
            
            $("#is_item_name").click(function () {
                var is = $(this).is(":checked");
                if (is) {
                    $("#item_name").attr("style", "background-color: rgba(0, 255, 0, 0.1);");
                } else {
                    $("#item_name").attr("style", "background-color: #fff;");
                }
            });
            
            $("#is_username1").click(function () {
                var is = $(this).is(":checked");
                if (is) {
                    $("#username1").attr("style", "background-color: rgba(0, 255, 0, 0.1);");
                } else {
                    $("#username1").attr("style", "background-color: #fff;");
                }
            });
            
            $("#is_pricemyr").click(function () {
                var is = $(this).is(":checked");
                if (is) {
                    $("#pricemyr_low").attr("style", "background-color: rgba(0, 255, 0, 0.1);");
                    $("#pricemyr_high").attr("style", "background-color: rgba(0, 255, 0, 0.1);");
                } else {
                    $("#pricemyr_low").attr("style", "background-color: #fff;");
                    $("#pricemyr_high").attr("style", "background-color: #fff;");
                }
            });
            
            $("#is_pricegold").click(function () {
                var is = $(this).is(":checked");
                if (is) {
                    $("#pricegold_low").attr("style", "background-color: rgba(0, 255, 0, 0.1);");
                    $("#pricegold_high").attr("style", "background-color: rgba(0, 255, 0, 0.1);");
                } else {
                    $("#pricegold_low").attr("style", "background-color: #fff;");
                    $("#pricegold_high").attr("style", "background-color: #fff;");
                }
            });
            
            $("#is_pricesilver").click(function () {
                var is = $(this).is(":checked");
                if (is) {
                    $("#pricesilver_low").attr("style", "background-color: rgba(0, 255, 0, 0.1);");
                    $("#pricesilver_high").attr("style", "background-color: rgba(0, 255, 0, 0.1);");
                } else {
                    $("#pricesilver_low").attr("style", "background-color: #fff;");
                    $("#pricesilver_high").attr("style", "background-color: #fff;");
                }
            });
            
            function ulangMerchant() {
                $.post("<?=site_url('version3/ajaxMerchants'); ?>", {
                }).done(function (data1) {
                    $("#paparMerchant").html(data1)
                });
//                var ulang = setTimeout("ulangMerchant();", 5000);
            }
            $("#paparMerchant").html("<center>.. Connecting ..<br /><br /><span class=\"fa fa-spinner fa-spin fa-3x fa-fw\"></span></center>");
            ulangMerchant();
            
            $("#submitReset1").click(function () {
                location.href = '<?=site_url('version3/merchants'); ?>';
            });
            
            $("#submitSearch1").click(function () {
                var item_name = $("#item_name").val();
                var is_item_name = $("#is_item_name").is(":checked");
                var username1 = $("#username1").val();
                var is_username1 = $("#is_username1").is(":checked");
                var pricemyr_low = $("#pricemyr_low").val();
                var pricemyr_high = $("#pricemyr_high").val();
                var is_pricemyr = $("#is_pricemyr").is(":checked");
                var pricegold_low = $("#pricegold_low").val();
                var pricegold_high = $("#pricegold_high").val();
                var is_pricegold = $("#is_pricegold").is(":checked");
                var pricesilver_low = $("#pricesilver_low").val();
                var pricesilver_high = $("#pricesilver_high").val();
                var is_pricesilver = $("#is_pricesilver").is(":checked");
                
                $.post("<?=site_url('version3/ajaxMerchants'); ?>", {
                    item_name: item_name,
                    is_item_name: is_item_name,
                    username1: username1,
                    is_username1: is_username1,
                    pricemyr_low: pricemyr_low,
                    pricemyr_high: pricemyr_high,
                    is_pricemyr: is_pricemyr,
                    pricegold_low: pricegold_low,
                    pricegold_high: pricegold_high,
                    is_pricegold: is_pricegold,
                    pricesilver_low: pricesilver_low,
                    pricesilver_high: pricesilver_high,
                    is_pricesilver: is_pricesilver,
                    status: '1'
                }).done(function (data1) {
                    $("#paparMerchant").html(data1)
                });
                
                $("#paparMerchant").html("<center>.. Searching ..<br /><br /><span class=\"fa fa-spinner fa-spin fa-3x fa-fw\"></span></center>");
            });
        </script>


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
        top: 80%;
        right: 0;
        left: 0;
        z-index: 1030;
        /*background-color:#252e33;*/
        width: 100px;
        height: 100px;
        margin-bottom: 50%;
        margin-left: 90%;
    }
</style>

<!--<div class="hahaf img-circle">
    <a target="_blank" href="<?= site_url('login/support_system') ?>">
        <img src="<?php echo base_url(); ?>assets/images/call2.png" style="border-radius: 50%; border-style: solid; border-width: 4px; width: 100px; height: 100px;" />
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