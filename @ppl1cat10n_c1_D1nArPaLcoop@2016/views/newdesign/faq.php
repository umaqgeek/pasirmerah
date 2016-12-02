<html lang="en">

    <!-- Mirrored from shapebootstrap.net/demo/html/corlate/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Oct 2016 08:30:25 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Kodinar</title>

        <link href="<?php echo base_url(); ?>assets/csscoop/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csscoop/font-awesome.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csscoop/font-awesome.min.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csscoop/animate.min.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csscoop/prettyPhoto.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csscoop/main.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csscoop/responsive.css" rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/csscoop/faq.css" rel="stylesheet">
        <!--[if lt IE 9]>
            <script src="<?php echo base_url(); ?>assets/jscoop/html5shiv.js"></script>
            <script src="<?php echo base_url(); ?>assets/jscoop/respond.min.js"></script>
            <![endif]-->
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head> 
    <body class="homepage">

        <header id="header">
            <nav class="navbar navbar-inverse" role="banner">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index-2.html"><img src="<?php echo base_url(); ?>assets/imagescoop/logo1.png" alt="logo"></a>
                    </div>
                    <div class="collapse navbar-collapse navbar-right">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="index-2.html">Home</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="blog-item.html">Profile</a></li>
                                    <li><a href="pricing.html">Paymnet</a></li>
                                </ul>
                            </li>
                            <li><a href="<?= site_url('version3/login'); ?>">Log Out</a></li>
                        </ul>
                    </div>
                </div> 
            </nav> 
        </header>
        
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
                                            Dinarpal Coop is own by Al-DinarPal Group.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        What is Dinarpal Coop?
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
                                        Dinarpal Coop is a bank?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No. Dinarpal Coop is not a bank. Dinarpal Coop prefer to be Baitul-Mal in the near future.
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFour">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                        How Dinarpal Coop can benefit me?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        Dinarpal Coop can protect your wealth by offering you to buy at least 0.5 gram of gold bar every month and keep it in Dinarpal Coop secure vault.
                                        It also can off er you to start purchase things using dinar and dirham among members, 
                                        Remain your purchasing power and inflation-free. 
                                        DinarPal also can offer you to get some short-term loan without interest.
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFive">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                        Does Dinarpal Coop trying to be a alternative currency?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        No.We just offer an alternative for medium of exchange. 
                                        Our main currency is still MYR.
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingSix">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                        How secure we are?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        In sha Allah you will be safe with us. 
                                        We provide the 24/7 security services with close monitoring and 
                                        every gram is fully insured.For the security of your information 
                                        during transmission is ensured. We guarantee secure data 
                                        transmission by using Secure Sockets Layer (SSL short) protocol. 
                                        With SSL, your personal information you enter on our Web site will 
                                        be encrypted and can thus be read only by us. The SSL encryption 
                                        protocol has been established as the market standard for data over 
                                        the Internet and is continuously being developed.
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingSeven">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                        How about Cooperative Commission of Malaysia (CCM) approval?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        We got an approval from Cooperative Commission of Malaysia (CCM) 
                                        under the Ministry of Domestic Trade, Co-Operatives and Consumerism 
                                        of Malaysia to operate Ar-Rahnu involved in the approval process.
                                    </div>
                                </div>
                            </div>
                        </div>






                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingEight">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                                        How about collecting deposit from public?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        We got an approval from Cooperative Commission of Malaysia to 
                                        collect deposit from public and it already clearly spell out in our 
                                        cooperative by-law.
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingNine">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
                                        Who monitor your business operation on behalf of public?<
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseNine" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingNine">
                                <div class="panel-body">
                                    <div class="text-justify wow FadeInDown">
                                        We have internal audit, external audit and supervision by 
                                        Cooperative Commission of Malaysia.
                                    </div>
                                </div>
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






