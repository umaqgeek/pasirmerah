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
                        <a class="navbar-brand" href="<?= site_url('version3/home');?>"><img src="<?php echo base_url(); ?>assets/imagescoop/logo1.png" alt="logo"></a>
                    </div>
                    <div class="collapse navbar-collapse navbar-right">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="blog-item.html">Profile</a></li>
                                    <li><a href="pricing.html">Manage Member Profile</a></li>
                                    <li><a href="pricing.html">Share</a></li>
                                    <li><a href="pricing.html">Configuration</a></li>
                                </ul>
                            </li>
                            <li><a href="<?= site_url('version3/login'); ?>">Log Out</a></li>
                        </ul>
                    </div>
                </div> 
            </nav> 
        </header>

        <div class="container">
            <style>
                div.shadow:hover {
                    -moz-box-shadow: 0 0 5px rgba(0,0,0,0.5);
                    -webkit-box-shadow: 0 0 5px rgba(0,0,0,0.5);
                    box-shadow: 0 0 2px rgba(0,0,0,0.5);


                }
            </style>


            <div class="container">

                <div class="col-md-3 col-md-offset-3" class="shadow" style=" border-radius: 5px; border: 2px solid #FFF; padding: 20px 20px 20px; ">

                    <a href="<?= site_url('version3/addmember') ?>" style="text-decoration:none">

                        <div class="shadow" style=" border-radius: 5px; border: 1px solid #ccc;  padding: 10px;  height:130px; ">
                            <center>
                                <img src="<?= base_url() . 'assets/images/overview1.png' ?>"  width="80px" height="80px" >  

                                <div >Add Member</div>
                            </center>  
                        </div>

                    </a>

                </div>
                
                <div class="col-md-3" class="shadow" style=" border-radius: 5px; border: 2px solid #FFF; padding: 20px 20px 20px; ">

                    <a href="<?= site_url('version3/manageProfile') ?>" style="text-decoration:none">

                        <div class="shadow" style=" border-radius: 5px; border: 1px solid #ccc;  padding: 10px;  height:130px; ">
                            <center>
                                <img src="<?= base_url() . 'assets/images/overview1.png' ?>"  width="80px" height="80px" >  

                                <div >Manage Member</div>
                            </center>  
                        </div>

                    </a>

                </div>

            </div>

        </div>
        
        <!--
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <br></br> 
                    <table class="table" border="0">
                        <tr>
                            <th>Search Username</th>
                            <th>:</th>
                            <td>
                                <input type="text" name="me_username" id="me_username" class="form-control" placeholder="Customer's username in dinarpal." />
                            </td>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <td>
                                <button type='submit' class="button">Search</button>
                            </td>
                        </tr>
                    </table>

                </div>
            </div>
        </div>-->

    </body>



</html>






