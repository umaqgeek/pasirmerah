<footer>



    <div class="row">



        <div class="col-lg-12" style="color:#FFF; margin-top:10px">



            <!--<ul class="list-unstyled">



                <li class="pull-right"><p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p></li>



            </ul>-->



            <p align="center" style="font-size:11px;">



                <a href="<?=site_url('main/viewMenu/aboutUs'); ?>" class="dinarpal_footer_link">About Us</a>&nbsp;&nbsp;&nbsp;



                <a href="<?=site_url('main/viewMenu/partners'); ?>" class="dinarpal_footer_link">Partners</a>&nbsp;&nbsp;&nbsp;



                <a href="<?=site_url('main/viewMenu/ll.php'); ?>" class="dinarpal_footer_link">Licensor-Licensee</a>&nbsp;&nbsp;&nbsp;



               <a href="<?=site_url('main/viewMenu/comp.php'); ?>" class="dinarpal_footer_link">The Compliances</a>&nbsp;&nbsp;&nbsp;



             <a href="<?=site_url('main/viewMenu/awards.php'); ?>" class="dinarpal_footer_link">Awards and Recognitions</a>&nbsp;&nbsp;&nbsp;



                <a href="https://www.facebook.com/dinarpal" target="_blank" class="dinarpal_footer_link">



				facebook</a>



            </p>



        </div>



    </div>



    <div class="row">



        <div class="col-lg-12" style="color:#FFF;">



            <!--<ul class="list-unstyled">



                <li class="pull-right"><p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p></li>



            </ul>-->



            <p align="center" style="font-size:11px;">



                 <a href="<?=site_url('main/viewMenu/privacy.php'); ?>" class="dinarpal_footer_link">Privacy Policy</a>&nbsp;&nbsp;&nbsp;



                <a href="<?=site_url('main/viewMenu/terms.php'); ?>" class="dinarpal_footer_link">Terms and Conditions</a>&nbsp;&nbsp;&nbsp;



                <a href="<?=site_url('main/viewMenu/intel.php'); ?>" class="dinarpal_footer_link">Intellectual Properties</a>

            </p>



        </div>



    </div>



    <div class="row">



        <div class="col-lg-12" style="color:#FFF;">



            <!--<ul class="list-unstyled">



                <li class="pull-right"><p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p></li>



            </ul>-->



            <p align="center" style="font-size:11px;">



                DinarPal Sdn. Bhd. (Co. Reg. 1041059-H) All Right Reserve &copy; 2014



            </p>



        </div>



    </div>



</footer>

<!-- Start of footer.php -->

<script type="text/javascript">
tukarRate();
function calculate(n) {
	var it = document.getElementById('it'+n).value;
	var w = document.getElementById('w'+n).value;
	var pu = document.getElementById('pu'+n).value;
	var price = 0.00;
	var nilai = 0.00;
	$.post( "<?=site_url('main/ajaxCalculator/') ?>/" + it + '/' + pu ).done(function( data ) {
		var d = data;
		price = d.split('|')[0] / d.split('|')[1];
		nilai = price * w;
		document.getElementById('price'+n).innerHTML = addCommas(price.toFixed(2));
		document.getElementById('nilai'+n).innerHTML = addCommas(nilai.toFixed(2));
		document.getElementById('price_'+n).value = price.toFixed(2);
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
function addCommas(n){
    var rx=  /(\d+)(\d{3})/;
    return String(n).replace(/^\d+/, function(w){
        while(rx.test(w)){
            w= w.replace(rx, '$1,$2');
        }
        return w;
    });
}
</script>

</body>
</html>
<!-- / footer.php -->