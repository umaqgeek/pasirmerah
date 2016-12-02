 <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><img src="<?=base_url()?>assets/imagescoop/images5.png"  width="120" height="29" alt="DinarPal" /></a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
              
            <li>
                <div class="btn-group">

                    <button type="button" class="btn btn-default-dinarpal dropdown-toggle" data-toggle="dropdown" style=" margin-top: 1.0em; margin-bottom: -1.5em;">
                        <i class="fa fa-bars"></i>&nbsp; Menu &nbsp;<span class="caret"></span>
                    </button>

                    <ul class="dropdown-menu" role="menu" style="margin-top: 12px">
                        <li><a href="<?= site_url('staff/newMenu/overview/06') ?>" style="color:#FFF;">Profile</a></li>
                        <li><a href="<?= site_url('staff/newMenu/vault/015') ?>" style="color:#FFF;">Manage Member Profile</a></li>
                        <li><a href="<?= site_url('staff/newMenu/transaction/09') ?>" style="color:#FFF;">Manage Payment</a></li>
                        <li><a href="<?= site_url('staff/transactions/transSum1/y51') ?>" style="color:#FFF;">Manage Share </a></li>
                        <li><a href="<?= site_url('staff/newMenu/keep/03') ?>" style="color:#FFF;">Configuration</a></li>
                    </ul>

                </div>
            </li>
            
            <li style=" margin-bottom: 10px;"><a href="#"></a></li>

            <li style=" margin-bottom: -20px; margin-top:0.2em;">   
                <a href="<?= site_url('staff/newMenu/profile/08') ?>" style="margin-bottom: 1px;"> 
                    <img src="<?= base_url() . 'assets/images/love.png' ?>"  title="Malaf"  width="25px" height="25px" >
                    <?php echo $this->session->userdata('me_username')?>
                </a> 
            </li>
            
            <li style="margin-top:0.2em;">   
                <a target="_blank" href="https://dashboard.tawk.to/login"> 
                    <img src="<?= base_url() . 'assets/images/support.png' ?>" title="Support" width="25px" height="25px" > 
                </a> 
            </li> 
            
            <li style="margin-top:0.2em;"> 
                <a href="<?= site_url('staff/newMenu/test/test') ?>"> 
                    <img src="<?= base_url() . 'assets/images/bell.png' ?>" title="Notifications" width="25px" height="25px" >
                </a>
            </li>
            
            <li>
                <a href="<?=site_url('staff/logout')?>" style=" padding-top:1.5em;" >
                    <i class="fa fa-sign-out"></i> Logout
                </a>
            </li>
            
          </ul>
         <!-- <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>-->
        </div>
      </div>
    </div>
  </div>