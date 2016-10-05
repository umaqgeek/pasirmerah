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
                <h2 class="section-title text-center wow fadeInDown">Live Precious Metal Prices</h2>

                <H4 class="text-left wow FadeInDown center-small-input"></H4>
                <p class="text-justify wow FadeInDown">
                    
                    
                    
                
                <div class="col-md-8 col-md-offset-2">
                    <p>Current gold price :-</p>
                    
                    <span id='paparCurrentGoldPrice'></span>
                    
                    <hr />
                </div>
                    
                <div class="col-md-12 col-md-offset-2">
                    
                    <br/>
                    
                    <p>DinarPal<strong> GOLD</strong> price :-</p>
                       <!-- <table style=" border-color: white;" border="1" cellpadding="0" cellspacing="0" width="70%">
                            <thead style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2;" >
                                <tr class="row-1 odd">
                                    <th class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">
                                        <div style="color: white">KARAT</div>
                                    </th>
                                    <th class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">
                                        <div style="color: white">TYPE</div>
                                    </th>
                                    <th class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">
                                        <div style="color: white">WE BUY</div>
                                    </th>
                                    <th class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">
                                        <div style="color: white">WE SELL</div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody style=" border-color: #B6BDD2;">
                                <tr class="row-2 even" >
                                    <td class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">24K</td>
                                    <td class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">999.9</td>
                                    <td class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM155.36</td>
                                    <td class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM186.80</td>
                                </tr>
                                <tr class="row-3 odd">
                                    <td class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">24K</td>
                                    <td class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">999</td>
                                    <td class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM153.74</td>
                                    <td class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM185.05</td>
                                </tr>
                                <tr class="row-4 even">
                                    <td class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">23K</td>
                                    <td class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">950</td>
                                    <td class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM146.44</td>
                                    <td class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM177.46</td>
                                </tr>
                                <tr class="row-5 odd">
                                    <td class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">22K</td>
                                    <td class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">916</td>
                                    <td class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM139.95</td>
                                    <td class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM171.11</td>
                                </tr>
                                <tr class="row-6 even">
                                    <td class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">22K</td>
                                    <td class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">22K</td>
                                    <td class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM133.47</td>
                                    <td class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM168.12</td>
                                </tr>
                                <tr class="row-7 odd">
                                    <td class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">21K</td>
                                    <td class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">875</td>
                                    <td class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM130.22</td>
                                    <td class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM163.45</td>
                                </tr>
                                <tr class="row-8 even">
                                    <td class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">20K</td>
                                    <td class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">835</td>
                                    <td class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM125.36</td>
                                    <td class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM155.98</td>
                                </tr>
                                <tr class="row-9 odd" >
                                    <td class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">19K</td>
                                    <td class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">Paun</td>
                                    <td class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM122.11</td>
                                    <td class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM149.44</td>
                                </tr>
                                <tr class="row-10 even" >
                                    <td class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">18K</td>
                                    <td class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">750</td>
                                    <td class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM110.76</td>
                                    <td class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM140.10</td>
                                </tr>
                                <tr class="row-11 odd">
                                    <td class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">14K</td>
                                    <td class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">585</td>
                                    <td class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM78.33</td>
                                    <td class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM109.28</td>
                                </tr>
                                <tr class="row-12 even">
                                    <td class="col-1 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">9K</td>
                                    <td class="col-2 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">375</td>
                                    <td class="col-3 odd" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM45.89</td>
                                    <td class="col-4 even" style="padding-left: 10px; padding-right: 10px; padding-bottom: 10px; padding-top: 10px; width: 10px; text-align: center;">RM70.05</td>
                                </tr>
                            </tbody>
                        </table> -->
                    
                    
                    <table style=" border-color: white;" border="1" cellpadding="0" cellspacing="0" width="70%">
                        <tr style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2;">
                            <td rowspan="2" style="color: white;text-align: center;">Item</td>
                            <td rowspan="2" style="color: white;text-align: center;">Purity</td>
                            <td colspan="2" style="color: white;text-align: center;">Ittihad Dealer</td>
                            <td colspan="2" style="color: white;text-align: center;">Caliph Dealer</td>
                            <td colspan="2" style="color: white;text-align: center;">Aldhahab Dealer</td>
                            <td colspan="2" style="color: white;text-align: center;">Alttajir Dealer</td>
                        </tr>
                        <tr style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2;">
                            <td style="color: white;text-align: center; width: 9%;">We Buy</td>
                            <td style="color: white;text-align: center; width: 9%;">We Sell</td>
                            <td style="color: white;text-align: center; width: 9%;">We Buy</td>
                            <td style="color: white;text-align: center; width: 9%;">We Sell</td>
                            <td style="color: white;text-align: center; width: 9%;">We Buy</td>
                            <td style="color: white;text-align: center; width: 9%;">We Sell</td>
                            <td style="color: white;text-align: center; width: 9%;">We Buy</td>
                            <td style="color: white;text-align: center; width: 9%;">We Sell</td>
                        </tr>
                        
                        <tr style=" border-color: #B6BDD2; text-align: center;">
                            <td>GAC 0.10 GRM</td>
                            <td>999.9</td>
                            <td><?=$currency; ?> 28.00</td>
                            <td><?=$currency; ?> 30.00</td>
                            <td><?=$currency; ?> 26.40</td>
                            <td><?=$currency; ?> 29.40</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr >
                        <tr style=" border-color: #B6BDD2; text-align: center;">
                            <td>Gold Coin 0.50 GRM</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr style=" border-color: #B6BDD2; text-align: center;">
                            <td>Gold Bar 1.00 GRM</td>
                            <td>999.9</td>
                            <td><?=$currency.' '.$a21; ?></td>
                            <td><?=$currency.' '.$a22; ?></td>
                            <td><?=$currency.' '.$a11; ?></td>
                            <td><?=$currency.' '.$a12; ?></td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                    </table>
                    
                    <br></br>
                    
                    <p>DinarPal <strong>SILVER</strong> price :-</p>
                    <table style=" border-color: white;" border="1" cellpadding="0" cellspacing="0" width="70%">
                        <tr style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2;">
                            <td rowspan="2" style="color: white;text-align: center;">Item</td>
                            <td rowspan="2" style="color: white;text-align: center;">Purity</td>
                            <td colspan="2" style="color: white;text-align: center;">Ittihad Dealer</td>
                            <td colspan="2" style="color: white;text-align: center;">Caliph Dealer</td>
                            <td colspan="2" style="color: white;text-align: center;">Aldhahab Dealer</td>
                            <td colspan="2" style="color: white;text-align: center;">Alttajir Dealer</td>
                        </tr>
                        <tr style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2;">
                            <td style="color: white;text-align: center; width: 9%;">We Buy</td>
                            <td style="color: white;text-align: center; width: 9%;">We Sell</td>
                            <td style="color: white;text-align: center; width: 9%;">We Buy</td>
                            <td style="color: white;text-align: center; width: 9%;">We Sell</td>
                            <td style="color: white;text-align: center; width: 9%;">We Buy</td>
                            <td style="color: white;text-align: center; width: 9%;">We Sell</td>
                            <td style="color: white;text-align: center; width: 9%;">We Buy</td>
                            <td style="color: white;text-align: center; width: 9%;">We Sell</td>
                        </tr>
                        <tr style=" border-color: #B6BDD2; text-align: center;">
                            <td>1 Dirham (2.75 GRM)</td>
                            <td>999.9</td>
                            <td><?=$currency.' '.$b21; ?></td>
                            <td><?=$currency.' '.$b22; ?></td>
                            <td><?=$currency.' '.$b11; ?></td>
                            <td><?=$currency.' '.$b12; ?></td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                    </table>
                    
                    <br></br>
                    
                    <p>Used gold price :-</p>
                    <p>* We don't accept Gold from unknown and illegal sources</p>
                    <table style=" border-color: white;" border="1" cellpadding="0" cellspacing="0" width="70%">
                        <tr style="">
                            
                            
                            
                        </tr>
                        <tr style=" border-color: #B6BDD2; text-align: center;">
                            <td style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2; color: white;text-align: center;" width="10%">Purity<br />(Carat)</td>
                            <?php
                            if (isset($purity) && !empty($purity)) {
                                foreach ($purity as $pu) {
                            ?>
                            <td width="7%" style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2; color: white;text-align: center;"><?=$pu->pu_desc; ?><br />(<?=$pu->pu_karat; ?>)</td>
                            <?php } } ?>
                            
                        </tr>
                        <tr style=" border-color: #B6BDD2; text-align: center;">
                            <td>Price</td>
                            <?php
                            if (isset($purity) && !empty($purity)) {
                                foreach ($purity as $pu) {
                                    $pu_id = $pu->pu_id;
                                    $it_id = 1; // 1=gold
                                    $anon_price = $this->m_item_type_purity->getPriceAnon($it_id, $pu_id);
                                    $anon_price = (is_numeric($anon_price)) ? (number_format($anon_price, 2)) : ("0.00");
                                    $currency = $this->my_func->getCurrency();
                            ?>
                            <td width="7%"><?=$currency; ?> <?=$anon_price; ?></td>
                            <?php } } ?>
                            
                        </tr>
                    </table>
                    
                    <br></br>

                    
                   
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
                
                $.post("<?=site_url('version3/getGoldPrice'); ?>", {}).done(function (data1) {
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