
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

                    <a href="<?= site_url('staff/manageShare') ?>" style="text-decoration:none">

                        <div class="shadow" style=" border-radius: 5px; border: 1px solid #ccc;  padding: 10px;  height:130px; ">
                            <center>
                                <img src="<?= base_url() . 'assets/images/overview1.png' ?>"  width="80px" height="80px" >  

                                <div >Manage Share</div>
                            </center>  
                        </div>

                    </a>

                </div>

                <div class="col-md-3 "  style=" border-radius: 5px; border: 2px solid #FFF; padding: 20px 20px 20px; ">
                    <a href="<?= site_url('staff/manageDividen') ?>" style="text-decoration:none">
                        <div class="shadow" style=" border-radius: 5px; border: 1px solid #ccc;  padding: 10px; height:130px; ">
                            <center>
                                <img src="<?= base_url() . 'assets/images/overview1.png' ?>"  width="80px" height="80px" >  

                                <div >Manage Dividen</div>
                            </center>  
                        </div>
                    </a>
                </div>
            </div>

        </div>