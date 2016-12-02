<!--
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
-->
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
            <div class="login-form" style="width: 800px;">
            <table class="table"><tr><td></td></tr><tr><td >
                        
                            <form style="padding: 0% 0em;" class="form-horizontal" role="form" method="post" action="<?= site_url('login/daftar_members'); ?>" id="form1">

                                <br />
                                <h3 style="text-align:center ; color: #ffffff;"> Member Account &nbsp;&nbsp;&nbsp;<img src="<?= base_url() ?>assets/images/user43.png" width="50" height="50" /></h3>
                                <br />
                                <div class="col-md-12">

                                    <div class="form-group">
                                        <div class="col-sm-12 col-md-offset-1">
                                            <input type="text" class="form-control" name="ic" id="me_ic" placeholder="IC (Exp: 901221993028)" value="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 col-md-offset-1">
                                            <input type="text" class="form-control" name="phone" id="me_phone" placeholder="Phone Number (Exp: 0132348991)" value="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 col-md-offset-1">
                                            <input type="password" class="form-control" name="me_password" id="me_password" placeholder="Password (Exp: Abc123!@#)" value="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 col-md-offset-1">
                                            <input type="password" class="form-control" name="me_password2" id="me_password2" placeholder="Confirmation Password (Exp: Abc123!@#)" value="">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group" style="margin-bottom: 2%; margin-left: 2%;">
                                        <div class="col-sm-12">
                                            <center><button type="button" class="button blue-button" data-toggle="modal" style="width:90%;" id="">Register</button></center>
                                        </div>
                                    </div>                                    
                                </div>

                                <input name="me_account_type" type="hidden" value="1" />
                            </form></td></tr></table> 
                </div>


        </div>



        <?php
    } else {
        ?>



        <div class="container">
            <div class="login-form" style="width: 800px;">
                <table class="table">
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <form style="padding: 0% 0em;" class="form-horizontal" role="form" method="post" action="<?= site_url('login/daftar_members'); ?>" id="form2">
                                <br />
                                <h3 class="form-signin-heading" style="  text-align:center; color: #ffffff;"> Admin Account &nbsp;&nbsp;&nbsp;<img src="<?= base_url() ?>assets/images/maleuser.png" width="50" height="50" /></h3>
                                <br />
                                <div class="col-md-12">

                                    <div class="form-group">
                                        <div class="col-sm-12 col-md-offset-1">
                                            <input type="text" class="form-control" name="ic" id="me_ic" placeholder="IC (Exp: 902003991024)" value="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 col-md-offset-1">
                                            <input type="password" class="form-control" name="me_password" id="me_password" placeholder="Password (Exp: Abc123!@#)" value="">
                                        </div>
                                    </div>      
                                    <div class="form-group">
                                        <div class="col-sm-12 col-md-offset-1">
                                            <input type="password" class="form-control" name="me_password2" id="me_password2" placeholder="Confirmation Password (Exp: Abc123!@#)" value="">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <center><button type="button" class="button blue-button" data-toggle="modal" style="width:90%;" id="btn_reg2">Register</button></center>
                                        </div>
                                    </div>
                                </div>
                                <input name="me_account_type" type="hidden" value="2" />
                            </form>            
                        </td>
                    </tr>
                </table>
            </div>
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






