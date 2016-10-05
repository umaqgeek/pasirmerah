
<script src="<?php echo base_url(); ?>assets/jss/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>assets/jss/jquery.backstretch.js"></script>
<script>
    $.backstretch([
        "<?php echo base_url(); ?>assets/imagess/slider/bg10.jpg",
        "<?php echo base_url(); ?>assets/imagess/slider/bg11.jpg",
        "<?php echo base_url(); ?>assets/imagess/slider/bg121.jpg"
    ], {
        fade: 850, //Speed of Fade
        duration: 10000  //Time of image display
    });

    $(document).ready(function () {
        $("#btn_reg").attr("disabled", "disabled");
        $("#btn_reg").addClass("disabled");
        $("#label11, #label12, #label13").click(function () {
            if ($('#rulecond11').prop('checked') && $('#rulecond12').prop('checked') && $('#rulecond13').prop('checked')) {
                $("#btn_reg").removeAttr("disabled");
                $("#btn_reg").removeClass("disabled");
            } else {
                $("#btn_reg").attr("disabled", "disabled");
                $("#btn_reg").addClass("disabled");
            }
        });

        $("#btn_reg").click(function () {
            $(this).attr("disabled", "disabled").addClass("disabled");
            $("#form1").submit();
        });

        $("#btn_reg2").attr("disabled", "disabled");
        $("#btn_reg2").addClass("disabled");
        $("#label21, #label22, #label23").click(function () {
            if ($('#rulecond21').prop('checked') && $('#rulecond22').prop('checked') && $('#rulecond23').prop('checked')) {
                $("#btn_reg2").removeAttr("disabled");
                $("#btn_reg2").removeClass("disabled");
            } else {
                $("#btn_reg2").attr("disabled", "disabled");
                $("#btn_reg2").addClass("disabled");
            }
        });

        $("#btn_reg2").click(function () {
            $(this).attr("disabled", "disabled").addClass("disabled");
            $("#form2").submit();
        });
    });
</script>

<style>
    .info-rule {
        padding-bottom: 1%;
        padding-left: 1%;
        padding-right: 1%;
        padding-top: 1%;
    }
    .link-info {
        color: #ffd700;
        text-decoration: none;
    }
</style>

