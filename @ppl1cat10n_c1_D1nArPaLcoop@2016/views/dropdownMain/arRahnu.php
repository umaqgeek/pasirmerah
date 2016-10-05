
<style>
.image { 
   position: relative; 
}

.link_khas { 
   position: absolute; 
   top: 100px; 
   left: 0; 
   width: 100%; 
   background-color:rgba(255,255,255,0.5); 
   -webkit-border-radius: 10px;
   -moz-border-radius: 10px;
   border-radius: 10px;
}
</style>

<div class="row">
	<div class="col-md-12">
    
    <div class="row" style="margin-top: 3%; margin-bottom: 3%;">
        	<div class="col-md-5 col-md-offset-1">
            
            	<!-- start left text -->
                <h2>Ar-Rahnu goes online</h2>
				<h5>
                DinarPal is an innovation brand for Ar-Rahnu Exchange system.  We offer an alternative way to get fast cash on the basis of syariah mortgage principle.  The client`s pawns their gold with us and get some cash with no interest, longer period to redeem their gold, high financing amount and very minimum safe keeping fee.  For more info please use our Ar-Rahnu calculator..
                </h5>
                <button type="button" class="btn btn-dinarpal" onclick="location.href='<?=site_url('main/calculator'); ?>'">Calculate now</button>
                <!-- end left text -->
            
            </div>
            <div class="col-md-5 image">
            
            	<!-- start right image -->
                <img src="<?=base_url(); ?>/assets/images/frontpage/rahnu.jpg" width="100%" height="100%">
                <center>
                	<span class="link_khas">
                    	<br />
                    	<button type="button" class="btn btn-dinarpal" onclick="location.href='<?=site_url('main/viewMenu/walkin'); ?>'">Rahnu by walk-in</button><br />
                  	<button type="button" class="btn btn-dinarpal" onclick="location.href='<?=site_url('main/viewMenu/courier'); ?>'">Rahnu by courier</button><br />
                  	<button type="button" class="btn btn-dinarpal" onclick="location.href='<?=site_url('main/viewMenu/purchase'); ?>'">Rahnu by purchase</button><br />                        
                        <br />
                    </span>
                </center>
                <!-- end right image -->
            
            </div>
        </div>
        
    </div>
</div>