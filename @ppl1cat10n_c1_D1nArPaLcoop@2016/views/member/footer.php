<br /><br /><br /><br />

<?php if (isset($error)) { ?>
    <div class="modal collapse" id="basicModalError" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
        <div class="modal-dialog" style="margin-top:20%;">
            <div class="modal-content">
                <div class="modal-header">
                    <i class="fa fa-exclamation-triangle fa-2x" style="color:#c0392b"></i>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times" ></i></button>
                    <BR>
                </div>
                <div class="modal-body">

                    <!--<div class="alert alert-danger fade in" role="alert"> -->
                    <div class="col-md-9" style="float:left;" >
                        <?= $error; ?> 
                    </div>

                    <div class="col-md-3"  align="right">
                        <button type="button" class="button red-button" data-toggle="modal"  data-dismiss="modal" style="height:30px;line-height:5px;">OK</button>
                    </div>
                    <!--</div> -->

                    <BR><BR>

                </div>
            </div>
        </div>
    </div>
<?php } else if (isset($sucess)) { ?>
    <div class="modal collapse" id="basicModalError" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
        <div class="modal-dialog" style="margin-top:20%;">
            <div class="modal-content">
                <div class="modal-header">
                    <i class="fa fa-check-circle fa-2x"  style="color:#27ae60;"></i>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times" ></i></button>
                    <BR>
                </div>
                <div class="modal-body">

                    <!-- <div class="alert alert-success fade in" role="alert"> -->
                    <div class="col-md-9" style="float:left;" >
                        <?= $sucess; ?> 
                    </div>

                    <div class="col-md-3"  align="right">
                        <button type="button" class="button green-button" data-toggle="modal"  data-dismiss="modal" style="height:30px;line-height:5px;">OK</button>
                    </div>

                    <!-- </div> -->

                    <BR><BR>

                </div>
            </div>
        </div>
    </div>
<?php } else if (isset($info)) { ?>
    <div class="modal fade" id="basicModalError" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
                </div>
                <div class="modal-body">

                    <div class="alert alert-info fade in" role="alert"><?= $info; ?></div>

                </div>
            </div>
        </div>
    </div>
<?php } ?>

<!-- Start of footer.php -->
<script>

idleTime = 0;
    
function timerIncrement() {
    idleTime = idleTime + 1;
    if (idleTime > 10) { // more than 10 minutes
        alert('You have idle for too long!');
        location.href='<?=site_url('member/logout'); ?>';
    }
    timeout = setTimeout('timerIncrement()', 60000);
}

  function printDiv(divName) {
      var printContents = document.getElementById(divName).innerHTML;
      var originalContents = document.body.innerHTML;

      document.body.innerHTML = printContents;

      window.print();

      document.body.innerHTML = originalContents;
  }

  $(document).ready(function () {
      
      // checking idle time
    timerIncrement();
    //Zero the idle timer on mouse movement.
    $(this).mousemove(function (e) {
//        $.post("<?=site_url('staff/saveOnline'); ?>", {}).done(function (data) {});
        idleTime = 0;
    });
    $(this).keypress(function (e) {
        $.post("<?=site_url('staff/saveOnline'); ?>", {}).done(function (data) {});
        idleTime = 0;
    });
    
    checkSession();
      
      var options = {
          "backdrop": "true"
      }
      $('#basicModalError').modal(options);
  });
  
  function checkSession() {
    // check session
    $.post("<?=site_url('staff/checkSession1'); ?>", {
    }).done(function (data) {
        if (data == '1') {
            timeout2 = setTimeout('checkSession()', 5000);
        } else {
            alert('You have logged out!');
            location.href='<?=site_url('staff/logout'); ?>';
        }
    });
}

  var kiraBukak = 1;
  $(function () {
      $("#demo img[title]").tooltip();
  });
  $(".nav-child").hide();
  $(".nav-parent").click(function () {
      if (kiraBukak % 2 == 0) {
          $(".nav-child").hide(100);
          $(this).next(".nav-child").show(100);
      } else {
          $(".nav-child").hide(100);
          $(this).next(".nav-child:hidden").show(100);
      }
      kiraBukak += 1;
  });
  var page = '<?= $this->uri->segment(2) ?>';
  $(".nav-parent[title='" + page + "']").next(".nav-child").show();
  $("ul.nav-tabs > li").click(function () {
      $("ul.nav-tabs > li").removeClass("active");
      $(this).addClass("active");
      var ti = $(this).attr("ti");
      $(".nav-ul").hide();
      $("div[til=" + ti + "]").show(100);
  });
  $(".nav-ul").hide();
  $("div[til=1]").show();
</script>

