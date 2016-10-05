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
        

<section id="partners">
        <div class="container">
            <div class="section-header">
                <BR><BR>
                <h2 class="section-title text-center wow fadeInDown">Gold Zakat Calculator</h2>
                <p class="text-center wow fadeInDown">Hurry up and pay your zakat!!</p>
            </div>
      
        <div class="row">

            <div class="col-md-10 col-md-offset-1 ">
            	<div class="panel panel-default">

                    <div class="panel-body">
                        <form name="frmZakatEmas" id="frmZakatEmas" data-fv-addons="mandatoryIcon" data-fv-addons-mandatoryicon-icon="glyphicon glyphicon-asterisk" data-fv-framework="bootstrap" data-fv-icon-valid="glyphicon glyphicon-ok" data-fv-icon-invalid="glyphicon glyphicon-remove" data-fv-icon-validating="glyphicon glyphicon-refresh" class="form-horizontal fv-form fv-form-bootstrap" action="/payment/confirm" method="post" novalidate="novalidate"><button type="submit" class="fv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                            <input type="hidden" name="_token" value="c2bCPPUBKu669Yys1ohwDXO3gAqZJaZ9vHavGwzn">

                            <input type="hidden" name="jenis_zakat" value="EMAS">
                            <fieldset id="fldParentItem">
                                <!--
                                <div class="help-block">
                                    <strong>** Manual Pengiraan Zakat Emas<a href="../pdf/PENGIRAAN ZAKAT EMAS.pdf" target="_blank"> Klik di sini  </a></strong>
                                    <br>
                                    <br>
                                </div>
                                -->
                                <legend>
                                    <strong>Calculate your zakat</strong>

                                </legend>

                                <div class="table-responsive">
                                    <table class="table table-condensed" id="maintable">
                                        <thead>
                                            <tr>
                                                <th>No.</th>
                                                <th class="col-xs-2">Country</th>
                                                <th class="col-xs-2">State</th>
                                                <th class="col-xs-2">Years</th>
                                                <th class="col-xs-2">Price (RM)</th>
                                                <th class="col-lg-2">Weight (gram)</th>
                                                <th class="col-xs-2">Type</th>
                                                <th class="col-xs-2">Value (RM)</th>
                                                <th class="col-xs-2">Total Zakat (RM)</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td>
                                                    <input type="hidden" name=country" id="country">
                                                    <select class="form-control">
                                                         <option> Malaysia </option>
                                                        <option> Brunei </option>
                                                        <option> Indonesia </option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="hidden" name=state" id="state">
                                                    <select class="form-control">
                                                        <option> Melaka </option>
                                                        <option> Johor </option>
                                                        <option> Negeri Sembilan </option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="hidden" name="_tahunhaul[]" id="_tahunHaul">
                                                    <select class="form-control" id="tahunHaul">

                                                        <option value="145.12"> 2016 </option>
                                                        <option value="133.04"> 2015 </option>
                                                        <option value="143.8"> 2014 </option>
                                                        <option value="165.48"> 2013 </option>
                                                        <option value="154.27"> 2012 </option>
                                                        <option value="121.18"> 2011 </option>
                                                        <option value="109.41"> 2010 </option>
                                                        <option value="94.12"> 2009 </option>
                                                        <option value="84.71"> 2008 </option>
                                                        <option value="72.94"> 2007 </option>
                                                        <option value="54.12"> 2006 </option>
                                                        <option value="43.53"> 2005 </option>
                                                        <option value="35.29"> 2004 </option>
                                                        <option value="35.29"> 2003 </option>
                                                    </select>
                                                </td>

                                                <td>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">RM</span>
                                                        <input type="text" class="form-control" id="nisabAmount" name="nisabAmount[]" value="145.12" readonly="">
                                                    </div>
                                                </td>

                                                <td>
                                                    <div class="col-lg has-feedback has-success">

                                                        <input type="text" class="form-control" id="weight" name="weight[]" placeholder="0" data-fv-row=".col-lg" data-fv-notempty="true" data-fv-notempty-message="Sila masukkan jumlah berat emas" data-fv-numeric="true" data-fv-numeric-message="Sila masukkan nombor sahaja" data-fv-field="weight[]"><i class="form-control-feedback fv-icon-no-label glyphicon glyphicon-ok" data-fv-icon-for="weight[]" style="display: block;"></i>


                                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="weight[]" data-fv-result="VALID" style="display: none;">Please key in the gold weight</small>
                                                        <small class="help-block" data-fv-validator="numeric" data-fv-for="weight[]" data-fv-result="VALID" style="display: none;">Please key in number only</small>
                                                    </div>
                                                </td>

                                                <td>
                                                    <div class="col-xs has-feedback has-success">
                                                        <select class="form-control" id="usageType" name="usageType[]" data-fv-row=".col-xs" data-fv-notempty="true" data-fv-notempty-message="Sila pilih jenis kegunaan emas" data-fv-numeric="true" data-fv-numeric-message="Sila pilih simpan atau pakai sahaja" data-fv-field="usageType[]">
                                                            <option>Choose</option>
                                                            <option value="1">Wear</option>
                                                            <option value="2">Keep</option>
                                                        </select>
                                                        <i class="form-control-feedback fv-icon-no-label glyphicon glyphicon-ok" data-fv-icon-for="usageType[]" style="display: block;"></i>
                                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="usageType[]" data-fv-result="VALID" style="display: none;">Please choose type</small>
                                                        <small class="help-block" data-fv-validator="numeric" data-fv-for="usageType[]" data-fv-result="VALID" style="display: none;">Please choose wear or keep</small>
                                                    </div>
                                                </td>

                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="value" name="value[]" placeholder="0" readonly="" value="0">
                                                    </div>
                                                </td>

                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="total" name="total[]" placeholder="0" readonly="">
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="col-lg-12 input-group">
                                                        <a href="#" role="add">
                                                            <span class="glyphicon glyphicon-plus"></span>
                                                        </a>
                                                    </div>
                                                </td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>


                                <hr>

                                <div class="form-group">
                                    <label for="content" class="col-lg-2 control-label">Value of Uruf</label>
                                    <div class="col-lg-5">
                                        <div class="input-group">

                                            <span class="input-group-addon">Wear</span>
                                            <input type="text" class="form-control" readonly="" value="150gram">
                                            <span class="input-group-addon">Keep</span>
                                            <input type="text" class="form-control" readonly="" value="85gram">

                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="content" class="col-lg-2 control-label">Grand Total</label>
                                    <div class="col-lg-8 has-feedback">
                                        <div class="input-group">

                                            <span class="input-group-addon">RM</span>
                                            <input type="text" class="form-control" id="jumlah_pakai" name="jumlah_pakai" readonly="" placeholder="Wear">
                                            <span class="input-group-addon">+</span>
                                            <input type="text" class="form-control" id="jumlah_simpan" name="jumlah_simpan" readonly="" placeholder="Keep">
                                            <span class="input-group-addon">=</span>

                                            <input type="text" class="form-control" id="jumlah_semua" name="jumlah_semua" readonly="" data-fv-row=".col-lg-8" data-fv-notempty="true" data-fv-notempty-message="Jumlah keseluruhan kosong" placeholder="0" data-fv-field="jumlah_semua">
                                        </div><i class="form-control-feedback fv-icon-no-label fv-bootstrap-icon-input-group glyphicon glyphicon-asterisk" data-fv-icon-for="jumlah_semua" style=""></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="jumlah_semua" data-fv-result="NOT_VALIDATED" style="display: none;">Jumlah keseluruhan kosong</small></div>
                                </div>


                                <div class="form-group">
                                    <label for="content" class="col-lg-2 control-label">Total per Year</label>
                                    <div class="col-lg-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">RM</span>
                                            <input type="text" class="form-control" id="jumlah_kiraan_zakat_tahunan" name="jumlah_kiraan_zakat_tahunan" placeholder="0.0" readonly="">
                                        </div>
                                    </div>
                                    <span>2.5% per year's</span>
                                </div>

                                <div class="form-group">
                                    <label for="content" class="col-lg-2 control-label">Total per month</label>
                                    <div class="col-lg-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">RM</span>
                                            <input type="text" class="form-control" id="jumlah_kiraan_zakat_bulanan" name="jumlah_kiraan_zakat_bulanan" placeholder="0.0" readonly="">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-lg-10 col-lg-offset-2">
                                        <button type="submit" name="btnPay" class="button blue-button"">Pay</button>
                                        <button type="submit" name="btnSave" class="button">Keep</button>
                                        <button class="btn"><a href="/gold/calculate">Reset</a></button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
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