      </div>
  </div>

  <!-- Start of footer.php -->
  <script src="<?php echo base_url().'assets/js/bootstrap.js' ?>"></script>
  <script src="<?php echo base_url().'assets/js/bootigniter.js' ?>"></script>
  <script>
  var kiraBukak = 1;
  $(function() {
  	$("#demo img[title]").tooltip();
  });
  $(".nav-child").hide();
  $(".nav-parent").click(function() {
  	if (kiraBukak % 2 == 0) {
  		$(".nav-child").hide(100);
  		$(this).next(".nav-child").show(100);
  	} else {
  		$(".nav-child").hide(100);
  		$(this).next(".nav-child:hidden").show(100);
  	}
  	kiraBukak += 1;
  });
  var page = '<?=$this->uri->segment(2)?>';
  $(".nav-parent[title='"+page+"']").next(".nav-child").show();
  $("ul.nav-tabs > li").click(function() {
  	$("ul.nav-tabs > li").removeClass("active");
  	$(this).addClass("active");
  	var ti = $(this).attr("ti");
  	$(".nav-ul").hide();
  	$("div[til="+ti+"]").show(100);
  });
  $(".nav-ul").hide();
  $("div[til=1]").show();
  </script>

  <script>
  idleTime = 0;

  $(document).ready(function() {
  	var it1 = $("#it1").val();
  	var it2 = $("#it2").val();
  	var it3 = $("#it3").val();
  	var it4 = $("#it4").val();
  	var it5 = $("#it5").val();

  	var amid = $("#amil").val();
  	$.post( "<?=site_url('staff/getAmil'); ?>", { am_id: amid }).done(function( data ) {
  		$("#appointed_amil").html( data );
  	});
  	$("#amil").change(function() {
  		amid = $("#amil").val();
  		$.post( "<?=site_url('staff/getAmil'); ?>", { am_id: amid }).done(function( data ) {
  			$("#appointed_amil").html( data );
  		});
  	});

  	$("#btn_pnp1").click(function() {
  		$("#form_pnp1").submit();
  	});

  	$.post( "<?=site_url('staff/getAjaxItemType'); ?>", { it_id: it1, row:1 }).done(function( data ) {
  		$("#item_type_child_change_1").html( data );
  	});
  	$("#it1").change(function() {
  		var it1 = $("#it1").val();
  		$.post( "<?=site_url('staff/getAjaxItemType'); ?>", { it_id: it1,row:1 }).done(function( data ) {
  			$("#item_type_child_change_1").html( data );
  		});
  	});

  	$.post( "<?=site_url('staff/getAjaxItemType'); ?>", { it_id: it2, row:2 }).done(function( data ) {
  		$("#item_type_child_change_2").html( data );
  	});
  	$("#it2").change(function() {
  		var it2 = $("#it2").val();
  		$.post( "<?=site_url('staff/getAjaxItemType'); ?>", { it_id: it2,row:2 }).done(function( data ) {
  			$("#item_type_child_change_2").html( data );
  		});
  	});

  	$.post( "<?=site_url('staff/getAjaxItemType'); ?>", { it_id: it3, row:3 }).done(function( data ) {
  		$("#item_type_child_change_3").html( data );
  	});
  	$("#it3").change(function() {
  		var it3 = $("#it3").val();
  		$.post( "<?=site_url('staff/getAjaxItemType'); ?>", { it_id: it3,row:3 }).done(function( data ) {
  			$("#item_type_child_change_3").html( data );
  		});
  	});

  	$.post( "<?=site_url('staff/getAjaxItemType'); ?>", { it_id: it4, row:4 }).done(function( data ) {
  		$("#item_type_child_change_4").html( data );
  	});
  	$("#it4").change(function() {
  		var it4 = $("#it4").val();
  		$.post( "<?=site_url('staff/getAjaxItemType'); ?>", { it_id: it4,row:4 }).done(function( data ) {
  			$("#item_type_child_change_4").html( data );
  		});
  	});

  	$.post( "<?=site_url('staff/getAjaxItemType'); ?>", { it_id: it5, row:5 }).done(function( data ) {
  		$("#item_type_child_change_5").html( data );
  	});
  	$("#it5").change(function() {
  		var it5 = $("#it5").val();
  		$.post( "<?=site_url('staff/getAjaxItemType'); ?>", { it_id: it5,row:5 }).done(function( data ) {
  			$("#item_type_child_change_5").html( data );
  		});
  	});

  });

      function addCommas(n){
      	var rx=  /(\d+)(\d{3})/;
      	return String(n).replace(/^\d+/, function(w){
      		while(rx.test(w)){
      			w= w.replace(rx, '$1,$2');
      		}
      		return w;
      	});
      }

      tukarRate();
      function calculate(n) {

      	var it = document.getElementById('it'+n).value;
      	var q = document.getElementById('q'+n).value;
      	var pu = document.getElementById('pu'+n).value;
      	var itct = document.getElementById('itct'+n).value;

	/*$.post( "<?=site_url('staff/getAjaxItemType'); ?>", { it_id: it }).done(function( data ) {
		$("#item_type_child_change_"+n).html( data );
	});*/


      var price = 0.00;
      var nilai = 0.00;
      var weight= 0;
      var totalWeight=0;


      $.post( "<?=site_url('main/ajaxCalculatorStaff/') ?>/" + it + '/' + pu + '/' + itct ).done(function( data ) {
      	var d = data;
      	price = d.split('|')[0] / d.split('|')[1];
		//get the itct_weight
		weight=d.split('|')[2];
		totalWeight=weight*q;

		/*$.post( "<?=site_url('main/ajaxCalculator/') ?>/" + it + '/' + pu ).done(function( data ) {
			
			});
      */
      nilai = price * totalWeight;
      document.getElementById('price'+n).innerHTML = addCommas(price.toFixed(2));
      document.getElementById('nilai'+n).innerHTML = addCommas(nilai.toFixed(2));
      document.getElementById('price_'+n).value = price.toFixed(2);
      document.getElementById('weight_'+n).value = totalWeight.toFixed(2);
      document.getElementById('nilai_'+n).value = nilai.toFixed(2);
      var totaPrice = 0.00;
      for (i = 1; i <= 5; i++) {
      	totaPrice += parseFloat(document.getElementById('nilai_'+i).value);
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
  	var it = document.getElementById('it'+n).value;
  	var q = document.getElementById('q'+n).value;
  	var pu = document.getElementById('pu'+n).value;
  	var itct = document.getElementById('itct'+n).value;

  	$.post( "<?=site_url('main/ajaxCalculatorStaff/') ?>/" + it + '/' +pu+ '/' + itct ).done(function( data ) {

  		var d = data;
  		price = d.split('|')[0] / d.split('|')[1];

    //get the itct_weight
    weight=d.split('|')[2];
    totalWeight=weight*q;

    nilai = price * totalWeight;
    document.getElementById('price'+n).innerHTML = addCommas(price.toFixed(2));
    document.getElementById('nilai'+n).innerHTML = addCommas(nilai.toFixed(2));
    document.getElementById('price_'+n).value = price.toFixed(2);
    document.getElementById('weight_'+n).value = totalWeight.toFixed(2);
    document.getElementById('nilai_'+n).value = nilai.toFixed(2);
    var totaPrice = 0.00;
    for (i = 1; i <= 5; i++) {
    	totaPrice += parseFloat(document.getElementById('nilai_'+i).value);
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
  		totaPrice += parseFloat(document.getElementById('nilai_'+i).value);
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

  <?php if(isset($error)) { ?>
  <div class="modal fade" id="basicModalError" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
  	<div class="modal-dialog">
  		<div class="modal-content">
  			<div class="modal-header">
  				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
  			</div>
  			<div class="modal-body">

  				<div class="alert alert-danger fade in" role="alert"><?=$error; ?></div>

  			</div>
  		</div>
  	</div>
  </div>
  <?php } else if(isset($sucess)) { ?>
  <div class="modal fade" id="basicModalError" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
  	<div class="modal-dialog">
  		<div class="modal-content">
  			<div class="modal-header">
  				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
  			</div>
  			<div class="modal-body">

  				<div class="alert alert-success fade in" role="alert"><?=$sucess; ?></div>

  			</div>
  		</div>
  	</div>
  </div>
  <?php } else if(isset($info)) { ?>
  <div class="modal fade" id="basicModalError" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
  	<div class="modal-dialog">
  		<div class="modal-content">
  			<div class="modal-header">
  				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
  			</div>
  			<div class="modal-body">

  				<div class="alert alert-info fade in" role="alert"><?=$info; ?></div>

  			</div>
  		</div>
  	</div>
  </div>
  <?php } ?>

</body>
</html>
<!-- / footer.php -->