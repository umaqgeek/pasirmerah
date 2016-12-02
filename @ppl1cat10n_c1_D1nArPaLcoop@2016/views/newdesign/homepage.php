
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from shapebootstrap.net/demo/html/corlate/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Oct 2016 08:30:25 GMT -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>DinarPal Coop</title>
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url() . 'assets/imagescoop/favicon.ico' ?>">

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
            <!--
            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-xs-4">
                            <div class="top-number"><p><i class="fa fa-phone-square"></i> +0123 456 70 90</p></div>
                        </div>
                        <div class="col-sm-6 col-xs-8">
                            <div class="social">
                                <ul class="social-share">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-skype"></i></a></li>
                                </ul>
                                <div class="search">
                                    <form role="form">
                                        <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                        <i class="fa fa-search"></i>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div> -->
            <nav class="navbar navbar-inverse" role="banner">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="<?=site_url('version3')?>"><img src="<?php echo base_url(); ?>assets/imagescoop/images5.png" width="150px" alt="logo"></a>
                    </div>
                    <div class="collapse navbar-collapse navbar-right">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="<?=site_url('version3')?>">Home</a></li>
                            <li><a href="<?php echo site_url('version3/menuAdmin')?>">Admin</a></li>
                            <li><a href="<?php echo site_url('version3/menu') ?>">User</a></li>
                            <li><a href="<?php echo site_url('version3/menu') ?>">Saving</a></li>
                            <li><a href="<?php echo site_url('version3/menu') ?>">Payment</a></li>
                            <li><a href="<?php echo site_url('version3/menu') ?>">Rahnu</a></li>
                            <li><a href="<?php echo site_url('version3/menu') ?>">Shop</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">More <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="blog-item.html">Corporate Overview</a></li>
                                    <li><a href="pricing.html">Board Of Co-operative</a></li>
                                    <li><a href="404.html">Internal Audit Team</a></li>
                                    <li><a href="shortcodes.html">Syariah Council Member</a></li>
                                    <li><a href="shortcodes.html">The Management</a></li>
                                    <li><a href="shortcodes.html">Member Share</a></li>
                                    <li><a href="shortcodes.html">Faq</a></li>
                                </ul>
                            </li>
                            <li>
                                <a btn href="<?= site_url('login/getstarted');?>">Login</a></li>
                        </ul>
                    </div>
                </div> 
            </nav> 
        </header> 
        <section id="main-slider" class="no-margin">
            <div class="carousel slide">
                <ol class="carousel-indicators">
                    <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                    <li data-target="#main-slider" data-slide-to="1"></li>
                    <li data-target="#main-slider" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active" style="background-image: url(<?php echo base_url(); ?>assets/imagescoop/slider/bg1.jpg);">
                        <div class="container">
                            <div class="row slide-margin">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        <h1 class="animation animated-item-1">Digital Ar - Rahnu</h1>
                                        <h2 class="animation animated-item-2">Pick our Ar-Rahnu DinarPal to enjoy exclusive benefits of various products and services provided. </h2>
                                        <a class="btn-slide animation animated-item-3" href="#">Read More</a>
                                    </div>
                                </div>
                                <div class="col-sm-6 hidden-xs animation animated-item-4">
                                    <div class="slider-img">
                                        <img src="<?php echo base_url(); ?>assets/imagescoop/slider/img4.png" class="img-responsive" style="margin-top:300px;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagescoop/slider/bg2.jpg);">
                        <div class="container">
                            <div class="row slide-margin">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        <h1 class="animation animated-item-1">E- Bazaar Muamalah</h1>
                                        <h2 class="animation animated-item-2">Shop on-line easily, safe and without Riba'. </h2>
                                        <a class="btn-slide animation animated-item-3" href="#">Read More</a>
                                    </div>
                                </div>
                                <div class="col-sm-6 hidden-xs animation animated-item-4">
                                    <div class="slider-img">
                                        <img src="<?php echo base_url(); ?>assets/imagescoop/slider/img2.png" class="img-responsive">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <div class="item" style="background-image: url(<?php echo base_url(); ?>assets/imagescoop/slider/bg3.jpg);">
                        <div class="container">
                            <div class="row slide-margin">
                                <div class="col-sm-6">
                                    <div class="carousel-content">
                                        <h1 class="animation animated-item-1">Gold Sharing Account</h1>
                                        <h2 class="animation animated-item-2">Gold deposit accounts offer purchase, sale and storage of physical gold and silver physically without risk.</h2>
                                        <a class="btn-slide animation animated-item-3" href="#">Read More</a>
                                    </div>
                                </div>
                                <div class="col-sm-6 hidden-xs animation animated-item-4">
                                    <div class="slider-img">
                                        <img src="<?php echo base_url(); ?>assets/imagescoop/slider/img3.png" class="img-responsive">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div> 
            </div> 
            <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
                <i class="fa fa-chevron-left"></i>
            </a>
            <a class="next hidden-xs" href="#main-slider" data-slide="next">
                <i class="fa fa-chevron-right"></i>
            </a>
        </section> 
        
        <section id="cta" class="wow fadeIn">
            <div class="container">
                <div class="row">

                    <div class="col-md-12">
                        <div class="col-md-3">
                            <img src="<?php echo base_url(); ?>assets/imagescoop/partners/partner16.png" width="50%" style="margin-left: 60px;" />
                            <p align="center">Regulated by the Malaysia Cooperative Societies Commission</p>
                        </div>

                        <div class="col-md-3">
                            <img src="<?php echo base_url(); ?>assets/imagescoop/partners/partner11.png" width="50%" style="margin-left: 60px;"/>
                            <p align="center">Audited by MNZWAJ Associated for Financial Statement & Customer Metal</p>
                        </div>

                        <div class="col-md-3">
                            <img src="<?php echo base_url(); ?>assets/imagescoop/partners/partner9.png" width="50%" style="margin-left: 60px;"/>
                            <p align="center">Policy by Department Of Islamic Development Malaysia</p>
                        </div>
                        <div class="col-md-3">
                            <img src="<?php echo base_url(); ?>assets/imagescoop/partners/partner17.png" width="50%" style="margin-left: 60px;"/>
                            <p align="center">Insured by Takaful Ikhlas Berhad</p>
                        </div>
                    </div>

                </div>
            </div>
        </section><!--/#cta-->
        
        <section id="feature">
            <div class="container">
                <div class="center wow fadeInDown">
                    <h2>Corporate Overview</h2>
                    <p class="lead">Koperasi DinarPal Melaka Berhad (Dinarpal Coop) was established on 13 January 2013 <br>
                        with a view to carry out its core business of Ar - Rahnu ( Islamic Pawn Broking ).  </p>
                    <p>Dinarpal Coop have a very clear and strong corporate culture moving in its own entities. <br> Thus, the public needs to know the direction and good governance as follows : -</p>
                </div>
                <div class="row">
                    <div class="features">
                        <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                            <div class="feature-wrap">
                                <i class="fa fa-bullhorn"></i>
                                <h2>VISION</h2>
                                <h3>To become an excellence Ar-Rahnu based Co-Operative</h3>
                            </div>
                        </div> 
                        <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                            <div class="feature-wrap">
                                <i class="fa fa-comments"></i>
                                <h2>MISSION</h2>
                                <h3>Planning, leading, organizing and controlling the corporate governance toward achieving 
                                    the VISSION through the following strategies</h3>
                                <ul>
                                    <li>Providing e-Rahnu Services</li>
                                    <li>Providing Saving Account</li>
                                    <li>Providing e-Commerce (Barter Trade)</li>
                                    <li>Providing e-Islamic Payment Gateway</li>
                                    <li>Gold Trading</li>
                                </ul>
                            </div>
                        </div> 
                        <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                            <div class="feature-wrap">
                                <i class="fa fa-cloud-download"></i>
                                <h2>MOTTO</h2>
                                <h3>Enlighten Ar-Rahnu Through Digital System</h3>
                            </div>
                        </div> 
                        <!--
                        <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                            <div class="feature-wrap">
                                <i class="fa fa-leaf"></i>
                                <h2>Adipisicing elit</h2>
                                <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                            </div>
                        </div> 
                        <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                            <div class="feature-wrap">
                                <i class="fa fa-cogs"></i>
                                <h2>Sed do eiusmod</h2>
                                <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                            </div>
                        </div> 
                        <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                            <div class="feature-wrap">
                                <i class="fa fa-heart"></i>
                                <h2>Labore et dolore</h2>
                                <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
                            </div>
                        </div> --> 
                    </div> 
                </div> 
            </div> 
        </section> 
       <!-- 
        <section id="recent-works">
            <div class="container">
                <div class="center wow fadeInDown">
                    <h2>Recent Works</h2>
                    <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/portfolio/recent/item1.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Business theme</a> </h3>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                    <a class="preview" href="<?php echo base_url(); ?>assets/imagescoop/portfolio/full/item1.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/portfolio/recent/item2.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Business theme</a></h3>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                    <a class="preview" href="<?php echo base_url(); ?>assets/imagescoop/portfolio/full/item2.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/portfolio/recent/item3.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Business theme </a></h3>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                    <a class="preview" href="<?php echo base_url(); ?>assets/imagescoop/portfolio/full/item3.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/portfolio/recent/item4.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Business theme </a></h3>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                    <a class="preview" href="<?php echo base_url(); ?>assets/imagescoop/portfolio/full/item4.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/portfolio/recent/item5.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Business theme</a></h3>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                    <a class="preview" href="<?php echo base_url(); ?>assets/imagescoop/portfolio/full/item5.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/portfolio/recent/item6.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Business theme </a></h3>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                    <a class="preview" href="<?php echo base_url(); ?>assets/imagescoop/portfolio/full/item6.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/portfolio/recent/item7.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Business theme </a></h3>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                    <a class="preview" href="<?php echo base_url(); ?>assets/imagescoop/portfolio/full/item7.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/portfolio/recent/item8.png" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Business theme </a></h3>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                                    <a class="preview" href="<?php echo base_url(); ?>assets/imagescoop/portfolio/full/item8.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div> 
        </section> -->
       
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
                               <i class="fa fa-comment "></i>
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
                               <p class="text-justify wow FadeInDown">Your safe keeping fee is only 2.5% from marhun amount per year.</p>
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
       
        <section id="services" class="service-item">
            <div class="container">
                <div class="center wow fadeInDown">
                    <h2>Our Service</h2>
                    <p class="lead"> <br> </p>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="media services-wrap wow fadeInDown">
                            <div class="pull-left">
                                <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/services/services1.png">
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">1) Digital Ar - Rahnu</h3>
                                <p>Pick our Ar-Rahnu DinarPal to enjoy exclusive benefits of various products and services provided. 
                                    Other benefits are checking mortgage account online service, multiplications of dinar & dirham, 
                                    gold and silver transfer services, Internet banking and mobile banking.</p>
                                <p>You may get other benefits such as:</p> 
                                <ul>
                                    <li>Mortgage system in accordance to Syaria'</li>
                                    <li>Financing margin up to 80 %</li>
                                    <li>Long period of mortgage</li>
                                    <li>Keep wages as low as 0.55sen</li>
                                    <li>Participate in the auction of gold and silver on-line</li>
                                    <li>Enjoy access to Gold and Silver Souq where mortgage goods may be advertised pledge to do sales 
                                        or purchase among DinarPal user community</li>
                                    <li>Enjoy the benefits to redeem gifts by point, that is RM1 = 1point (Terms and Conditions applied)</li>
                                </ul> 
                                 
                                
                               
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="media services-wrap wow fadeInDown">
                            <div class="pull-left">
                                <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/services/services4.png">
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">2) E- Bazaar Muamalah</h3>
                                <p>Shop on-line easily, safe and without Riba'. Among the benefits provided are :</p>
                                <ul>
                                    <li>The use of the dinar and dirham as a medium of purchase, sales and conversion</li>
                                    <li>Payment service even for a part of the dinar and dirham</li>
                                    <li>Shop with ease especially for the visa and mastercard (debit) holders</li>
                                    <li>Easy to monitor and track your personal or business transaction</li>
                                    <li>Accessible and no banknotes utilizations</li>
                                    <li>Easy to tether your fiat money into gold and silver, and move forward to the implementation of 
                                        Syaria' currency ( the dinar and dirham / e- dinar and e- dirham ) via on-line or walk-in</li>
                                </ul>
                                <br><br/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="media services-wrap wow fadeInDown">
                            <div class="pull-left">
                                <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/services/services2.png">
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">3) Gold Sharing Account</h3>
                                <p>Gold deposit accounts offer purchase, sale and storage of physical gold and silver physically without risk.</p>
                                <p>This account offers benefits such as:</p>
                                <ul>
                                    <li>Store gold and silver is a good protection against inflation</li>
                                    <li>Provides a platform to purchase and store</li>
                                    <li>Unlimited storage fees as low as RM 13 / year</li>
                                    <li>Customers can take the gold at any time</li>
                                    <li>Systematic storage processes</li>
                                    <li>The opportunity to gain profit from the capital appreciation in the market price of gold</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="media services-wrap wow fadeInDown">
                            <div class="pull-left">
                                <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/services/services3.png">
                            </div>
                            <div class="media-body">
                                <h3 class="media-heading">4) Islamic Payment Gateway</h3>
                                <p>The Islamic payment gateway system allows transactions to be made online based on gold and silver. 
                                    It offer features like:</p>
                                <ul>
                                    <li>Islamic Internet Banking</li>
                                    <li>Islamic Mobile Internet Banking</li>
                                    <li>Deliver and receive money without Riba'</li>
                                    <li>Using Trust DinarPal to send and receive money</li>
                                    <li>Withdrawals service worldwide</li>
                                </ul>
                                <br><br/>
                                <br>
                            </div>
                        </div>
                    </div>
                </div> 
            </div> 
        </section> 
        <!--<section id="middle">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 wow fadeInDown">
                        <div class="skill">
                            <h2>Our Skills</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                            <div class="progress-wrap">
                                <h3>Graphic Design</h3>
                                <div class="progress">
                                    <div class="progress-bar  color1" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                        <span class="bar-width">85%</span>
                                    </div>
                                </div>
                            </div>
                            <div class="progress-wrap">
                                <h3>HTML</h3>
                                <div class="progress">
                                    <div class="progress-bar color2" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                                        <span class="bar-width">95%</span>
                                    </div>
                                </div>
                            </div>
                            <div class="progress-wrap">
                                <h3>CSS</h3>
                                <div class="progress">
                                    <div class="progress-bar color3" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        <span class="bar-width">80%</span>
                                    </div>
                                </div>
                            </div>
                            <div class="progress-wrap">
                                <h3>Wordpress</h3>
                                <div class="progress">
                                    <div class="progress-bar color4" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                        <span class="bar-width">90%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <div class="col-sm-6 wow fadeInDown">
                        <div class="accordion">
                            <h2>Why People like us?</h2>
                            <div class="panel-group" id="accordion1">
                                <div class="panel panel-default">
                                    <div class="panel-heading active">
                                        <h3 class="panel-title">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">
                                                Lorem ipsum dolor sit amet
                                                <i class="fa fa-angle-right pull-right"></i>
                                            </a>
                                        </h3>
                                    </div>
                                    <div id="collapseOne1" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <div class="media accordion-inner">
                                                <div class="pull-left">
                                                    <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/accordion1.png">
                                                </div>
                                                <div class="media-body">
                                                    <h4>Adipisicing elit</h4>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">
                                                Lorem ipsum dolor sit amet
                                                <i class="fa fa-angle-right pull-right"></i>
                                            </a>
                                        </h3>
                                    </div>
                                    <div id="collapseTwo1" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree1">
                                                Lorem ipsum dolor sit amet
                                                <i class="fa fa-angle-right pull-right"></i>
                                            </a>
                                        </h3>
                                    </div>
                                    <div id="collapseThree1" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour1">
                                                Lorem ipsum dolor sit amet
                                                <i class="fa fa-angle-right pull-right"></i>
                                            </a>
                                        </h3>
                                    </div>
                                    <div id="collapseFour1" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div> 
            </div> 
        </section> -->
        <!--
        <section id="content">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-8 wow fadeInDown">
                        <div class="tab-wrap">
                            <div class="media">
                                <div class="parrent pull-left">
                                    <ul class="nav nav-tabs nav-stacked">
                                        <li class=""><a href="#tab1" data-toggle="tab" class="analistic-01">Responsive Web Design</a></li>
                                        <li class="active"><a href="#tab2" data-toggle="tab" class="analistic-02">Premium Plugin Included</a></li>
                                        <li class=""><a href="#tab3" data-toggle="tab" class="tehnical">Predefine Layout</a></li>
                                        <li class=""><a href="#tab4" data-toggle="tab" class="tehnical">Our Philosopy</a></li>
                                        <li class=""><a href="#tab5" data-toggle="tab" class="tehnical">What We Do?</a></li>
                                    </ul>
                                </div>
                                <div class="parrent media-body">
                                    <div class="tab-content">
                                        <div class="tab-pane fade" id="tab1">
                                            <div class="media">
                                                <div class="pull-left">
                                                    <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/tab2.png">
                                                </div>
                                                <div class="media-body">
                                                    <h2>Adipisicing elit</h2>
                                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade active in" id="tab2">
                                            <div class="media">
                                                <div class="pull-left">
                                                    <img class="img-responsive" src="<?php echo base_url(); ?>assets/imagescoop/tab1.png">
                                                </div>
                                                <div class="media-body">
                                                    <h2>Adipisicing elit</h2>
                                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tab3">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
                                        </div>
                                        <div class="tab-pane fade" id="tab4">
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words</p>
                                        </div>
                                        <div class="tab-pane fade" id="tab5">
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures,</p>
                                        </div>
                                    </div>  
                                </div>  
                            </div>  
                        </div> 
                    </div> 
                    <div class="col-xs-12 col-sm-4 wow fadeInDown">
                        <div class="testimonial">
                            <h2>Testimonials</h2>
                            <div class="media testimonial-inner">
                                <div class="pull-left">
                                    <img class="img-responsive img-circle" src="<?php echo base_url(); ?>assets/imagescoop/testimonials1.png">
                                </div>
                                <div class="media-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>
                                    <span><strong>-John Doe/</strong> Director of corlate.com</span>
                                </div>
                            </div>
                            <div class="media testimonial-inner">
                                <div class="pull-left">
                                    <img class="img-responsive img-circle" src="<?php echo base_url(); ?>assets/imagescoop/testimonials1.png">
                                </div>
                                <div class="media-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>
                                    <span><strong>-John Doe/</strong> Director of corlate.com</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div> 
        </section> -->
        <section id="partner">
            <div class="container">
                <div class="center wow fadeInDown">
                    <h2 style="color: #000000;">Our Partners</h2>
                    <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
                </div>
                <div class="partners">
                    <ul>
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner6.png"></a></li>
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner8.png"></a></li>
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1500ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner11.png"></a></li>
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1500ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner13.png"></a></li>
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1500ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner12.png"></a></li>
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner7.png"></a></li>
                        
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner9.png"></a></li>
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1500ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner10.png"></a></li>
                        
                        
                        
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1500ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner14.png"></a></li>
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1500ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner15.png"></a></li>
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1500ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner16.png"></a></li>
                        <li> <a href="#"><img style="width: 100px;" class="img-responsive wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1500ms" src="<?php echo base_url(); ?>assets/imagescoop/partners/partner17.png"></a></li>
                        
                    </ul>
                </div>
            </div> 
        </section> 
        <section id="conatcat-info">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="media contact-info wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                            <div class="pull-left">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="media-body">
                                <h2>Have a question or need a help?</h2>
                                <p>Please contact us at +06-2318775</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </section> 
        <section id="bottom">
            <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                <div class="row">
                    <div class="col-md-3 col-md-offset-2">
                        <div class="widget">
                            <h3>Company</h3>
                            <ul>
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Copyright</a></li>
                                <li><a href="#">Terms of use</a></li>
                                <li><a href="#">Privacy policy</a></li>
                                <li><a href="#">Contact us</a></li>
                            </ul>
                        </div>
                    </div> 
                    <div class="col-md-3 col-sm-6">
                        <div class="widget">
                            <h3>Support</h3>
                            <ul>
                                <li><a href="#">Faq</a></li>
                                <li><a href="#">Documentation</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="widget">
                            <h3>Our Partners</h3>
                            <ul>
                                <li><a href="#">Malaysia Cooperative Societies Commission</a></li>
                                <li><a href="#">MNZWAJ Associated</a></li>
                                <li><a href="#">Department Of Islamic Development Malaysia</a></li>
                                <li><a href="#">Takaful Ikhlas Berhad</a></li>
                                
                            </ul>
                        </div>
                    </div> 
                </div>
            </div>
        </section> 
        <footer id="footer" class="midnight-blue">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        &copy; 2016 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">DinarPalCoop</a>. All Rights Reserved.
                    </div>
                    <div class="col-sm-6">
                        <ul class="pull-right">
                            <li><a href="<?php echo site_url('version3/faq') ?>">Faq</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer> 
        <script src="<?php echo base_url(); ?>assets/jscoop/jquery.js"></script>
        <script src="<?php echo base_url(); ?>assets/jscoop/bootstrap.min.js"></script>
        <script src="<?php echo base_url(); ?>assets/jscoop/jquery.prettyPhoto.js"></script>
        <script src="<?php echo base_url(); ?>assets/jscoop/jquery.isotope.min.js"></script>
        <script src="<?php echo base_url(); ?>assets/jscoop/main.js"></script>
        <script src="<?php echo base_url(); ?>assets/jscoop/wow.min.js"></script>
    </body>

    <!-- Mirrored from shapebootstrap.net/demo/html/corlate/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Oct 2016 08:30:25 GMT -->
</html>