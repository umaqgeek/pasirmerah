    
    <style>
        @media screen and (max-width: 800px) {
            #hilang_da {
                visibility: hidden;
                display: none;
            }
        }
    </style>

    <div class="container-fluid" style=" background-color:#c0392b; height:75px;">
      <div class="container">
      <div class="row">
       <!-- <div class="col-sm-3 col-md-2 sidebar"> -->
         <div class="col-ms-8"  style="margin-top:20px; " id="hilang_da" > 
         <!-- <ul class="nav nav-sidebar"> -->

          <ul class="nav navbar-nav">

            <!-- (start) 6/11/2015 nihhh yang baru hidden

            <li class="nav-parent" title="profile"><a href="#">  <i class="fa fa-home"></i>  Home</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='11') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/profile')?>">Dashboard</a></li>
              <li <?php if($menu1=='12') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/profile/profile/12')?>">Profile</a></li>
              <li <?php if($menu1=='13') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/profile/changePassword/13')?>">Change Password</a></li>
            </ul>
            
            <li class="nav-parent" title="dinarpalAccount"><a href="#"> <i class="fa fa-th-list"></i>  DinarPal Account</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='y11') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/dinarpalAccount/overview/y11')?>">Overview</a></li>
              <li <?php if($menu1=='y12' || $menu1=='y121') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/dinarpalAccount/topupCash/y12')?>">Topup/Cash Injection</a></li>
              <li <?php if($menu1=='y13') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/dinarpalAccount/topupGold/y13')?>">Topup Gold &amp; Silver Injection</a></li>
              <li <?php if($menu1=='y14') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/dinarpalAccount/topupCashSummary/y14')?>">Cash Fund Injection Summary</a></li>
              <li <?php if($menu1=='y15') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/dinarpalAccount/topupGoldSummary/y15')?>">Gold &amp; Silver Injection Summary</a></li>
            </ul>
            
            <li class="nav-parent" title="dinarpalClientKeep"><a href="#"><i class="fa fa-briefcase"></i> DinarPal Client Keep Vault</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='y21') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/dinarpalClientKeep/overview/y21')?>">Overview</a></li>
            </ul>
            
            <li class="nav-parent" title="manageStaff"><a href="#"><i class="fa fa-sitemap"></i>Manage Staff</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='x11') { echo 'class="active"'; } ?>>
              	<a href="<?=site_url('staff/manageStaff/manageMasterLicense/x11')?>">Manage Master License</a>
              </li>
              <li <?php if($menu1=='x12') { echo 'class="active"'; } ?>>
              	<a href="<?=site_url('staff/manageStaff/manageSubLicense/x12')?>">Manage Sub License</a>
              </li>
              <li <?php if($menu1=='x13') { echo 'class="active"'; } ?>>
              	<a href="<?=site_url('staff/manageStaff/manageMultiAuth/x13')?>">Manage Multinational Authority</a>
              </li>
              <li <?php if($menu1=='x14') { echo 'class="active"'; } ?>>
              	<a href="<?=site_url('staff/manageStaff/manageSupervisor/x14')?>">Manage Supervisor</a>
              </li>
              <li <?php if($menu1=='x15') { echo 'class="active"'; } ?>>
              	<a href="<?=site_url('staff/manageStaff/manageCustService/x15')?>">Manage Customer Service</a>
              </li>
            </ul>
            
            <li class="nav-parent" title="manageMembers"><a href="#"><i class="fa fa-pencil"></i>Manage Members</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='x21') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageMembers/manageMember/x21')?>">Manage Members</a></li>
              <li <?php if($menu1=='x22') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageMembers/memberAccountSum/x22')?>">Members Account Summary</a></li>
              <li <?php if($menu1=='x23') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageMembers/memberProfile/x23')?>">Members Profile</a></li>
              <li <?php if($menu1=='x24') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageMembers/memberSafeKeepSum/x24')?>">Members Safe Keeping Summary</a></li>
              <li <?php if($menu1=='x25') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageMembers/memberTransHistory/x25')?>">Members Transaction History</a></li>
              <li <?php if($menu1=='x26') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageMembers/memberPurchaseKeepSum/x26')?>">Members Purchase &amp; Keep Summary</a></li>
              <li <?php if($menu1=='x27') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageMembers/memberWonBidHistory/x27')?>">Members Won Bid History</a></li>
            </ul>
            
            <li class="nav-parent" title="generalStatistics"><a href="#"><i class="fa fa-table"></i>General Statistics</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='x31') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/generalStatistics/statsOverview/x31')?>">Stats Overview</a></li>
            </ul>
            
            <li class="nav-parent" title="transactions"><a href="#"><i class="fa fa-book"></i> Transactions</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='x41') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/transactions/overview/x41')?>">Overview</a></li>
              <li <?php if($menu1=='x42' || $menu1=='x421') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/transactions/manageTransaction/x42')?>">Manage Transaction</a></li>
            </ul>
            
            <li class="nav-parent" title="feesCollection"><a href="#"><i class="fa fa-file-o"></i> Fees Collection</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='x51') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/feesCollection/overview/x51')?>">Overview</a></li>
              <li <?php if($menu1=='x52') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/feesCollection/manageFeesCollection/x52')?>">Manage Fees Collection</a></li>
            </ul>
            
            <li class="nav-parent" title="rahnuOperation"><a href="#"><i class="fa fa-archive"></i> E-Rahnu Operation</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='x61' || $menu1=='x6121' || $menu1=='x6122' || $menu1=='x6123' || $menu1=='x6124' || $menu1=='x61241') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/rahnuOperation/walkPurchasePawn/x61')?>">Walk-In Purchase &amp; Pawn</a></li>
              <li <?php if($menu1=='x62' || $menu1=='x621' || $menu1=='x622') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/rahnuOperation/walkBringPawn/x62')?>">Walk-In Bring &amp; Pawn</a></li>
              <li <?php if($menu1=='x63') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/rahnuOperation/walkPurchaseCourier/x63')?>">Walk-In Purchase &amp; Courier</a></li>
              <li <?php if($menu1=='x66') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/rahnuOperation/walkBringKeep/x66')?>">Walk-In Bring &amp; Keep</a></li>
              <li <?php if($menu1=='x64') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/rahnuOperation/rahnuHistory/x64')?>">E-Rahnu History</a></li>
              <li <?php if($menu1=='x65') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/rahnuOperation/safeKeepSum/x65')?>">Safe Keeping Summary</a></li>
            </ul>
            
            <li class="nav-parent" title="dinarDirhamOperation"><a href="#"><i class="fa fa-university"></i>E-Dinar &amp; E-Dirham Operation</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='x71') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/dinarDirhamOperation/overview/x71')?>">Overview</a></li>
              <li <?php if($menu1=='x72') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/dinarDirhamOperation/sendPayment/x72')?>">Send Payment</a></li>
              <li <?php if($menu1=='x73') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/dinarDirhamOperation/withdrawal/x73')?>">Withdrawal</a></li>
              <li <?php if($menu1=='x74') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/dinarDirhamOperation/transHistory/x74')?>">Transaction History</a></li>
            </ul>
            
            <li class="nav-parent" title="muamalatOperation"><a href="#"><i class="fa fa-shopping-cart"></i>E-Muamalat Operation</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='x81') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/muamalatOperation/manageGoldSilverSouq/x81')?>">Manage Gold Silver Souq</a></li>
              <li <?php if($menu1=='x82') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/muamalatOperation/manageSellBuyBoard/x82')?>">Manage Sell Buy Board</a></li>
              <li <?php if($menu1=='x83') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/muamalatOperation/manageBids/x83')?>">Manage Bids (Auction)</a></li>
              <li <?php if($menu1=='x84') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/muamalatOperation/manageEPoint/x84')?>">Manage E-Point</a></li>
            </ul>
            
            <li class="nav-parent" title="merchantOperation"><a href="#"><i class="fa fa-credit-card"></i> E-Merchant Operation</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='x91') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/merchantOperation/onlineService/x91')?>">Online Store Services</a></li>
            </ul>
            
            <li class="nav-parent" title="manageConf"><a href="#"><i class="fa fa-cogs"></i> Manage Configuration</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='x101') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/curType/x101')?>">Currency Type</a></li>
              <li <?php if($menu1=='x102') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/paymentMethod/x102')?>">Payment Method</a></li>
              <li <?php if($menu1=='x103') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/purity/x103')?>">Purity</a></li>
              <li <?php if($menu1=='x104') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/transType/x104')?>">Transaction Type</a></li>
              <li <?php if($menu1=='x105') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/transStat/x105')?>">Transaction Status</a></li>
              <li <?php if($menu1=='x106') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/feeType/x106')?>">Fee Type</a></li>
              <li <?php if($menu1=='x107') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/country/x107')?>">Country</a></li>
              <li <?php if($menu1=='x108') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/cardsType/x108')?>">Cards Type</a></li>
              <li <?php if($menu1=='x109') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/bankCategory/x109')?>">Bank Category</a></li>
              <li <?php if($menu1=='x1010') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/bankAccount/x1010')?>">Bank Account Type</a></li>
              <li <?php if($menu1=='x1011') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/brands/x1011')?>">Brands</a></li>
              <li <?php if($menu1=='x1012') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/itemType/x1012')?>">Item Type</a></li>
              <li <?php if($menu1=='x1013') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/storLoc/x1013')?>">Storage Location</a></li>
              <li <?php if($menu1=='x1014') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/amil/x1014')?>">Amil</a></li>
              <li <?php if($menu1=='x1017') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/amilStatus/x1017')?>">Amil Status</a></li>
              <li <?php if($menu1=='x1015') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/itemTypeCourier/x1015')?>">Item Courier</a></li>
              <li <?php if($menu1=='x1016') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/manageConf/statCourier/x1016')?>">Item Status Courier</a></li>
            </ul>
            
            (end) 6/11/2015 nihhh yang baru hidden

             -->
            
            

            <!--
            
            (start) nihhh yang lama gila hidden

            <li class="nav-parent" title="overview"><a href="#">Overview</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='41') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/overview/overview/41')?>">Overview</a></li>
              <li <?php if($menu1=='42') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/overview/duedate/42')?>">Due Date</a></li>
            </ul>

            <li class="nav-parent" title="pawnAndRegister"><a href="#">Pawn &amp; Register</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='21') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/pawnAndRegister/calculator/21')?>">Calculator</a></li>
              <li <?php if($menu1=='22') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/pawnAndRegister/pawn/22')?>">Pawn</a></li>
              <li <?php if($menu1=='23') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/pawnAndRegister/registerAccount/23')?>">Register Account</a></li>
              <li <?php if($menu1=='24') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/pawnAndRegister/confirmation/24')?>">Confirmation</a></li>
              <li <?php if($menu1=='25') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/pawnAndRegister/inventory/25')?>">Inventory</a></li>

            </ul>

            <li class="nav-parent" title="management"><a href="#">Administration</a></li>
            <ul class="nav-child">
            
              <li <?php if($menu1=='818') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/adminAccount/818')?>">Dinarpal Admin Account</a></li>
            
              <li <?php if($menu1=='81') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/amil/81')?>">Amil</a></li>
              
              <li <?php if($menu1=='82') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/banksCategory/82')?>">Banks Category</a></li>
              
              <li <?php if($menu1=='83') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/BanksAccountType/83')?>">Banks Account Type</a></li>
              
              <li <?php if($menu1=='84') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/Brands/84')?>">Brands</a></li>
              
              <li <?php if($menu1=='85') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/CardsType/85')?>">Cards Type</a></li>
              
              <li <?php if($menu1=='86') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/Countries/86')?>">Countries</a></li>
              
              <li <?php if($menu1=='87') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/Config/87')?>">Config</a></li>
              
              <li <?php if($menu1=='88') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/FeeType/88')?>">Fee Type</a></li>
              
              <li <?php if($menu1=='89') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/ItemCourier/89')?>">Item Type</a></li>
              
              <li <?php if($menu1=='811') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/ItemStatusCourier/811')?>">Courier</a></li>
              
              <li <?php if($menu1=='812') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/ItemType/812')?>">Status Courier</a></li>
              
              <li <?php if($menu1=='813') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/PaymentMethod/813')?>">Payment Method</a></li>
              
              <li <?php if($menu1=='814') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/Purity/814')?>">Purity</a></li>
              
              <li <?php if($menu1=='815') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/StorageLocation/815')?>">Storage Location</a></li>
              
              <li <?php if($menu1=='816') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/TransactionType/816')?>">Transaction Type</a></li>
              
              <li <?php if($menu1=='817') { echo 'class="active"'; } ?>>
              <a href="<?=site_url('staff/management/TransactionStatus/817')?>">Transaction Status</a></li>

            </ul>

            <li class="nav-parent" title="auctionManagement"><a href="#">Auction Management</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='31') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/auctionManagement/auction/31')?>">Auction</a></li>
            </ul>

            <li class="nav-parent" title="members"><a href="#">Members</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='51') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/members/members/51')?>">List of Members</a></li>
              <li <?php if($menu1=='52') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/members/addmembers/52')?>">Add Members</a></li>
            </ul>

            <li class="nav-parent" title="reports"><a href="#">Reports</a></li>
            <ul class="nav-child">
              <li <?php if($menu1=='61') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/reports/summary/61')?>">Summary</a></li>
            </ul>

            <li class="nav-parent" title="transactions"><a href="#">Transactions</a></li>
            <ul class="nav-child">
            
              <li <?php if($menu1=='72' || $menu1=='721') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/transactions/sendPayment/72')?>">Send Payment</a></li>
            
              <li <?php if($menu1=='71') { echo 'class="active"'; } ?>><a href="<?=site_url('staff/transactions/allTransactions/71')?>">Transactions</a></li>
            </ul>

            (end) nihhh yang lama gila hidden

          -->


           <!-- <li><a href="<?=site_url('staff/logout')?>"> <i class="fa fa-sign-out"></i>  Logout</a></li> -->

            
          <li class="nav-parent" ><a href="<?=site_url('staff/newMenu/overview/06')?>" style="color:#fff;";>Profile</a></li>

          <li class="nav-parent" ><a href="<?=site_url('staff/newMenu/vault/015')?>" style="color:#fff;";>Payment</a></li>

          <li class="nav-parent" ><a href="<?=site_url('staff/newMenu/transaction/09')?>" style="color:#fff;">Share</a></li>

           <!--<li class="nav-parent" ><a href="<?=site_url('staff/transactions/transactionSummary/y5')?>" style="color:#fff;">Accounting</a></li>-->
           <li class="nav-parent" ><a href="<?=site_url('staff/transactions/transSum1/y51')?>" style="color:#fff;">Document</a></li>

           <li class="nav-parent" ><a href="<?= site_url('staff/newMenu/keep/03') ?>" style="color:#fff;">Savings</a></li>
           
           <li class="nav-parent" ><a href="<?=site_url('staff/newMenu/sendpayment/02')?>" style="color:#fff;">Payments</a></li>
           
          <li class="nav-parent"  ><a href="<?=site_url('staff/newMenu/rahnu/01')?>" style="color:#fff;">Rahnu</a></li>

          <li class="nav-parent" ><a href="<?=site_url('staff/newMenu/sellbuy/04')?>" style="color:#fff;">Souq Anshar</a></li>
          
          <li class="nav-parent" ><a href="<?=site_url('staff/newMenu/adscampaign/027')?>" style="color:#fff;">Ads Campaign</a></li>

          <!--
          <li class="nav-parent" ><a href="<?=site_url('staff/newMenu/bid/05')?>" style="color:#fff;">Bid</a></li>

          <li class="nav-parent" ><a href="<?=site_url('staff/newMenu/merchant/07')?>" style="color:#fff;">Merchant</a></li>
          -->
          
          </ul>
          
        </div>

      
      <div class="col-ms-4"  style="margin-top:20px; " >

        <div class="form-group" style="float:right; margin:0.5em;">

           <a  href="<?=site_url('staff/newMenu/deposit/010')?>" class="button green-button"  > <span class="ng-scope">Deposit </span></a>
        
           <a href="<?=site_url('staff/newMenu/withdrawal/011')?>"  class="button blue-button"  > <span class="ng-scope">Withdrawal </span></a>
          
           <a href="<?=site_url('staff/newMenu/redeem/012')?>" class="button " > <span class="ng-scope">Redeem </span> </a>
            
        </div>

      </div>

     </div>
</div>


    <div class="container-fluid" >
        <div class="container">


       <!-- <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"> -->
      
          <h3 class="page-header" style=" text-align:center; "><?=$title1?></h3>

          <style>
          /* tooltip styling. by default the element to be styled is .tooltip  */
          .tooltip {
            display:none;
            font-size:18px;
            padding:25px;
            color:#eee;
          }
          </style>