<script>
    $(document).ready(function () {
        var it1 = $("#it1").val();
        var it2 = $("#it2").val();
        var it3 = $("#it3").val();
        var it4 = $("#it4").val();
        var it5 = $("#it5").val();

        $("#username").keyup(function () {
            username = $("#username").val();
            //console.log(username);
            $.post("<?= site_url('staff/getUserAccount'); ?>", {me_username: username}).done(function (data) {
                $("#username_account").html(data);
                //console.log(data);
            });
        });

        var amid = $("#amil").val();
        $.post("<?= site_url('staff/getAmil'); ?>", {am_id: amid}).done(function (data) {
            $("#appointed_amil").html(data);
        });
        $("#amil").change(function () {
            amid = $("#amil").val();
            $.post("<?= site_url('staff/getAmil'); ?>", {am_id: amid}).done(function (data) {
                $("#appointed_amil").html(data);
            });
        });

        $("#btn_pnp1").click(function () {
            $("#form_pnp1").submit();
        });

        $.post("<?= site_url('staff/getAjaxItemType'); ?>", {it_id: it1, row: 1}).done(function (data) {
            $("#item_type_child_change_1").html(data);
        });
        $("#it1").change(function () {
            var it1 = $("#it1").val();
            $.post("<?= site_url('staff/getAjaxItemType'); ?>", {it_id: it1, row: 1}).done(function (data) {
                $("#item_type_child_change_1").html(data);
            });
        });

        $.post("<?= site_url('staff/getAjaxItemType'); ?>", {it_id: it2, row: 2}).done(function (data) {
            $("#item_type_child_change_2").html(data);
        });
        $("#it2").change(function () {
            var it2 = $("#it2").val();
            $.post("<?= site_url('staff/getAjaxItemType'); ?>", {it_id: it2, row: 2}).done(function (data) {
                $("#item_type_child_change_2").html(data);
            });
        });

        $.post("<?= site_url('staff/getAjaxItemType'); ?>", {it_id: it3, row: 3}).done(function (data) {
            $("#item_type_child_change_3").html(data);
        });
        $("#it3").change(function () {
            var it3 = $("#it3").val();
            $.post("<?= site_url('staff/getAjaxItemType'); ?>", {it_id: it3, row: 3}).done(function (data) {
                $("#item_type_child_change_3").html(data);
            });
        });

        $.post("<?= site_url('staff/getAjaxItemType'); ?>", {it_id: it4, row: 4}).done(function (data) {
            $("#item_type_child_change_4").html(data);
        });
        $("#it4").change(function () {
            var it4 = $("#it4").val();
            $.post("<?= site_url('staff/getAjaxItemType'); ?>", {it_id: it4, row: 4}).done(function (data) {
                $("#item_type_child_change_4").html(data);
            });
        });

        $.post("<?= site_url('staff/getAjaxItemType'); ?>", {it_id: it5, row: 5}).done(function (data) {
            $("#item_type_child_change_5").html(data);
        });
        $("#it5").change(function () {
            var it5 = $("#it5").val();
            $.post("<?= site_url('staff/getAjaxItemType'); ?>", {it_id: it5, row: 5}).done(function (data) {
                $("#item_type_child_change_5").html(data);
            });
        });

    });

    function addCommas(n) {
        var rx = /(\d+)(\d{3})/;
        return String(n).replace(/^\d+/, function (w) {
            while (rx.test(w)) {
                w = w.replace(rx, '$1,$2');
            }
            return w;
        });
    }

    tukarRate();
    function calculate(n) {

        var it = document.getElementById('it' + n).value;
        var q = document.getElementById('q' + n).value;
        var pu = document.getElementById('pu' + n).value;
        var itct = document.getElementById('itct' + n).value;

        /*$.post( "<?= site_url('staff/getAjaxItemType'); ?>", { it_id: it }).done(function( data ) {
         $("#item_type_child_change_"+n).html( data );
         });*/


        var price = 0.00;
        var nilai = 0.00;
        var weight = 0;
        var totalWeight = 0;


        $.post("<?= site_url('main/ajaxCalculatorStaff/') ?>/" + it + '/' + pu + '/' + itct).done(function (data) {
            var d = data;
            price = d.split('|')[0] / d.split('|')[1];
            //get the itct_weight
            weight = d.split('|')[2];
            totalWeight = weight * q;

            /*$.post( "<?= site_url('main/ajaxCalculator/') ?>/" + it + '/' + pu ).done(function( data ) {
               
             });
             */
            nilai = price * totalWeight;
            document.getElementById('price' + n).innerHTML = addCommas(price.toFixed(2));
            document.getElementById('nilai' + n).innerHTML = addCommas(nilai.toFixed(2));
            document.getElementById('price_' + n).value = price.toFixed(2);
            document.getElementById('weight_' + n).value = totalWeight.toFixed(2);
            document.getElementById('nilai_' + n).value = nilai.toFixed(2);
            var totaPrice = 0.00;
            for (i = 1; i <= 5; i++) {
                totaPrice += parseFloat(document.getElementById('nilai_' + i).value);
            }
            document.getElementById('totaPrice').innerHTML = addCommas(totaPrice.toFixed(2));
            document.getElementById('totaPrice_1').value = totaPrice.toFixed(2);
            var col_rate = document.getElementById('col_rate').value;
            var col_nilai = totaPrice * (col_rate * 1.0 / 100);
            document.getElementById('col_nilai').innerHTML = addCommas(col_nilai.toFixed(2));
            var keeping_period = document.getElementById('keeping_period').value;
            var safe_keeping_fee = document.getElementById('safe_keeping_fee').innerHTML;
            var keeping_period_fee = totaPrice * (safe_keeping_fee / 100) * keeping_period;
            document.getElementById('keeping_period_fee').innerHTML = addCommas(keeping_period_fee.toFixed(2));
        });
    }

    function calculateitct(n)
    {
        var it = document.getElementById('it' + n).value;
        var q = document.getElementById('q' + n).value;
        var pu = document.getElementById('pu' + n).value;
        var itct = document.getElementById('itct' + n).value;

        $.post("<?= site_url('main/ajaxCalculatorStaff/') ?>/" + it + '/' + pu + '/' + itct).done(function (data) {

            var d = data;
            price = d.split('|')[0] / d.split('|')[1];

            //get the itct_weight
            weight = d.split('|')[2];
            totalWeight = weight * q;

            nilai = price * totalWeight;
            document.getElementById('price' + n).innerHTML = addCommas(price.toFixed(2));
            document.getElementById('nilai' + n).innerHTML = addCommas(nilai.toFixed(2));
            document.getElementById('price_' + n).value = price.toFixed(2);
            document.getElementById('weight_' + n).value = totalWeight.toFixed(2);
            document.getElementById('nilai_' + n).value = nilai.toFixed(2);
            var totaPrice = 0.00;
            for (i = 1; i <= 5; i++) {
                totaPrice += parseFloat(document.getElementById('nilai_' + i).value);
            }
            document.getElementById('totaPrice').innerHTML = addCommas(totaPrice.toFixed(2));
            document.getElementById('totaPrice_1').value = totaPrice.toFixed(2);
            var col_rate = document.getElementById('col_rate').value;
            var col_nilai = totaPrice * (col_rate * 1.0 / 100);
            document.getElementById('col_nilai').innerHTML = addCommas(col_nilai.toFixed(2));
            var keeping_period = document.getElementById('keeping_period').value;
            var safe_keeping_fee = document.getElementById('safe_keeping_fee').innerHTML;
            var keeping_period_fee = totaPrice * (safe_keeping_fee / 100) * keeping_period;
            document.getElementById('keeping_period_fee').innerHTML = addCommas(keeping_period_fee.toFixed(2));

        });
    }

    function tukarRate() {
        var totaPrice = 0.00;
        for (i = 1; i <= 5; i++) {
            totaPrice += parseFloat(document.getElementById('nilai_' + i).value);
        }
        document.getElementById('totaPrice').innerHTML = addCommas(totaPrice.toFixed(2));
        document.getElementById('totaPrice_1').value = totaPrice.toFixed(2);
        var col_rate = document.getElementById('col_rate').value;
        var col_nilai = totaPrice * (col_rate * 1.0 / 100);
        document.getElementById('col_nilai').innerHTML = addCommas(col_nilai.toFixed(2));
        var keeping_period = document.getElementById('keeping_period').value;
        var safe_keeping_fee = document.getElementById('safe_keeping_fee').innerHTML;
        var keeping_period_fee = totaPrice * (safe_keeping_fee / 100) * keeping_period;
        document.getElementById('keeping_period_fee').innerHTML = addCommas(keeping_period_fee.toFixed(2));
    }
    function validateField(field) {
        if (field == '') {
            return false;
        }
        if (field == null) {
            return false;
        }
        if (field == 0) {
            return false;
        }
        return true;
    }
</script>

<!--Start of Tawk.to Script-->
<script type="text/javascript">
$(document).ready(function () {
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/57946b89660462dd70bca746/default';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
    })();
});
</script>
<!--End of Tawk.to Script-->

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script type="text/javascript">
    URL_SERVER = '<?= site_url('staff/saveTracking'); ?>';
</script>
<script type="text/javascript" src="<?= base_url(); ?>assets/js/my_tracking.js"></script>


</body>
</html>
<!-- / footer.php -->