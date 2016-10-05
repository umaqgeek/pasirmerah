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
                        <li class="scroll"><a href="<?php echo site_url('version3/faq') ?>">FAQ</a></li>
                        <li class="scroll"><a href="<?php echo site_url('version3/fee') ?>">Fees</a></li>
                        <li class="scroll"><a href="<?php echo site_url('version3/security') ?>">Security</a></li>
                        <li class="scroll"><a href="<?php echo site_url('version3/privacy') ?>">Privacy</a></li>
                        <li class="scroll"><a href="<?php echo site_url('version3/condition') ?>">Terms & Conditions</a></li>
                        <li class="scroll"><a href="<?php echo site_url('version3/legal') ?>">Legal</a></li>
                        <li class="scroll"><a href="<?php echo site_url('version3/education') ?>">Education</a></li>
                        <li class="scroll"><a href="<?= site_url('login');?>"><input type="submit" class="button" value="Log In" style="height:30px;line-height:5px; margin-top:-6px;"></a></li>
                        <li class="scroll"><a href="<?= site_url('login/getstarted');?>"><input type="submit" class="button blue-button" value="Create Account" style="height:30px;line-height:5px;margin-top:-6px;"></a></li> 
                  </ul>
                 </div>
            </div>
        </nav><!--/nav-->
    </header><!--/header-->

    

   

    <section id="features">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">FAQ</h2>
                
			
			    
               

                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					
                        <br>
                        <H4 class="text-left wow FadeInDown">Basic Questions</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Who own this?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div>
                                    <div class="panel-body">
                                        <div class="text-justify wow FadeInDown">
                                            DinarPal is own by Al-DinarPal Group.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						
						
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                       What is DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal is banking-like platform for Dinar (gold coin) and Dirham (silver coin).
                                    </div>
                                </div>
                            </div>
                        </div>
						
						
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                       DinarPal is a bank?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No. DinarPal is not a bank.  DinarPal prefer to be Baitul-Mal in the near future.				

                                    </div>
                                </div>
                            </div>
                        </div>
						
						
			<div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFour">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                       What is the concept of DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Islamic Modern
                                    </div>
                                </div>
                            </div>
                        </div>
						
			<div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFive">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                       How DinarPal can benefit me?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal can protect your wealth by offering you
                                        to buy at least 0.5 gram of gold bar every month
                                        and keep it in DinarPal secure vault. 
                                        It also can offer you to start purchase things
                                        using dinar and dirham among members, remain your purchasing power and inflation-free. DinarPal also can offer you to get some short-term loan without interest.</div>
                                </div>
                            </div>
                        </div>
						
			<div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingSix">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                      Does Dinarpal trying to be an alternative currency?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No. We just offer an alternative for medium of exchange. Our main currency is still MYR.
                                    </div>
                                </div>
                            </div>
                        </div>
						
			<div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingSeven">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                       What can I use this online account for?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        <ul class="listStyleSquare">This online account can be used:
                                            <li>Saving, transferring and monetizing </li>
                                            <li>You can also transfer money and gram between account holders</li>
                                            <li>Online purchase & pawn</li>
                                        </ul>
                                        We got an approval from Cooperative Commission of Malaysia under the Ministry of Domestic Trade, Co-Operatives and Consumerism of Malaysia to operate Ar-Rahnu and Central Bank of Malaysia (BNM) representative also involved in the approval process

                                    </div>
                                </div>
                            </div>
                        </div>
						
						
						
						
						
								
			<div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingEight">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                                       What are the operational hours?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Your account is available 24 hours, 365 days a year.
                                    </div>
                                </div>
                            </div>
                        </div>
						
			<div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingNine">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
                                       Where is your office?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseNine" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingNine">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Suite 15 MITCCommercial Street,75450 Ayer Keroh Melaka.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading10">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse10" aria-expanded="false" aria-controls="collapse10">
                                        How about Central Bank of Malaysia approval?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse10" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading10">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        We got an approval from Cooperative Commission of Malaysia under the Ministry of Domestic Trade, 
                                        Co-Operatives and Consumerism of Malaysia to operate Ar-Rahnu and Central Bank of Malaysia (BNM) representative also involved in the approval process.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading11">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse11" aria-expanded="false" aria-controls="collapse11">
                                        How about collecting deposit from public?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading11">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                           We got an approval from Cooperative Commission of Malaysia to collect deposit from public and it already clearly spell out in our cooperative by-law.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading12">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse12" aria-expanded="false" aria-controls="collapse12">
                                         Who monitor your business operation on behalf of public?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse12" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading12">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                           We have internal audit, external audit and supervision by Cooperative Commission of Malaysia.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading13">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse13" aria-expanded="false" aria-controls="collapse13">
                                       How does DinarPal work?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse13" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading13">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal eases online selling arrangement and online transaction.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading14">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse14" aria-expanded="false" aria-controls="collapse14">
                                       What is the URL address for this service?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse14" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading14">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The address is www.dinarpal.com it is basically a place where you open an account and also check your account activity.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading15">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse15" aria-expanded="false" aria-controls="collapse15">
                                       How accuracy the contents this site?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse15" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading15">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Even though DinarPal make every effort to ensure the accuracy of contents of this site, including but not limited to illustrations, prices, product details, weights and technical data, DinarPal shall not be responsible for any errors or omissions contained herein.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading16">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse16" aria-expanded="false" aria-controls="collapse16">
                                       What is the difference between direct bank transfers (ACH/EFT) and bank wire transfer?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse16" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading16">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                       Direct bank transfers require you to consent to DinarPal linking to your account, 
                                       and allow you to perform deposits or redemptions from the
                                       comfort of your home. Direct transfers typically have lower 
                                       costs and faster transfer times. Bank wire transfers must be 
                                       initiated with your bank for deposit by providing them with the 
                                       required wiring instructions to send funds to DinarPal. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading17">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse17" aria-expanded="false" aria-controls="collapse17">
                                       What fees are associated with bank transfers?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse17" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading17">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The fee associated with a bank transfer is the standard 1% DinarPal transaction fee.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading18">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse18" aria-expanded="false" aria-controls="collapse18">
                                       How many type of gold at DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse18" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading18">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        For this time, DinarPal only have two types of gold 999 and 916.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading19">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse19" aria-expanded="false" aria-controls="collapse19">
                                       What is the different between buy DinarPal gold and others?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse19" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading19">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        But gold with DinarPal, it easy for you to use the DinarPal system which the others do not have system like DinarPal.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Rahnu</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading20">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse20" aria-expanded="false" aria-controls="collapse20">
                                       What is purchase and pawn Rahnu?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse20" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading20">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Purchase and pawn Rahnu is customer want to pawn their product after purchase from DinarPal.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading21">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse21" aria-expanded="false" aria-controls="collapse21">
                                       What is pawn and courier Rahnu?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse21" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading21">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Pawn and Courier Rahnu is customer pawn their item to DinarPal.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading22">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse22" aria-expanded="false" aria-controls="collapse22">
                                       Is there any addition fee with this Rahnu?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse22" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading22">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No. there is no addition fee for Rahnu.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
			<div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading23">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse23" aria-expanded="false" aria-controls="collapse23">
                                      Is there any limitation in sending payment?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse23" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading23">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No. There is the no limitation in sending payment. The maximum sending payment is MYR 10000 for each transaction. If you want transfer more than the limit, you can request to service@DinarPal.com. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading24">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse24" aria-expanded="false" aria-controls="collapse24">
                                       If I do not selected a Preferred Payment Method, what will happen?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse24" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading24">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        <ul class="listStyleSquare">
                                            If you have not selected a Preferred Payment Method, DinarPal will fund your transaction in this order 
                                            (subject to availability based on your Payment Methods):
                                            <li>Balance </li>
                                            <li>Instant transfer from your bank account</li>
                                            <li>Debit card</li>
                                            <li>Credit card</li>
                                            <li>e-Check</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading25">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse25" aria-expanded="false" aria-controls="collapse25">
                                       What happen if there is refused and refund payment?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse25" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading25">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        When you send payment, the recipient is not required to accept it. Any unclaimed, refunded or 
                                        denied payment will be returned to your balance or to original Payment Method. We will return any unclaimed payment to you within 30 days of the date you initiate the Payment.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading26">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse26" aria-expanded="false" aria-controls="collapse26">
                                       Is that true that I provide an authorization to merchant when I send a payment to certain merchant?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse26" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading26">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes you are providing an authorization to merchant to process your payment and complete the transaction.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading27">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse27" aria-expanded="false" aria-controls="collapse27">
                                       If I have balance in my account, what will happen to the balance?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse27" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading27">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        If you hold a balance, DinarPal will hold your funds in pooled accounts separate from its corporate funds, and it will not use yours for its operating expenses or for any other corporate purpose. DinarPal may receive interest on amounts that DinarPal holds on your behalf.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading28">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse28" aria-expanded="false" aria-controls="collapse28">
                                       Is there any limit to withdrawal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse28" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading28">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Depending on the degree to which you have verified your account, we may limit your ability to withdraw funds until you comply with our requests for information.
                                    </div>
                                </div>
                            </div>
                        </div>
                      
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading29">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse29" aria-expanded="false" aria-controls="collapse29">
                                       How much the registration fee for DinarPal account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse29" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading29">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Registration for DinarPal account is free.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading30">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse30" aria-expanded="false" aria-controls="collapse30">
                                       Is there any verification fee for DinarPal account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse30" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading30">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, there is the verification fee for verify the DinarPal account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading31">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse31" aria-expanded="false" aria-controls="collapse31">
                                       How much is the verification fee for DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse31" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading31">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The verification fee only MYR10 only.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading32">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse32" aria-expanded="false" aria-controls="collapse32">
                                       How much the verification fee per year?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse32" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading32">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The verification fee is only MYR 10 once in a lifetime and only in Malaysia.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading33">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse33" aria-expanded="false" aria-controls="collapse33">
                                       Why do you need my identification?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse33" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading33">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        We need your identification to make sure there is no fake account. We are committed to ensuring the safety of your personal data. To prevent unauthorized access and we have implemented prevention methods physical, electronic, and appropriate verification procedures to safeguard and ensure the security of personal data collected from you and / or from other sources.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading34">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse34" aria-expanded="false" aria-controls="collapse34">
                                       May I see an example of the Payment Form?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse34" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading34">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        -->
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading35">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse35" aria-expanded="false" aria-controls="collapse35">
                                       To send the payment in the Regular Transaction, need to send to receiver Username?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse35" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading35">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                       Yes. Send to the receiver Username.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading36">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse36" aria-expanded="false" aria-controls="collapse36">
                                       If I want to pay for the fee, then what is the type of send payment?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse36" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading36">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The type of fee is services payment.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading37">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse37" aria-expanded="false" aria-controls="collapse37">
                                       If I only have balance in E-Dinar account, can I pay with E-Dirham?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse37" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading37">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        For this time, if you have balance in E-Dinar you need to pay with your E-Dinar.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading38">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse38" aria-expanded="false" aria-controls="collapse38">
                                       How much fee for send gram and money among member?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse38" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading38">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Customer can send unlimited payment using gram or money among member with no cost. But the minimum transferring amount is MYR2.00 for money and 0.5 gram for gold and silver.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading39">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse39" aria-expanded="false" aria-controls="collapse39">
                                       What is the offer from DinarPal in saving at DinarPal vault?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse39" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading39">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal offers the safest, most cost effective and secure vault storage and silver vault storage services.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading40">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse40" aria-expanded="false" aria-controls="collapse40">
                                       What is the benefit from DinarPal vault?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse40" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading40">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The benefit from the DinarPal vault is it fully insured which every gram of gold and silver is insured through the YAPIEM Group of Insurance, low storage fees, the financial reporting and also the withdraw anytime at the store in Malaysia.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading41">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse41" aria-expanded="false" aria-controls="collapse41">
                                       Customer can sell anything with DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse41" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading41">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. Customer can sell anything with DinarPal.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading42">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse42" aria-expanded="false" aria-controls="collapse42">
                                      Can I search the transaction by category?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse42" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading42">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes you can search the transaction by category.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading43">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse43" aria-expanded="false" aria-controls="collapse43">
                                       How can I check my pending transaction for send payment?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse43" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading43">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can search your pending transaction by status pending in the transaction by type send payment.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading44">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse44" aria-expanded="false" aria-controls="collapse44">
                                       How much transaction charges?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse44" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading44">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        For deposit & withdrawal MYR fee, 1% (transaction amount) 
                                        For withdrawal gram fee, 1% (transaction amount) from current rate price.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading45">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse45" aria-expanded="false" aria-controls="collapse45">
                                       If my monthly transaction is large, can I get a lower charge rate?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse45" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading45">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No, this is because our transaction is the lowest compare to others.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading46">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse46" aria-expanded="false" aria-controls="collapse46">
                                       How many fees type?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse46" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading46">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can see at fee@DinarPal.com
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading47">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse47" aria-expanded="false" aria-controls="collapse47">
                                       Can I receive international payments?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse47" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading47">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        For this time, we accept MYR only. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading48">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse48" aria-expanded="false" aria-controls="collapse48">
                                       What bank account should I have?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse48" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading48">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can have any type of bank in Malaysia.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading49">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse49" aria-expanded="false" aria-controls="collapse49">
                                       How can I add bank account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse49" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading49">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        -->
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading50">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse50" aria-expanded="false" aria-controls="collapse50">
                                       What is Amanah Deal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse50" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading50">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Amanah Deal is where there is third party between the seller and buyer. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading51">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse51" aria-expanded="false" aria-controls="collapse51">
                                       How Amanah Deal works?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse51" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading51">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Amanah Deal will be judgement for the problem between seller and buyer. For example the product not arrived, 
                                        who responsible for it. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading52">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse52" aria-expanded="false" aria-controls="collapse52">
                                       What is the different between use the Send Payment with Regular Transaction and Amanah Deal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse52" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading52">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can use the send payment regular transaction for those you trusted. But with Amanah Deal we provide third party who can be trusted which is DinarPal system and judge for trusted transaction.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading53">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse53" aria-expanded="false" aria-controls="collapse53">
                                       Is there any fee for use the Amanah Deal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse53" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading53">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, there will be fee for use the Amanah Deal. That is MYR 15.00.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading54">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse54" aria-expanded="false" aria-controls="collapse54">
                                       Is the concept for Amanah Deal and Amanah Deal gram is same?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse54" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading54">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes the concept is same for being the third party and the problem between seller and buyer.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading55">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse55" aria-expanded="false" aria-controls="collapse55">
                                       If the buyer disputed the transaction, what will happen?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse55" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading55">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There is no transaction between buyer and seller.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Security</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading56">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse56" aria-expanded="false" aria-controls="collapse56">
                                       Is it safe to use DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse56" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading56">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. We are committed to ensuring the safety of your personal data. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading57">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse57" aria-expanded="false" aria-controls="collapse57">
                                       Is my financial information safe?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse57" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading57">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. We are committed to ensure that personal data that we collect from you are accurate,
                                        complete, not misleading and up to date. Please contact us if there are any changes to 
                                        your personal data or if you believe that the personal data we hold is inaccurate, 
                                        incomplete or not up to date.Under the Personal Data Protection Act 2010, you have the 
                                        right to access your personal data. If you want to access your personal data, 
                                        please contact us. Please note that we may charge a small fee depending on the 
                                        information requested. We may also take steps to verify your identity prior to fulfill 
                                        your request to access your personal data.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading58">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse58" aria-expanded="false" aria-controls="collapse58">
                                       How will I know if an unauthorized transaction was made using my DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse58" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading58">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                       You will be given the notification about every transaction and if there is unauthorized access to your account or transaction, you should immediately notify DinarPal. 
                                       You also can view all transaction in the Transaction.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading59">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse59" aria-expanded="false" aria-controls="collapse59">
                                       When using DinarPal, are the user’s details encrypted?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse59" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading59">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading60">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse60" aria-expanded="false" aria-controls="collapse60">
                                      Do I need to establish my own secure server facilities for my website?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse60" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading60">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading61">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse61" aria-expanded="false" aria-controls="collapse61">
                                      Can FTP secure the server?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse61" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading61">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, FTP is to the secure the server and DinarPal has their own FTP.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading62">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse62" aria-expanded="false" aria-controls="collapse62">
                                       What kind of security that DinarPal use for web?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse62" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading62">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal use the HTTPS (HTTP Secure) for protection of the private and integrity of an 
                                        exchanged data. HTTPS provide authentication of the website and associated web server 
                                        with which one is communicating,
                                        which protects against man-in-the-middle attacks.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading63">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse63" aria-expanded="false" aria-controls="collapse63">
                                       What is the guarantee that DinarPal is safe from hackers?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse63" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading63">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        We cannot guarantee that we are 100% safe from hackers, but, we have made security our biggest priority.
                                        Our systems are constantly maintained and secured from any threat that may come.
                                </div>
                            </div>
                        </div>
                            
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading64">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse64" aria-expanded="false" aria-controls="collapse64">
                                       Are the Apps secured?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse64" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading64">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, the DinarPal Mobile App for iOS and DinarPal Mobile App for Android follow the same privacy and security standards that 
                                        the DinarPal desktop platform adheres to. You can be confident that using the DinarPal Apps will be safe and secure, protecting 
                                        the confidentiality of your DinarPal account information and the integrity of all transactions using military grade encryption.
                                        We are committed to protecting the security of your account information when you transact online or through the mobile app.
                                    </div>
                                </div>
                            </div>
                        </div>
                            
                        <div class="panel panel-default">
                             <div class="panel-heading" role="tab" id="heading65">
                                <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse65" aria-expanded="false" aria-controls="collapse65">
                                            What are the safety characteristics of DinarPal?
                                        </a>
                                </h4>
                            </div>
                            <div id="collapse65" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading65">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        In sha Allah you will be safe with us. We provide the 24/7 security services with close monitoring and 
                                        every gram is fully insured. For the security of your information during transmission is ensured. 
                                        We guarantee secure data transmission by using Secure Sockets Layer (SSL short) protocol.
                                        With SSL, your personal information you enter on our Web site will be encrypted and can thus be read only by us. 
                                        The SSL encryption protocol has been established as the market standard for data over the Internet and is
                                        continuously being developed.
                                    </div>
                                </div>
                            </div>
                        </div>
                         
                        
                  
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading66">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse66" aria-expanded="false" aria-controls="collapse66">
                                       Can the DinarPal Mobile Apps access all of my phone contacts/etc?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse66" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading66">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No, the DinarPal Mobile Apps cannot access your phone contact or other.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading67">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse67" aria-expanded="false" aria-controls="collapse67">
                                       My phone has been lost or stolen. Is my information at risk?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse67" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading67">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        If your phone is lost or stolen, it is unlikely that that someone could access your 
                                        account information unless they know your DinarPal email and password. However, to be safe,
                                        please contact support@dinarpal.com as soon as possible.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Bid</H4>
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading68">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse68" aria-expanded="false" aria-controls="collapse68">
                                       Who can use the bid module?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse68" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading68">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        For those who want not plan to redeem their precious item, we help them to sell in our private auction section.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading69">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse69" aria-expanded="false" aria-controls="collapse69">
                                       What is the terms and conditions for bid?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse69" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading69">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There is no terms and conditions for being bidders.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading70">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse70" aria-expanded="false" aria-controls="collapse70">
                                        How much fee for bidding?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse70" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading70">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There is only MYR 5.00 per session.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading71">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse71" aria-expanded="false" aria-controls="collapse71">
                                      Is there any charge if won the bid?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse71" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading71">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There will be MYR 5.00 need to pay if won the bid with the price of item.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading72">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse72" aria-expanded="false" aria-controls="collapse72">
                                       Is there any limited in bidding?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse72" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading72">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There is no limit. You can bid until win.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading73">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse73" aria-expanded="false" aria-controls="collapse73">
                                       How can I be the bidders?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse73" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading73">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        When you register DinarPal account, you already be the bidders.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading74">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse74" aria-expanded="false" aria-controls="collapse74">
                                       What is the bidding board for?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse74" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading74">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The bidding board is for bidders bid the product.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading75">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse75" aria-expanded="false" aria-controls="collapse75">
                                       Can I know others bidders?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse75" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading75">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You only can see the highest bidders.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading76">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse76" aria-expanded="false" aria-controls="collapse76">
                                       Can I know how many bidders?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse76" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading76">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. There is the list how many bidders in the bidding board.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading77">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse77" aria-expanded="false" aria-controls="collapse77">
                                       If I won the bid, is there any fee that I should pay?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse77" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading77">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, there is fee after you win the bid.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading78">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse78" aria-expanded="false" aria-controls="collapse78">
                                       What is the bidding summary?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse78" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading78">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Bidding summary is the overview for all of account bid.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading79">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse79" aria-expanded="false" aria-controls="collapse79">
                                       How can I pay for the item after won the bidding?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse79" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading79">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can pay with DinarPal account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading80">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse80" aria-expanded="false" aria-controls="collapse80">
                                       If I do not have enough balance in DinarPal account, what should I do?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse80" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading80">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You should deposit to your DinarPal account and pay for the bid product.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Merchant FAQ</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading81">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse81" aria-expanded="false" aria-controls="collapse81">
                                       What is merchant?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse81" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading81">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Merchant is a business person who trades in commodities produced by other people in order to earn a profit.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading82">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse82" aria-expanded="false" aria-controls="collapse82">
                                       What is the benefit be a DinarPal merchant?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse82" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading82">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        <ul class="listStyleSquare">
                                            <li>Low Maintenance Fee</li>
                                            <li>Low Transaction Fee</li>
                                            <li>With only one integration required, you save time and costs.</li>
                                            <li>As the convenience of online shopping and online payment rapidly increases, so does the need for merchants to utilize a secure online payment gateway system for streamlined transactions.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading83">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse83" aria-expanded="false" aria-controls="collapse83">
                                        Can I choose how to pay?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse83" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading83">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes you can pay with MYR, with Dinar (gram) or the Dirham (gram). After read and accept the terms and condition, then you can submit.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading84">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse84" aria-expanded="false" aria-controls="collapse84">
                                       What are the requirements to become a DinarPal merchant?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse84" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading84">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There is no other requirement. Since you have DinarPal account, you already be a merchant.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading85">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse85" aria-expanded="false" aria-controls="collapse85">
                                       What are the documents required for application?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse85" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading85">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There is no document. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading86">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse86" aria-expanded="false" aria-controls="collapse86">
                                       Can I use any bank account to receive payment?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse86" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading86">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes any bank account in Malaysia.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading87">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse87" aria-expanded="false" aria-controls="collapse87">
                                       How customer can view my product in merchant?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse87" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading87">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        By click the product name, then this product detail will appear.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading88">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse88" aria-expanded="false" aria-controls="collapse88">
                                       Can merchant edit their product detail?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse88" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading88">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, can edit the product detail.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading89">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse89" aria-expanded="false" aria-controls="collapse89">
                                       What is the API Code in merchant for?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse89" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading89">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        ...........
                                    </div>
                                </div>
                            </div>
                        </div>
                        -->
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading90">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse90" aria-expanded="false" aria-controls="collapse90">
                                       Can I edit and delete a few transaction history?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse90" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading90">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No you cannot edit or delete the transaction history. You only can print the detail of the transaction.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading91">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse91" aria-expanded="false" aria-controls="collapse91">
                                       Can I add new product in merchant?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse91" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading91">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes you can add your new product in merchant by click the “add new product”.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading92">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse92" aria-expanded="false" aria-controls="collapse92">
                                       Can I sell any product as merchant in DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse92" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading92">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes you can sell any of your products with DinarPal.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Registration</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading93">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse93" aria-expanded="false" aria-controls="collapse93">
                                       How do I register for this service?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse93" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading93">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                      You can register via our website www.dinarpal.com. All personal information in the registration page should be valid, so that verification can be carried out. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading94">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse94" aria-expanded="false" aria-controls="collapse94">
                                       How to sign up to DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse94" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading94">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can sign up by entering your username and desired password on the DinarPal.com homepage.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading95">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse95" aria-expanded="false" aria-controls="collapse95">
                                       Who can register for DinarPal account?DinarPal accounts are free and can be opened by anyone, anywhere in just a few minutes! What documents do I need to register?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse95" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading95">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        All you need to have is a valid e-mail address, username, password and phone number.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading96">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse96" aria-expanded="false" aria-controls="collapse96">
                                       How much do I need to register as an account holder and are they any registration or annual fees?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse96" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading96">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        It is free to register and there is no registration or annual fees for account holders.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading97">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse97" aria-expanded="false" aria-controls="collapse97">
                                       How do I know my registration has been accepted?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse97" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading97">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        When you register, you receive an e-mail for activation link, click the activation link. Once you do that you will be directed to the login page of DinarPal and your registration has been accepted.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading98">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse98" aria-expanded="false" aria-controls="collapse98">
                                       How can I verify my account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse98" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading98">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You need to complete all the detail in your profile including the verification fee.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading99">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse99" aria-expanded="false" aria-controls="collapse99">
                                       Can I register multiple accounts?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse99" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading99">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes you can, but you need to have different valid e-mails and username.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading100">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse100" aria-expanded="false" aria-controls="collapse100">
                                       How can I create corporate account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse100" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading100">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        To create corporate account, visit DinarPal.com and select “Create Account” and choose “Corporate”.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading101">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse101" aria-expanded="false" aria-controls="collapse101">
                                       What is malaf?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse101" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading101">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Malaf is your account profile.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading102">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse102" aria-expanded="false" aria-controls="collapse102">
                                       When can I start using this service?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse102" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading102">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Once you register and verify the account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading103">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse103" aria-expanded="false" aria-controls="collapse103">
                                       Can I change username?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse103" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading103">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No, the username cannot be change.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading104">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse104" aria-expanded="false" aria-controls="collapse104">
                                       Can I change my password?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse104" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading104">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. You can change your password.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading105">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse105" aria-expanded="false" aria-controls="collapse105">
                                       How can I change my password?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse105" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading105">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        To change your password, you can go to profile and change password.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading106">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse106" aria-expanded="false" aria-controls="collapse106">
                                        Can I change my phone number?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse106" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading106">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, you can change your phone number.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading107">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse107" aria-expanded="false" aria-controls="collapse107">
                                       Can I have multiple numbers for contact?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse107" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading107">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        If you have different number of social profile, you can have multiple numbers.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading108">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse108" aria-expanded="false" aria-controls="collapse108">
                                       Can I have multiple e-mails?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse108" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading108">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can have multiple e-mails and you can add your e-mail at the E-Mail module
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading109">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse109" aria-expanded="false" aria-controls="collapse109">
                                       I can use debit or credit card?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse109" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading109">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, you can use the debit or credit card.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading110">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse110" aria-expanded="false" aria-controls="collapse110">
                                       Can I set up multiple bank accounts?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse110" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading110">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, you can set up multiple bank accounts.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading111">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse111" aria-expanded="false" aria-controls="collapse111">
                                       Can I set up whatever type of question for security?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse111" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading111">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, you can set up what is the question for your security question.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading112">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse112" aria-expanded="false" aria-controls="collapse112">
                                       What can I use the banner for?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse112" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading112">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can use the banner for promotion.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading113">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse113" aria-expanded="false" aria-controls="collapse113">
                                       Can I add another banner? 
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse113" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading113">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No, you cannot add another banner, but you can use the provided banner for your business.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading114">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse114" aria-expanded="false" aria-controls="collapse114">
                                       Can I download the material for the advertising and promotions?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse114" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading114">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, you can download the material.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading115">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse115" aria-expanded="false" aria-controls="collapse115">
                                       What is collateral Rate (%) in the calculator?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse115" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading115">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Collateral rate is the value of loan.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading116">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse116" aria-expanded="false" aria-controls="collapse116">
                                       How much the safe keeping fee?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse116" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading116">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The safe keeping fee with DinarPal is MYR 0.55.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading117">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse117" aria-expanded="false" aria-controls="collapse117">
                                       How long the keeping period?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse117" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading117">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                       Six month. You can select how long you want.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading118">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse118" aria-expanded="false" aria-controls="collapse118">
                                        How the Marhum values being calculate?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse118" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading118">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Marhum Value = Weight *Rate.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading119">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse119" aria-expanded="false" aria-controls="collapse119">
                                       How the safe keeping fee calculated?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse119" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading119">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Safe Keeping Fee = [Marhum*(Safe keeping fee rate/100)*(Total days/365)*12].
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading120">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse120" aria-expanded="false" aria-controls="collapse120">
                                       How can I find other DinarPal member?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse120" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading120">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                       You can find other DinarPal member in member search in profile.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading121">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse121" aria-expanded="false" aria-controls="collapse121">
                                       What is ittihad?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse121" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading121">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Ittihad is the affiliate.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading122">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse122" aria-expanded="false" aria-controls="collapse122">
                                       What is affiliate?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse122" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading122">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        “Affiliate” means DinarPal Holdings Inc. or a company that is a direct or indirect subsidiary of DinarPal Holdings Inc., or otherwise related to DinarPal through common ownership or control.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading123">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse123" aria-expanded="false" aria-controls="collapse123">
                                       How an ittihad function?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse123" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading123">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Ittihad is the DinarPal member who registered under your link.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading124">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse124" aria-expanded="false" aria-controls="collapse124">
                                       What is the benefit an ittihad?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse124" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading124">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Ittihad can give you the commissions.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading125">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse125" aria-expanded="false" aria-controls="collapse125">
                                       Ittihad follow the syariah mortgage principle?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse125" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading125">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading126">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse126" aria-expanded="false" aria-controls="collapse126">
                                       What is geneology?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse126" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading126">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Geneology is one level of commission. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading127">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse127" aria-expanded="false" aria-controls="collapse127">
                                       What is ittihad revenue?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse127" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading127">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Ittihad revenue is the commission that you will get.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading128">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse128" aria-expanded="false" aria-controls="collapse128">
                                       For the advertising and promotion, can I use the unique link to promote to my friend?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse128" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading128">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, you can use the unique link for promote to your friend and family.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading129">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse129" aria-expanded="false" aria-controls="collapse129">
                                       How can I use the unique link?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse129" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading129">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        To use the unique link, you just need to copy the unique link and promote to your friend’s.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading130">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse130" aria-expanded="false" aria-controls="collapse130">
                                       When can I use the unique link?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse130" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading130">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can use the unique link anytime, anywhere via mobile or your computer.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading131">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse131" aria-expanded="false" aria-controls="collapse131">
                                       What is mean by affiliate QR Code?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse131" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading131">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The affiliate QR code is the code that link to the DinarPal.com.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading132">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse132" aria-expanded="false" aria-controls="collapse132">
                                       What is the benefit for me use the unique link?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse132" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading132">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The benefit that you can get is the commissions for every transaction from people who register with your link.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Deposit</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading133">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse133" aria-expanded="false" aria-controls="collapse133">
                                       How do I deposit my money into DinarPal account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse133" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading133">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                       You can deposit money into Dinarpal account after login and then go to the deposit.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading134">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse134" aria-expanded="false" aria-controls="collapse134">
                                       Is there any service or transaction charges?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse134" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading134">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                       Yes, there is a service charge for transactions.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading135">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse135" aria-expanded="false" aria-controls="collapse135">
                                       How much can I deposit into my DinarPal account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse135" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading135">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can deposit how much you want into DinarPal account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading136">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse136" aria-expanded="false" aria-controls="collapse136">
                                       What is the minimum amount for deposit into DinarPal account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse136" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading136">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                       There is no minimum amount for deposit.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading137">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse137" aria-expanded="false" aria-controls="collapse137">
                                       What is the maximum amount for deposit into DinarPal account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse137" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading137">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There is no maximum amount for deposit. You can deposit how much you want.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading138">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse138" aria-expanded="false" aria-controls="collapse138">
                                       Is there any transfer charges between account holders?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse138" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading138">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No there is no fee for the transaction between account holders.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading139">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse139" aria-expanded="false" aria-controls="collapse139">
                                       How can I use the Cash Deposit Machine?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse139" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading139">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can refer to the instruction given.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading140">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse140" aria-expanded="false" aria-controls="collapse140">
                                       What is the function of notes in the Cash Deposit Machine?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse140" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading140">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        For noted an account holder.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading141">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse141" aria-expanded="false" aria-controls="collapse141">
                                       How can I use the Deposit Bank Transfer? 
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse141" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading141">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can follow the instruction in instruction in the Deposit Bank Transfer. There are three steps that you should follow.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading142">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse142" aria-expanded="false" aria-controls="collapse142">
                                       How can I use the Deposit VISA Debit?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse142" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading142">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        <ul class="listStyleSquare">The Step: 
                                            <li>Select the Deposit.</li>
                                            <li>Select the VISA Debit.</li>
                                            <li>Select the amount and enter the billing information.</li>
                                            <li>Click the “Process” button.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading143">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse143" aria-expanded="false" aria-controls="collapse143">
                                       How can I use the Deposit Credit Card?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse143" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading143">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        <ul class="listStyleSquare">The Step: 
                                            <li>Select the Deposit.</li>
                                            <li>Select the Credit Card.</li>
                                            <li>Select the amount and enter the billing information.</li>
                                            <li>Click the “Process” button.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading144">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse144" aria-expanded="false" aria-controls="collapse144">
                                       Can I deposit physical gold into my account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse144" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading144">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. You can deposit your physical gold into your DinarPal account by Keep module and go to the Courier & Keep button.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading145">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse145" aria-expanded="false" aria-controls="collapse145">
                                       Which one is better to use to Deposit?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse145" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading145">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can choose which want is the easier for you to deposit.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading146">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse146" aria-expanded="false" aria-controls="collapse146">
                                       How to buy gold?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse146" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading146">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can go to the Gold & Silver Souq in Sell-Buy module.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading147">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse147" aria-expanded="false" aria-controls="collapse147">
                                       How to make online payments?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse147" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading147">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can refer to the Terms and Conditions.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading148">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse148" aria-expanded="false" aria-controls="collapse148">
                                       What is the terms and condition to make online payments?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse148" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading148">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can refer to the Terms and Conditions.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading149">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse149" aria-expanded="false" aria-controls="collapse149">
                                       Can I make an order?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse149" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading149">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes you can make an order.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading150">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse150" aria-expanded="false" aria-controls="collapse150">
                                       How can I make an order?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse150" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading150">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        To make an order, log into your DinarPal Account with your user ID and password, and then click on the “Keep”. Click “Purchase & Keep” if you would like to buy the gold from DinarPal and keep in DinarPal vault; or click “Courier & Keep” if you would like keep the gold in DinarPal vault and send to DinarPal using courier services. Thereafter, you will receive order confirmation email after successful purchase. If you wish to sell to DinarPal other type of products not listed in the website, please contact us by clicking the link.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading151">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse151" aria-expanded="false" aria-controls="collapse151">
                                       How can I get the current and up-to-date the price of the Gold & Silver?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse151" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading151">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can get the latest price of Gold & Silver from the Home DinarPal website.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading152">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse152" aria-expanded="false" aria-controls="collapse152">
                                       What happen after I have made a payment?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse152" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading152">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                       You will receive a confirmation of your payment on your screen after you make the payment. You can print a receipt when your transaction has been completed (successful) for your own records.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading153">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse153" aria-expanded="false" aria-controls="collapse153">
                                       What happen if I do the overpayment?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse153" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading153">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        If you have any questions about the overpayment on your account and think you may be eligible for a refund, please contact the agency stating the proof of payment or reference number.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading154">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse154" aria-expanded="false" aria-controls="collapse154">
                                       Why you need to process our Personal Data?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse154" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading154">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can refer to the Privacy Policy.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading155">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse155" aria-expanded="false" aria-controls="collapse155">
                                       What type of the data protection that you provide?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse155" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading155">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        To ensuring the safety of your personal data from unauthorized access, we have implemented prevention method physical, electronic, and appropriate verification procedures to safeguard and ensure the security of personal data collected from you and / or from other sources.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading156">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse156" aria-expanded="false" aria-controls="collapse156">
                                       f there are significant changes to Privacy Notice, how would I know?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse156" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading156">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        We may update this Privacy Notice from time to time. If there are significant changes to the Privacy Notice, we will notify you by posting notice of such change on our website or send you a notification directly. Check back to the Privacy Notice from time to time so that you are always aware of how we protect your information.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading157">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse157" aria-expanded="false" aria-controls="collapse157">
                                       It is safe to courier my goods?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse157" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading157">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading158">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse158" aria-expanded="false" aria-controls="collapse158">
                                       Can I cancel my order?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse158" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading158">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. You can cancel your order by click the “Cancel” button for every module. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading159">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse159" aria-expanded="false" aria-controls="collapse159">
                                       How to become an agent?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse159" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading159">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The easiest way to be an agent is by use the ittihad module.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading160">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse160" aria-expanded="false" aria-controls="collapse160">
                                       How do I sell to DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse160" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading160">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can use the sell-buy board to give your information to DinarPal about your product.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading161">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse161" aria-expanded="false" aria-controls="collapse161">
                                       Can I sell other types of gold/silver to you?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse161" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading161">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can use the sell-buy board to give your information to DinarPal about your product. Then the further discussion, DinarPal will contact you.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading162">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse162" aria-expanded="false" aria-controls="collapse162">
                                       Can I sell my gold/silver before it is delivered to me?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse162" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading162">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Withdrawal</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading163">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse163" aria-expanded="false" aria-controls="collapse163">
                                       What is the maximum amount can be withdrawal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse163" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading163">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There is no limit to withdrawal. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading164">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse164" aria-expanded="false" aria-controls="collapse164">
                                       What is the minimum amount can be withdrawal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse164" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading164">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                         You can withdrawal until no balance in your account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading165">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse165" aria-expanded="false" aria-controls="collapse165">
                                      What is mean by Withdrawal with MYR? 
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse165" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading165">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                             Withdrawal with MYR is you can take out your money (MYR)
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading166">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse166" aria-expanded="false" aria-controls="collapse166">
                                       What is mean by Withdrawal Physical (gram)?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse166" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading166">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Withdrawal with Physical (gram) is you can take your gold or silver from outlet.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading167">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse167" aria-expanded="false" aria-controls="collapse167">
                                       What is mean by Withdrawal physical (gram) Transactions?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse167" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading167">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Withdrawal with physical (gram) Transactions is the transaction to another DinarPal account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading168">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse168" aria-expanded="false" aria-controls="collapse168">
                                       What is the different with Withdrawal with MYR and Physical (gram)?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse168" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading168">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can get the money if you withdrawal with MYR and get your gold (gram) if you withdrawal with physical.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading169">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse169" aria-expanded="false" aria-controls="collapse169">
                                       Is there any charge when Withdrawal with MYR?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse169" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading169">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, 1% when withdrawal with MYR.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading170">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse170" aria-expanded="false" aria-controls="collapse170">
                                       Is there any charge when Withdrawal with Physical (gram)?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse170" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading170">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, 1% when withdrawal with Physical (gram).
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading171">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse171" aria-expanded="false" aria-controls="collapse171">
                                       How much the minimum amount so I can Withdrawal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse171" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading171">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        For the withdrawal, you can withdrawal all the amount in your DinarPal account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading172">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse172" aria-expanded="false" aria-controls="collapse172">
                                       What is the function of Overview?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse172" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading172">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The account overview is to give summary customer account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading173">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse173" aria-expanded="false" aria-controls="collapse173">
                                      How the Withdrawal Code generate?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse173" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading173">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The system will generate the Withdrawal Code.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Redeem</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading174">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse174" aria-expanded="false" aria-controls="collapse174">
                                       How Redeem Point function?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse174" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading174">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can redeem the point.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading175">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse175" aria-expanded="false" aria-controls="collapse175">
                                       What is meant by redeem with physical (gram)?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse175" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading175">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can redeem by physical (gram) get the gold or silver.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading176">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse176" aria-expanded="false" aria-controls="collapse176">
                                       How the Withdrawal Code generate?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse176" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading176">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The system will generate the Withdrawal Code.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Purchase</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading177">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse177" aria-expanded="false" aria-controls="collapse177">
                                       What kind of online purchase can I make thru DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse177" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading177">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There is a variety of online product and services available for account holders.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading178">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse178" aria-expanded="false" aria-controls="collapse178">
                                      What is the daily transaction limit?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse178" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading178">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There is no limit for daily transaction.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading179">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse179" aria-expanded="false" aria-controls="collapse179">
                                       How do I use my DinarPal account for payments?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse179" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading179">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can go to the send payment and choose the type of send payment.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading180">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse180" aria-expanded="false" aria-controls="collapse180">
                                       How reliable is the transaction that I intend to perform online via DinarPal?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse180" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading180">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        We assure your transactions are safe and secure as we apply the latest encryption technology and security measures in providing this service.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading181">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse181" aria-expanded="false" aria-controls="collapse181">
                                       What should I do if at the point of confirming a transaction, my internet connection gets cut off or there is a power trip?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse181" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading181">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Should you experience any interruptions at any stage while performing a transaction at DinarPal, we advise you to check the status of the transaction by checking your account balance to confirm whether the transaction was successful.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading182">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse182" aria-expanded="false" aria-controls="collapse182">
                                       How do I know when a transaction has gone through?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse182" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading182">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Status of a transaction success or a failure will be displayed in transaction history. To verify further, you may go and check the balance of your account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading183">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse183" aria-expanded="false" aria-controls="collapse183">
                                       What happens if I do not have sufficient balance in my account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse183" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading183">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        If you do not have sufficient balance in your account, the system will prompt you during transaction to deposit using deposit function.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading184">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse184" aria-expanded="false" aria-controls="collapse184">
                                       What will I receive after I have performed an online purchase?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse184" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading184">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Your will receive a confirmation that the transaction was successful and the receipt that you have purchase with DinarPal
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading185">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse185" aria-expanded="false" aria-controls="collapse185">
                                       I requested for the wrong product. Can I cancel the transaction?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse185" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading185">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, you can cancel by click the Cancel button.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading186">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse186" aria-expanded="false" aria-controls="collapse186">
                                       Whom do I contact if there are problems with purchase or deposit?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse186" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading186">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can contact Support Center or support@dinarpal.com 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading187">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse187" aria-expanded="false" aria-controls="collapse187">
                                      What are the recommended hardware and software requirements?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse187" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading187">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Apart from an internet enabled computer, there is no added hardware requirement. However to get optimal performance we advise you to have a broadband connection.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading188">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse188" aria-expanded="false" aria-controls="collapse188">
                                       Who do I call for support?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse188" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading188">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can contact Support Center or support@dinarpal.com 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading189">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse189" aria-expanded="false" aria-controls="collapse189">
                                       Can I access to DinarPal via a publicly shared computer such as cybercafe?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse189" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading189">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, you can.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading190">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse190" aria-expanded="false" aria-controls="collapse190">
                                       Where can I find the item to buy?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse190" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading190">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                       You can go to the Gold and Silver Souq.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading191">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse191" aria-expanded="false" aria-controls="collapse191">
                                       What is “Buy Now Pay via DinarPal”button?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse191" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading191">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                       The “Buy Now Pay via DinarPal” button is the button that can pay with your DinarPal account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading192">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse192" aria-expanded="false" aria-controls="collapse192">
                                       Where can I use the “Buy Now Pay via DinarPal” button?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse192" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading192">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can use the button everywhere.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading193">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse193" aria-expanded="false" aria-controls="collapse193">
                                       Is there a single transaction limit?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse193" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading193">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No there is no single transaction limit.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading194">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse194" aria-expanded="false" aria-controls="collapse194">
                                       Is there a monthly transaction limit?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse194" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading194">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        There is no monthly transaction limit.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading195">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse195" aria-expanded="false" aria-controls="collapse195">
                                       How can I view my transaction history?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse195" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading195">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can view transaction history in the account overview.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Support FAQ</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading196">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse196" aria-expanded="false" aria-controls="collapse196">
                                       How do I get to support site?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse196" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading196">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Please contact us at support@dinarpal.com or visit our Support Center.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading197">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse197" aria-expanded="false" aria-controls="collapse197">
                                       What is the function of support?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse197" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading197">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The support is to give customer service.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Closing Account</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading198">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse198" aria-expanded="false" aria-controls="collapse198">
                                       How do I close my DinarPal account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse198" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading198">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can go to the account deactivation. You should know the rule before you deactivate the account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading199">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse199" aria-expanded="false" aria-controls="collapse199">
                                       What will happen after I close my account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse199" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading199">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        We only retain your user data for 30 days from the data of deactivation after which we begin the process of deleting your account from our system which can take up to a week, as provided in our Private Policy, unless there is a separate arrangement between you and DinarPal to extend your deactivation period. You may reactive your account at any time during these 30 days by logging in.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading200">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse200" aria-expanded="false" aria-controls="collapse200">
                                       Will I receive the balance in my account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse200" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading200">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. You will receive the balance in my account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading201">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse201" aria-expanded="false" aria-controls="collapse201">
                                       Can I withdraw my money?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse201" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading201">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes, you can withdrawal all the amount in your DinarPal account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading202">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse202" aria-expanded="false" aria-controls="collapse202">
                                       Can I close my account at any time?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse202" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading202">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        At any time you can choose to redeem your gold, either in physical gold, or point and discontinue use of your account. If you have further questions, please contact us at support@dinarpal.com or visit our Support Center.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading203">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse203" aria-expanded="false" aria-controls="collapse203">
                                       What if Dinarpal account holder death or incapacitation?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse203" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading203">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        In the unfortunate event of user death or incapacitation, we will take instructions in respect of your account from your authorized executor or administrator upon delivery of sufficient proof of authority of such executor or administrator.Please contact support@dinarpal.com for assistance.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading204">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse204" aria-expanded="false" aria-controls="collapse204">
                                       How much gold can I store in my DinarPal account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse204" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading204">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can store how much you want.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading205">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse205" aria-expanded="false" aria-controls="collapse205">
                                       How do I view or edit my account information?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse205" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading205">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can go to the profile and edit your account information.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading206">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse206" aria-expanded="false" aria-controls="collapse206">
                                       How old do you have to be to open a DinarPal account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse206" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading206">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        To be eligible to use DinarPal Services, you must be at least 18 years old (or the applicable age of majority and contractual capacity if you reside in a jurisdiction where the age of majority or contractual capacity is above 18 years of age). By accessing or using DinarPal services you represent and warrant that you are at least of the applicable age of majority and contractual capacity in the jurisdiction in which you reside.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading207">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse207" aria-expanded="false" aria-controls="collapse207">
                                       For the DinarPal Mobile App, is there give the notification for every single thing in my account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse207" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading207">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. There is the notification for every transaction of your account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading208">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse208" aria-expanded="false" aria-controls="collapse208">
                                       When will I receive the notification?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse208" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading208">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        As you send and receive payments, make deposits, or request redemptions, you'll receive a corresponding notification in the app. The notification alert will sound and the notification icon will change.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading209">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse209" aria-expanded="false" aria-controls="collapse209">
                                       How do I view my notifications?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse209" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading209">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        How do I view my notifications?
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading210">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse210" aria-expanded="false" aria-controls="collapse210">
                                       How do I clear my notifications?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse210" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading210">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Clear your notifications by tapping 'Clear All' on the detailed view. The notifications view will close and you will receive a confirmation. You can confirm that your notifications are clear by re-opening the detailed view.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Keep</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading211">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse211" aria-expanded="false" aria-controls="collapse211">
                                       The storage location only in Melaka?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse211" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading211">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        For this time, only at Malacca.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading212">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse212" aria-expanded="false" aria-controls="collapse212">
                                       If I buy gold, can I pay with E-Dirham?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse212" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading212">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes you can choose the payment method either with the E-Dinar or E-Dirham.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading213">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse213" aria-expanded="false" aria-controls="collapse213">
                                       What mean by keep vault?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse213" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading213">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        You can see your item list. It shows the total quantity, total MYR, and the total weight.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Share</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading214">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse214" aria-expanded="false" aria-controls="collapse214">
                                       Who own this DinarPal Coop?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse214" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading214">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal Coop is own by Al-DinarPal Group.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading215">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse215" aria-expanded="false" aria-controls="collapse215">
                                       What is DinarPal Coop?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse215" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading215">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal Coop is banking-like platform for Dinar (gold coin) and Dirham (silver coin).
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading216">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse216" aria-expanded="false" aria-controls="collapse216">
                                       DinarPal Coop is a bank?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse216" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading216">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No. DinarPal Coop is not a bank. DinarPal Coop prefers to be Baitul-Mail in the near future.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading217">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse217" aria-expanded="false" aria-controls="collapse217">
                                       How DinarPal Coop can benefit me?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse217" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading217">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal Coop can protect your wealth by offering you to buy at least 0.5 gram of gold bar every month and keep it in DinarPal Coop secure vault. It also can offer you to start purchase things using dinar and dirham among member, Remain your purchasing power and inflation-free. DinarPal Coop also can offer you to get some short-term loan without interest.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading218">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse218" aria-expanded="false" aria-controls="collapse218">
                                       Does DinarPal Coop trying to be an alternative currency?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse218" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading218">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No. We just offer an alternative for medium of exchange. Our main currency is still MYR.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading219">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse219" aria-expanded="false" aria-controls="collapse219">
                                       How much the DinarPal share for one unit?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse219" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading219">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The price for one unit of the DinarPal share is MYR 1000 and MYR 100 is for entering fee as DinarPal Coop member.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading220">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse220" aria-expanded="false" aria-controls="collapse220">
                                       What is the benefit being member and buy share of the DinarPal Coop?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse220" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading220">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal Coop member will receive dividen and able to get Bonus Share based on shareholder.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading221">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse221" aria-expanded="false" aria-controls="collapse221">
                                       How much the dividen per year?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse221" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading221">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal Coop dividen is from 3% to 10% depends on the six month before the final finance of the year.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading222">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse222" aria-expanded="false" aria-controls="collapse222">
                                        Is it true that buy the gold is the part of investment?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse222" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading222">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. In times of crisis, gold is the safest investment that also has the greatest potential to increase your wealth. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading223">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse223" aria-expanded="false" aria-controls="collapse223">
                                       Is this investment safe?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse223" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading223">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. This is because the share modal will be used for main activity DinarPal Coop which is Ar-Rahnu (Pajak Gadai) where gave the fast and easy loan to member or non-member. The loan rate is about 50% to 80% of the value of the gold (gram).
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading224">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse224" aria-expanded="false" aria-controls="collapse224">
                                       What is the different between DinarPal ArRahnu and another ArRahnu?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse224" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading224">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The different is DinarPal ArRahnu give the high loan and low safe keeping fees. This will attract people use DinarPal. DinarPal revenue also more than other conventional ArRahnu which is revenue conventional ArRahnu only from keeping fee and pawn product. Moreover DinarPal has another ten (10) sources which is verification fee, activation fee, ArRahnu fee, transaction fee, amanah deal fee and keep fee. This proved that DinarPal will go further than other.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading225">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse225" aria-expanded="false" aria-controls="collapse225">
                                       What is the risk?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse225" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading225">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal is Islamic payment gateway, which is DinarPal Coop and share member will enjoy the profit and loss together. 
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading226">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse226" aria-expanded="false" aria-controls="collapse226">
                                       Is this follows the syariah mortgage principle?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse226" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading226">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes this business follows the syariah mortgage principle. There is the Syariah Compliances which get an approval of Syariah committee of Al-DinarPal Group as adviced by Department of Islamic Development Malaysia (JAKIM).
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading227">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse227" aria-expanded="false" aria-controls="collapse227">
                                       Is DinarPal Coop registered?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse227" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading227">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes Koperasi DinarPal Melaka Berhad (M-04-14) registered on 10 MAY 2013 by Suruhanjaya Koperasi Malaysia (SKM).
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading228">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse228" aria-expanded="false" aria-controls="collapse228">
                                       Member of DinarPal can get authority in Koperasi?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse228" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading228">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes for those member and buy share with DinarPal Coop then automatically will get the authority and liability as member DinarPal Coop that already in the Undang-undang Kecil.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading229">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse229" aria-expanded="false" aria-controls="collapse229">
                                       How beneficial or family member can recourse their share member?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse229" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading229">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        For Muslim member should give the legal beneficial for accept the authority in DinarPal Coop.
                                        For Non-Muslim, can rename or more beneficiary.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading230">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse230" aria-expanded="false" aria-controls="collapse230">
                                       The beneficial member must register as DinarPal Coop member to recourse an authority?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse230" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading230">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The legal beneficial able to recourse in one (1) month after member die and do not need to register as member.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading231">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse231" aria-expanded="false" aria-controls="collapse231">
                                       When the beneficiary valid as DinarPal Coop member?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse231" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading231">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The beneficiary member valid from the date of death member or start from the date changes share member.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading232">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse232" aria-expanded="false" aria-controls="collapse232">
                                       DinarPal Coop member able to change or cancel out the name that already has?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse232" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading232">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        DinarPal Coop member has right to change or cancel but Koperasi need to know about it.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading233">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse233" aria-expanded="false" aria-controls="collapse233">
                                       When member need to pay the DinarPal share member?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse233" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading233">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        For those register with Koperasi or who sign first Koperasi meeting should pay the share in three (3) month of registration that accepted by Koperasi.
                                        For being member, should pay the entering fee MYR 100 and also settle the entering share.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading234">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse234" aria-expanded="false" aria-controls="collapse234">
                                       Member can change their DinarPal Coop member share to other member?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse234" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading234">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Yes. Share member can change their share more than minimum amount to other member.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading235">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse235" aria-expanded="false" aria-controls="collapse235">
                                       What is the condition for change share member?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse235" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading235">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Share member officially change after the signed other members and registered by Koperasi.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading236">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse236" aria-expanded="false" aria-controls="collapse236">
                                       How long it take to process the transference?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse236" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading236">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        The transfer in sixth (6) month after the share member death.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading237">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse237" aria-expanded="false" aria-controls="collapse237">
                                       How much the value of share that can be resource?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse237" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading237">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Member able to resource the share value based on the share given.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <H4 class="text-left wow FadeInDown">Definitions</H4> 
                        <br>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading238">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse238" aria-expanded="false" aria-controls="collapse238">
                                       What is Account or DinarPal account?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse238" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading238">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Its means a Personal or Business DinarPal Account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading239">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse239" aria-expanded="false" aria-controls="collapse239">
                                       What is “Add Money” or “Top Up”?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse239" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading239">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Your abilities to transfer money from your bank account to your DinarPal Account.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading240">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse240" aria-expanded="false" aria-controls="collapse240">
                                       What is “Business Account”
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse240" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading240">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Business Account is account used primarily for business purposes and not for personal, family, or household purpose.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading241">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse241" aria-expanded="false" aria-controls="collapse241">
                                       What is “Commercial Entity Agreement”?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse241" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading241">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        “Commercial Entity Agreement” means the agreement that commercial entities are required to enter into directly with DinarPal’s payment processor(s).
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading242">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse242" aria-expanded="false" aria-controls="collapse242">
                                       What is “Customer Service”?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse242" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading242">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Customer Service is DinarPal’s customer support which can be accessed online through the DinarPal Help Center at any time.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading243">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse243" aria-expanded="false" aria-controls="collapse243">
                                       What is “Micropayments for Digital Goods”?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse243" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading243">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        “Micropayments for Digital Goods” means DinarPal Service offered to certain qualifying Merchants who sell Digital Goods that, among other things, offers micropayments pricing and integrated website tools.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading244">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse244" aria-expanded="false" aria-controls="collapse244">
                                       What is “Unauthorized Transaction”?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse244" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading244">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        “Unauthorized Transaction” means as defined in Section 8.1 of this Agreement.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading245">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse245" aria-expanded="false" aria-controls="collapse245">
                                       What is “Verified Account”?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse245" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading245">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        “Verified Account” means an Account status that reflects that DinarPal has verified that an Account holder has legal control of one or more of his or her Payment Methods. A Verified Account status does not constitute an endorsement of a User or a guarantee of a User’s business practices.
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading246">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse246" aria-expanded="false" aria-controls="collapse246">
                                       What is “Virtual Terminal Payment”?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse246" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading246">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        A payment processed by DinarPal through the Virtual Terminal flow that is funded directly by a credit or debit card and not through an Account. “User” means any person or entity using the DinarPal Services including you.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading247">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse247" aria-expanded="false" aria-controls="collapse247">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse247" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading247">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading248">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse248" aria-expanded="false" aria-controls="collapse248">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse248" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading248">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading249">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse249" aria-expanded="false" aria-controls="collapse249">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse249" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading249">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading250">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse250" aria-expanded="false" aria-controls="collapse250">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse250" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading250">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading251">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse251" aria-expanded="false" aria-controls="collapse251">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse251" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading251">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading252">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse252" aria-expanded="false" aria-controls="collapse252">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse252" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading252">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading253">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse253" aria-expanded="false" aria-controls="collapse253">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse253" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading253">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading254">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse254" aria-expanded="false" aria-controls="collapse254">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse254" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading254">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading255">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse255" aria-expanded="false" aria-controls="collapse255">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse255" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading255">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading256">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse256" aria-expanded="false" aria-controls="collapse256">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse256" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading256">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading257">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse257" aria-expanded="false" aria-controls="collapse257">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse257" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading257">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading258">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse258" aria-expanded="false" aria-controls="collapse258">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse258" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading258">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading259">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse259" aria-expanded="false" aria-controls="collapse259">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse259" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading259">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading260">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse260" aria-expanded="false" aria-controls="collapse260">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse260" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading260">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading261">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse261" aria-expanded="false" aria-controls="collapse261">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse261" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading261">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading262">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse262" aria-expanded="false" aria-controls="collapse262">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse262" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading262">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading263">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse263" aria-expanded="false" aria-controls="collapse263">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse263" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading263">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading264">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse264" aria-expanded="false" aria-controls="collapse264">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse264" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading264">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading265">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse265" aria-expanded="false" aria-controls="collapse265">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse265" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading265">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading266">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse266" aria-expanded="false" aria-controls="collapse266">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse266" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading266">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading267">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse267" aria-expanded="false" aria-controls="collapse267">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse267" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading267">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading268">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse268" aria-expanded="false" aria-controls="collapse268">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse268" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading268">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading269">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse269" aria-expanded="false" aria-controls="collapse269">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse269" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading269">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading270">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse270" aria-expanded="false" aria-controls="collapse270">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse270" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading270">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading271">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse271" aria-expanded="false" aria-controls="collapse271">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse271" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading271">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading272">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse272" aria-expanded="false" aria-controls="collapse272">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse272" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading272">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading273">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse273" aria-expanded="false" aria-controls="collapse273">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse273" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading273">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading274">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse274" aria-expanded="false" aria-controls="collapse274">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse274" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading274">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading275">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse275" aria-expanded="false" aria-controls="collapse275">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse275" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading275">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading276">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse276" aria-expanded="false" aria-controls="collapse276">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse276" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading276">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading277">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse277" aria-expanded="false" aria-controls="collapse277">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse277" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading277">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading278">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse278" aria-expanded="false" aria-controls="collapse278">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse278" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading278">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading279">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse279" aria-expanded="false" aria-controls="collapse279">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse279" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading279">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading280">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse280" aria-expanded="false" aria-controls="collapse280">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse280" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading280">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading281">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse281" aria-expanded="false" aria-controls="collapse281">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse281" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading281">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading282">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse282" aria-expanded="false" aria-controls="collapse282">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse282" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading282">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading283">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse283" aria-expanded="false" aria-controls="collapse283">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse283" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading283">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading284">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse284" aria-expanded="false" aria-controls="collapse284">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse284" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading284">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading285">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse285" aria-expanded="false" aria-controls="collapse285">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse285" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading285">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading286">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse286" aria-expanded="false" aria-controls="collapse286">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse286" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading286">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading287">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse287" aria-expanded="false" aria-controls="collapse287">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse287" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading287">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading288">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse288" aria-expanded="false" aria-controls="collapse288">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse288" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading288">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading289">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse289" aria-expanded="false" aria-controls="collapse289">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse289" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading289">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading290">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse290" aria-expanded="false" aria-controls="collapse290">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse290" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading290">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading291">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse291" aria-expanded="false" aria-controls="collapse291">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse291" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading291">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading292">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse292" aria-expanded="false" aria-controls="collapse292">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse292" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading292">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading293">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse293" aria-expanded="false" aria-controls="collapse293">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse293" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading293">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading294">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse294" aria-expanded="false" aria-controls="collapse294">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse294" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading294">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading295">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse295" aria-expanded="false" aria-controls="collapse295">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse295" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading295">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading296">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse296" aria-expanded="false" aria-controls="collapse296">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse296" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading296">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading297">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse297" aria-expanded="false" aria-controls="collapse297">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse297" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading297">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading298">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse298" aria-expanded="false" aria-controls="collapse298">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse298" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading298">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading299">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse299" aria-expanded="false" aria-controls="collapse299">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse299" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading299">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading300">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse300" aria-expanded="false" aria-controls="collapse300">
                                       
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse300" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading300">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        -->
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    </div>
				
                </div>
        </div>
    </section>

  

    

  

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