<?php
if (isset($page)) {
    if ($page == "personal") {
        ?>


        <div class="container">

            <!--<ul class="nav nav-tabs"> 
              <li class="<?= $per; ?>" ti="1">
                  <a href="#">Personal Account</a>
                </li> 
                <li class="<?= $cop; ?>" ti="2">
                  <a href="#">Corporat Account</a>
                </li>
            </ul> -->



                        <!--  <td til="1" class="nav-ul"> -->

            <table class="table"><tr><td></td></tr><tr><td >
                        <div class="col-md-12 img-rounded" style="margin-top:0; background-color: rgba(255,255,255,0.5); height: auto;">
                            <form class="form-horizontal" role="form" method="post" action="<?= site_url('login/daftar_members'); ?>" id="form1">

                                <br />
                                <h3 class="form-signin-heading" style="  text-align:center ; "> Personal Account &nbsp;&nbsp;&nbsp;<img src="<?= base_url() ?>assets/images/user43.png" width="50" height="50" /></h3>
                                <br />
                                <div class="col-md-12">

                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="text" class="form-control" name="me_username" id="me_username" placeholder="Username (Exp: John13)" value="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12" >
                                            <input type="text" class="form-control" name="me_email" id="me_email" placeholder="E-Mail (Exp: youremail@email.com)" value="">
                                        </div>
                                    </div>
                                    <!--                                <div class="form-group">
                                                                        <div class="col-sm-6">
                                                                            <input type="password" class="form-control" name="me_password" id="me_password" placeholder="Password (Exp: Abc123!@#)" value="">
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <input type="password" class="form-control" name="me_password2" id="me_password2" placeholder="Confirmation Password (Exp: Abc123!@#)" value="">
                                                                        </div>
                                                                    </div>-->
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="text" class="form-control" name="me_whatsapp_no" id="me_whatsapp_no" placeholder="Phone No. (Exp: 0199737578)" value="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-3">
                                        </div>
                                        <div class="col-sm-6 bg-primary info-rule img-rounded">
                                            <label style="cursor: pointer;" id="label11">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top">
                                                            <p align="justify"><input type="checkbox" id="rulecond11" name="rulecond11" class="" />
                                                            </p>
                                                        </td>
                                                        <td valign="top" width="10px">&nbsp;</td>
                                                        <td>
                                                            <p align="justify">
                                                                by clicking this, your are hereby agree with our <a class="link-info" href="<?= site_url('version3/privacy'); ?>">Privacy Policy</a>.
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </label>
                                            <br />
                                            <label style="cursor: pointer;" id="label12">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top">
                                                            <p align="justify"><input type="checkbox" id="rulecond12" name="rulecond12" class="" />
                                                            </p>
                                                        </td>
                                                        <td valign="top" width="10px">&nbsp;</td>
                                                        <td>
                                                            <p align="justify">
                                                                by clicking this, your are hereby agree with our <a class="link-info" href="<?= site_url('version3/legal'); ?>">User Agreement for DinarPal services</a>.
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </label>
                                            <br />
                                            <label style="cursor: pointer;" id="label13">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top">
                                                            <p align="justify"><input type="checkbox" id="rulecond13" name="rulecond13" class="" />
                                                            </p>
                                                        </td>
                                                        <td valign="top" width="10px">&nbsp;</td>
                                                        <td>
                                                            <p align="justify">
                                                                by clicking this, your are hereby agree with our <a class="link-info" href="<?= site_url('version3/condition'); ?>">Terms of Use</a>.
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-bottom: 2%;">
                                        <div class="col-sm-12">
                                            <button type="button" class="button blue-button" data-toggle="modal" style="width:100%;" id="btn_reg">Register</button>
                                        </div>
                                    </div>                                    
                                </div>

                                <input name="me_account_type" type="hidden" value="1" />
                            </form> 

                        </div>        </td></tr></table> 


        </div>



        <?php
    } else {
        ?>



        <div class="container">

            <!--<ul class="nav nav-tabs"> 
              <li class="<?= $per; ?>" ti="1">
                  <a href="#">Personal Account</a>
                </li> 
                <li class="<?= $cop; ?>" ti="2">
                  <a href="#">Corporat Account</a>
                </li>
            </ul> -->
                          <!--  <td til="2" class="nav-ul">  -->
            <table class="table"><tr><td></td></tr><tr><td>

                        <div class="col-md-12 img-rounded" style="margin-top:0; background-color: rgba(225,225,225,0.5); height: auto;">
                            <form class="form-horizontal" role="form" method="post" action="<?= site_url('login/daftar_members'); ?>" id="form2">
                                <br />
                                <h3 class="form-signin-heading" style="  text-align:center ; "> Corporate Account &nbsp;&nbsp;&nbsp;<img src="<?= base_url() ?>assets/images/maleuser.png" width="50" height="50" /></h3>
                                <br />
                                <div class="col-md-12">

                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="text" class="form-control" name="me_username" id="me_username" placeholder="Username (Exp: John13)" value="">
                                        </div>
                                    </div>

                                    <!-- <div class="form-group">
                                         <div class="col-sm-12">
                                           <input type="text" class="form-control" name="me_firstname" id="me_firstname" placeholder="First Name" value="">
                                         </div>
                                     </div>
                                       <div class="form-group">
                                         <div class="col-sm-12">
                                           <input type="text" class="form-control" name="me_lastname" id="me_lastname" placeholder="Last Name" value="">
                                         </div>
                                       </div> -->

                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="text" class="form-control" name="me_email" id="me_email" placeholder="E-Mail (Exp: youremail@email.com)" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <input type="text" class="form-control" name="me_company" id="me_company" placeholder="Company Name (Exp: John Pvt. Ltd.)" value="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" name="me_reg_num" id="me_reg_num" placeholder="Company Registration Number (Exp: 1234567-A)" value="">
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" name="me_whatsapp_no" id="me_whatsapp_no" placeholder="Phone No. (Exp: 0199737578)" value="">
                                        </div>
                                    </div>
                                    <!--                                    <div class="form-group">
                                                                            <div class="col-sm-4">
                                                                                <input type="password" class="form-control" name="me_password" id="me_password" placeholder="Password (Exp: Abc123!@#)" value="">
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <input type="password" class="form-control" name="me_password2" id="me_password2" placeholder="Confirmation Password (Exp: Abc123!@#)" value="">
                                                                            </div>
                                                                        </div>-->
                                    <div class="form-group">
                                        <div class="col-sm-12 bg-primary info-rule img-rounded">
                                            <label style="cursor: pointer;" id="label21">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top">
                                                            <p align="justify"><input type="checkbox" id="rulecond21" name="rulecond21" class="" />
                                                            </p>
                                                        </td>
                                                        <td valign="top" width="10px">&nbsp;</td>
                                                        <td>
                                                            <p align="justify">
                                                                by clicking this, your are hereby agree with our <a class="link-info" href="<?= site_url('version3/privacy'); ?>">Privacy Policy</a>.
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </label>
                                            <br />
                                            <label style="cursor: pointer;" id="label22">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top">
                                                            <p align="justify"><input type="checkbox" id="rulecond22" name="rulecond22" class="" />
                                                            </p>
                                                        </td>
                                                        <td valign="top" width="10px">&nbsp;</td>
                                                        <td>
                                                            <p align="justify">
                                                                by clicking this, your are hereby agree with our <a class="link-info" href="<?= site_url('version3/legal'); ?>">User Agreement for DinarPal services</a>.
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </label>
                                            <br />
                                            <label style="cursor: pointer;" id="label23">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top">
                                                            <p align="justify"><input type="checkbox" id="rulecond23" name="rulecond23" class="" />
                                                            </p>
                                                        </td>
                                                        <td valign="top" width="10px">&nbsp;</td>
                                                        <td>
                                                            <p align="justify">
                                                                by clicking this, your are hereby agree with our <a class="link-info" href="<?= site_url('version3/condition'); ?>">Terms of Use</a>.
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <button type="button" class="button blue-button" data-toggle="modal" style="width:100%;" id="btn_reg2">Register</button>
                                        </div>
                                    </div>
                                </div>
                                <input name="me_account_type" type="hidden" value="2" />
                            </form></div>  </td></tr></table>

        </div>

        <br />
        <br />
        <br />
        <br />


        <?php
    }
} else {
    
}
?>






