
<style>
.wrapper1 {
    width: 960px;
    height: 100%;
    z-index: 20;
}
#video_background {
    position: absolute;
    bottom: 0px;
    right: 0px;
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    z-index: -1000;
    overflow: hidden
}
</style>

<!--<video autoplay="autoplay" muted="muted" poster="https://www.paypalobjects.com/webstatic/mktg/wright/videos/home-signup.jpg" loop="loop" style="width: 100%; height: auto;">
    <source src="https://www.paypalobjects.com/webstatic/mktg/wright/videos/home-signup.mp4" type="video/mp4">
    <source src="https://www.paypalobjects.com/webstatic/mktg/wright/videos/home-signup.webm" type="video/webm">
</video>-->

<center>

<div class="row">
		  
<div class="col-lg-12-frontpage">
<div class="col-lg-6 col-md-offset-3" style="background-color:rgba(255,255,255,0.1); margin-top:4%; height:100%; -webkit-border-radius: 10px;
-moz-border-radius: 10px;
border-radius: 10px;">
      
                <h1 style="color:white;  top: 50%; margin-bottom:6%; font-size:40px;;"><!--The Digital Ar-Rahnu-->
<!--                DinarPal<br />-->
                <span style="color:white;  top: 50%; margin-bottom:6%; font-size:30px;">pay using dinar dirham</span>
                
<!--                <div class="row">
                	<h1 style="color:white;">COMING SOON</h1>
                	<div id="countdown">
                    	<div class="countdown-section">
                        	<b id="minggu">08</b> 
                            <span>weeks</span> 
                        </div>
                        <div class="countdown-section">
                        	<b id="hari">04</b> 
                            <span>days</span> 
                        </div>
                        <div class="countdown-section">
                        	<b id="jam">03</b> 
                            <span>hours</span> 
                        </div>
                        <div class="countdown-section">
                        	<b id="minit">33</b> 
                            <span>minutes</span> 
                        </div>
                        <div class="countdown-section">
                        	<b id="saat">16</b> 
                            <span>seconds</span> 
                        </div>
                    </div>
				</div>-->

<script>
$(document).ready(function() {
	timer1();
});
function timer1() {
	var deadline = <?=strtotime(date('2015-07-15')); ?>;
	var today = Math.floor( Date.now() / 1000 );
	var diff = deadline - today;
	
	var masa = diff / 60 / 60 / 24 / 7;
	var minggu = Math.floor( masa );
	masa = (masa - minggu) * 7;
	var hari = Math.floor( masa );
	masa = (masa - hari) * 24;
	var jam = Math.floor( masa );
	masa = (masa - jam) * 60;
	var minit = Math.floor( masa );
	masa = (masa - minit) * 60;
	var saat = Math.floor( masa );
	
	$("#minggu").html( formatNum(minggu) );
	$("#hari").html( formatNum(hari) );
	$("#jam").html( formatNum(jam) );
	$("#minit").html( formatNum(minit) );
	$("#saat").html( formatNum(saat) );
	setTimeout(timer1, 1);
}
function formatNum( num ) {
	if (num < 10) {
		return '0'+num;
	} else {
		return num;
	}
}
</script>
                
                <button class="btn btn-lg btn-dinarpal btn-block" style="width:40%;" type="button" onclick="location.href='<?=site_url('login/registration'); ?>'">Register Now!</button>
                </h1>
                        </div>               
                    <video controls autoplay="autoplay" muted="muted" poster="<?=base_url(); ?>assets/videos/baca-quran1.jpg" loop="loop" style="width: 100%; height: auto; z-index:-1;" id="video_background">
                        <source src="<?=base_url()?>assets/videos/lp1.webm1" type="video/webm">
                        I'm sorry; your browser doesn't support HTML5 video in WebM with VP8 or MP4 with H.264.
                    </video>

    </div>

<!--<div id='slider'>
    <img src="<?=base_url().'assets/images/img3.jpg'?>" height="100%" width="100%" class="img-thumbnail">
    <img src="<?=base_url().'assets/images/img1.jpg'?>" height="100%" width="100%" class="img-thumbnail">
    <img src="<?=base_url().'assets/images/img2.jpg'?>" height="100%" width="100%" class="img-thumbnail">
</div>-->
</center>

<div class="container">
	<!-- Containers
	================================================== -->
	<div class="bs-docs-section">
    	<div id='slideshowHolder'>
			<!--<img src="<?=base_url().'assets/images/img1.jpg'?>" height="100%" width="100%" class="img-thumbnail">
            <img src="<?=base_url().'assets/images/img2.jpg'?>" height="100%" width="100%" class="img-thumbnail">-->
            <!--<img src="<?=base_url().'assets/images/img3.jpg'?>" height="100%" width="100%" class="img-thumbnail">-->
            
        </div>
		<!-- Panels
		================================================== -->
		
		
		<!-- Footer
		================================================== -->
        
		
        
	</div>
</div>



