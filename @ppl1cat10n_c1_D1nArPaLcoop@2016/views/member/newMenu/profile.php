
<style>
    div.shadow:hover {
        -moz-box-shadow: 0 0 5px rgba(0,0,0,0.5);
        -webkit-box-shadow: 0 0 5px rgba(0,0,0,0.5);
        box-shadow: 0 0 2px rgba(0,0,0,0.5);


    }
</style>


<div class="container">

    <div class="col-md-3 col-md-offset-1" class="shadow" style=" border-radius: 5px; border: 2px solid #FFF; padding: 20px 20px 20px; ">

        <a href="<?php echo site_url('member/member_profile') ?>" style="text-decoration:none">

            <div class="shadow" style=" border-radius: 5px; border: 1px solid #ccc;  padding: 10px;  height:130px; ">
                <center>
                    <img src="<?= base_url() . 'assets/images/overview1.png' ?>"  width="80px" height="80px" >  

                    <div >My Profile</div>
                </center>  
            </div>

        </a>

    </div>

    <div class="col-md-3 "  style=" border-radius: 5px; border: 2px solid #FFF; padding: 20px 20px 20px; ">
        <a href="<?php echo site_url('member/member_payment') ?>" style="text-decoration:none">
            <div class="shadow" style=" border-radius: 5px; border: 1px solid #ccc;  padding: 10px; height:130px; ">
                <center>
                    <img src="<?= base_url() . 'assets/images/commision1.png' ?>"  width="80px" height="80px" >  

                    <div >Payment</div>
                </center>  
            </div>
        </a>
    </div>

    <div class="col-md-3 "  style=" border-radius: 5px; border: 2px solid #FFF; padding: 20px 20px 20px; ">
        <a href="<?php echo site_url('member/member_share') ?>" style="text-decoration:none">
            <div class="shadow" style=" border-radius: 5px; border: 1px solid #ccc;  padding: 10px; height:130px; ">
                <center>
                    <img src="<?= base_url() . 'assets/images/commision1.png' ?>"  width="80px" height="80px" >  

                    <div >Share</div>
                </center>  
            </div>
        </a>
    </div>

    <div class="col-md-3 col-md-offset-4" class="shadow" style=" border-radius: 5px; border: 2px solid #FFF; padding: 20px 20px 20px; ">
        <a href="<?php echo site_url('member/member_document') ?>" style="text-decoration:none">
            <div class="shadow" style=" border-radius: 5px; border: 1px solid #ccc;  padding: 10px;  height:130px; ">
                <center>
                    <img src="<?= base_url() . 'assets/images/overview1.png' ?>"  width="80px" height="80px" >  

                    <div >Document</div>
                </center>  
            </div>
        </a>

    </div>

</div>

