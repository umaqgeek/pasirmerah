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
                                    <li><a href="pricing.html">Paymnet</a></li>
                                </ul>
                            </li>
                            <li><a href="<?= site_url('version3/login'); ?>">Log Out</a></li>
                        </ul>
                    </div>
                </div> 
            </nav> 
        </header>

        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <br><br />
                    
                    <button type="button" class="button" onclick="location.href = '<?= site_url('staff/newMenu/manageprofile/019'); ?>';">Back</button>

                    <br><br />

                    <form method="post" action="<?= site_url('staff/manageStaff/manageProfile/x16'); ?>" enctype="multipart/form-data">

                        <table class="table">
                            <tr>
                                <th>Profile Image</th>
                                <th>:</th>
                                <td>
                                    <img src="<?= base_url(); ?>assets/uploads/profile/" class="img-circle" style="max-width: 150px; max-height: 150px;" />
                                    <br />
                                    <input type="hidden" name="me_image2" value="" />
                                    <input type="file" name="me_image" class="form-control" placeholder="Upload profile image here." />
                                </td>
                            </tr>
                            <tr>
                                <th>Username</th>
                                <th>:</th>
                                <td>
                                    <input type="text" name="me_username" value="" class="form-control" placeholder="Insert username here." />
                                    <input type="hidden" name="me_username2" value="" />
                                </td>
                            </tr>
                            <tr>
                                <th>First Name</th>
                                <th>:</th>
                                <td>
                                    <input type="text" name="me_firstname" value="" class="form-control" placeholder="Insert first name here." />
                                </td>
                            </tr>
                            <tr>
                                <th>Last Name</th>
                                <th>:</th>
                                <td>
                                    <input type="text" name="me_lastname" value="" class="form-control" placeholder="Insert last name here." />
                                </td>
                            </tr>
                            <tr>
                                <th>E-Mail</th>
                                <th>:</th>
                                <td>
                                    <input type="text" name="me_email" value="" class="form-control" placeholder="Insert email here." />
                                </td>
                            </tr>
                            <tr>
                                <th>Gender</th>
                                <th>:</th>
                                <td>
                                    <select name="g_id" class="form-control">
                                        <?php
                                        if (isset($gender) && !empty($gender)) {
                                            foreach ($gender as $g) {
                                                ?>
                                                <option value="<?= $g->g_id; ?>" <?php
                                                if ($g->g_id == $profile[0]->g_id) {
                                                    echo "selected";
                                                }
                                                ?>><?= $g->g_desc; ?></option>
                                                    <?php
                                                    }
                                                }
                                                ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>Office Branch</th>
                                <th>:</th>
                                <td>
                                    <select name="sl_id" class="form-control">
                                        <?php
                                        if (isset($branch) && !empty($branch)) {
                                            foreach ($branch as $sl) {
                                                ?>
                                                <option value="<?= $sl->sl_id; ?>" <?php
                                                if ($sl->sl_id == $profile[0]->sl_id) {
                                                    echo "selected";
                                                }
                                                ?>><?= $sl->sl_name; ?></option>
                                                    <?php }
                                                }
                                                ?>
                                    </select>
                                </td>
                            </tr>>
                        </table>

                        <button type="submit" class="button">Submit</button>

                    </form>
                </div>
            </div>

        </div>

    </body>



</html>






