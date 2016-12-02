<br><br />        
        <div class="container">
            <style>
                div.shadow:hover {
                    -moz-box-shadow: 0 0 5px rgba(0,0,0,0.5);
                    -webkit-box-shadow: 0 0 5px rgba(0,0,0,0.5);
                    box-shadow: 0 0 2px rgba(0,0,0,0.5);


                }
            </style>
            
            <style>
                .details-box__header 
                {
                    height: 44px;
                    line-height: 44px;
                    border-bottom: 1px solid #c4c8ca;
                    border-top-left-radius: 4px;
                    border-top-right-radius: 4px;
                    color: #252e33;
                    font-size: .875rem;
                    font-weight: 500;
                    text-align: center;
                    background: -webkit-linear-gradient(#fff 0,#f6f6f6 100%);
                    background: linear-gradient(#fff 0,#f6f6f6 100%);

                }

                .circle-next-cta {
                    border-radius: 50%;
                    text-align: center;
                    width: 70px;
                    height: 70px;
                    position: relative;
                    background: -webkit-linear-gradient(#ffbd00 0,#ff8400 100%);
                    background: linear-gradient(#ffbd00 0,#ff8400 100%);
                    box-shadow: 0 3px 10px 0 rgba(0,0,0,.2);
                }


                #mobile {
                    width: 800px;
                    max-width: 90%;
                }

                .modal--medium .modal__container {
                    width: 602px;
                }

                .modal__box {
                    position: relative;
                    width: 100%;
                    background-color: #fff;
                    box-shadow: 0 20px 40px 0 rgba(0,0,0,.12);
                    border: 1px solid rgba(0,0,0,.25);
                    border-radius: 4px;
                }

                .modal__header {
                    position: relative;
                    z-index: 1;
                    font-size: 1.875rem;
                    text-align: center;
                    box-shadow: 0 2px 3px 0 rgba(0,0,0,.075);
                    background: -webkit-linear-gradient(90deg,#f6f6f6 0,#fff 100%);
                    background: linear-gradient(0deg,#f6f6f6 0,#fff 100%);
                    padding: 18px 0 16px;
                    border-top-left-radius: 5px;
                    border-top-right-radius: 5px;
                    font-weight: 500;
                    color: #252e33;
                }

                .modal__header::after {
                    content: "";
                    position: absolute;
                    top: 100%;
                    left: -1px;
                    width: calc(100% + 2px);
                    height: 1px;
                    background-color: rgba(0,0,0,.15);
                }

                .modal__header-close {
                    position: absolute;
                    right: 20px;
                    width: 14px;
                    height: 14px;
                }

                .modal__block--padding {
                    padding: 32px;
                }

                .modal__block--white,
                .modal__block_white {
                    background: #fff;
                }

                .modal__block_border-bottom {
                    border-bottom: 1px solid #d7d7d7;
                }

                .modal__block_border-radius-bottom {
                    border-bottom-left-radius: 4px;
                    border-bottom-right-radius: 4px;
                }

                .confirm-payment__payment,
                .confirm-request__payment {
                    padding: 35px;
                }

                .confirm-payment__info,
                .confirm-request__info {
                    display: -webkit-box;
                    display: -webkit-flex;
                    display: flex;
                    margin-top: 25px;
                    -webkit-box-align: center;
                    -webkit-align-items: center;
                    align-items: center;
                }

                .confirm-payment__amount-wrap,
                .confirm-request__amount-wrap {
                    text-align: center;
                    font-style: italic;
                }

                .confirm-payment__from,
                .confirm-request__from {
                    -webkit-box-flex: 1;
                    -webkit-flex: 1;
                    flex: 1;
                    max-width: 300px;
                }

                .confirm-payment__to,
                .confirm-request__to {
                    -webkit-box-flex: 1;
                    -webkit-flex: 1;
                    flex: 1;
                    max-width: 225px;
                }

                .confirm-payment__arrow_to-bottom,
                .confirm-request__arrow_to-bottom {
                    -webkit-transform: rotate(90deg);
                    -ms-transform: rotate(90deg);
                    transform: rotate(90deg);
                }

                .confirm-payment__vault,
                .confirm-request__vault {
                    text-align: center;
                    margin-top: 27px;
                    color: #687b86;
                }

                .modal__block_border-radius-bottom {
                    border-bottom-left-radius: 4px;
                    border-bottom-right-radius: 4px;
                }

                .modal__block--white,
                .modal__block_white {
                    background: #fff;
                }

                .confirm-payment__success-block,
                .confirm-request__success-block {
                    position: absolute;
                    overflow: hidden;
                    top: 100%;
                    bottom: -1px;
                    left: -1px;
                    right: -1px;
                    background: #1bc67c;
                    color: #fff;
                    border-bottom-left-radius: 4px;
                    border-bottom-right-radius: 4px;
                    font-style: italic;
                    font-weight: 200;
                    font-size: 2.25rem;
                    text-align: center;
                    -webkit-transition: top .05s ease-out,padding .1s ease-out,opacity .4s ease-out;
                    transition: top .05s ease-out,padding .1s ease-out,opacity .4s ease-out;
                    opacity: 0;
                    z-index: 1;
                }

                .confirm-payment__success-block__content,
                .confirm-request__success-block__content {
                    position: relative;
                    top: 40px;
                    opacity: 0;
                    -webkit-transition: top .2s ease-out .3s,opacity .2s ease-out .3s;
                    transition: top .2s ease-out .3s,opacity .2s ease-out .3s;
                }

                .from {
                    margin: 0;
                    padding: 0;
                    border: 0;
                    font: inherit;
                    vertical-align: baseline;
                }


                .circle-button-control {
                    width: 100px;
                    height: 100px;
                    display: inline-block;
                    border: 3px solid transparent;
                    border-radius: 50%;
                    margin: 0 50px;
                    background: 0 0;
                    outline: 0;
                    position: relative;
                    cursor: pointer;
                    -webkit-transition: border-color .2s ease-out;
                    transition: border-color .2s ease-out;
                }

                .circle-button-control--red {
                    border-color: #e85656;
                }

                .circle-button-control--red:hover {
                    border-color: #e22929;
                }

                .circle-button-control--red::after,
                .circle-button-control--red::before {
                    position: absolute;
                    left: 5%;
                    top: 49%;
                    width:50px;
                    height: 0;
                    content: '';
                    border-bottom: 3px solid #e85656;
                }

                .circle-button-control--red::before {
                    -webkit-transform: rotate(45deg);
                    -ms-transform: rotate(45deg);
                    transform: rotate(45deg);
                }

                .circle-button-control--red::after {
                    -webkit-transform: rotate(-45deg);
                    -ms-transform: rotate(-45deg);
                    transform: rotate(-45deg);
                }

                .circle-button-control--green {
                    border-color: #1bc67c;
                }

                .circle-button-control--green:hover {
                    border-color: #159960;
                }

                .circle-button-control--green::before {
                    position: absolute;
                    top: 25%;
                    left: 7%;
                    height: 15px;
                    width: 40px;
                    content: '';
                    border-bottom: 3px solid #1bc67c;
                    border-left: 3px solid #1bc67c;
                    -webkit-transform: rotate(-45deg);
                    -ms-transform: rotate(-45deg);
                    transform: rotate(-45deg);
                }

                .circle-button-control--green.loading-button::after {
                    margin: 0 auto;
                    display: inline-block;
                    vertical-align: middle;
                    border-style: solid;
                    border-radius: 50%;
                    -webkit-animation: spin .5s infinite linear;
                    animation: spin .5s infinite linear;
                    border-width: 3px;
                    width: 44px;
                    height: 44px;
                    margin-top: -22px!important;
                    border-color: #1bc67c transparent;
                }

                .tooltip .tooltiptext::after {
                    content: "";
                    position: absolute;
                    top: 100%;
                    left: 50%;
                    margin-left: -5px;
                    border-width: 5px;
                    border-style: solid;
                    border-color: black transparent transparent transparent;
                }

                *,
                ::after,
                ::before {
                    box-sizing: inherit;
                }

                * {
                    transform-origin: 0px 0px 0px;
                }

                svg {
                    -webkit-transition: fill .2s ease-out,color .2s ease-out;
                    transition: fill .2s ease-out,color .2s ease-out;
                }

                .zoom_img img{
                    margin:50px;
                    height:100px;
                    width:100px;
                    -moz-transition:-moz-transform 0.5s ease-in; 
                    -webkit-transition:-webkit-transform 0.5s ease-in; 
                    -o-transition:-o-transform 0.5s ease-in;
                }
                .zoom_img img:hover{
                    -moz-transform:scale(3); 
                    -webkit-transform:scale(3);
                    -o-transform:scale(3);
                }


                .wrapper {
                    width: 700px;
                    position: relative;
                }
                .wrapper .thumbnails {
                    width: 150px;
                    float: right;
                }
                .wrapper a {
                    margin: 2px;
                }
                .wrapper img {
                    border: 1px solid #000;
                }
                .wrapper label > img {
                    opacity: 0.6;
                }
                .wrapper label > img:hover {
                    opacity: 1;
                }
                .wrapper input {
                    display: none;
                }
                .wrapper input:checked + .full-image {
                    display: block;
                }
                .wrapper input:checked ~ img {
                    opacity: 1;
                }
                .wrapper .full-image {
                    display: none;
                    position: absolute;
                    top: 0;
                    left: 0;
                }
                .wrapper .description {
                    width:95%;
                    padding:5px;
                    background-color:#DDDDDD;
                }


            </style>


            <div class="container">

                <!--design baru-->
                <div class="row">
                    <div id="mobile" class="modal__container modal__container--active center-block" style="width:590px;">
                        <div class="modal__box confirm-payment" >
                            <div class="modal__header">E-Dinar & E-Dirham</div>
                            <div class="modal__block modal__block_border-bottom confirm-payment__payment" >

                                <br>

                                <div class="col-md-12">

                                    <div class="row nav-ul1" til="1">
                                        <div class="col-sm-12" >

                                            <h4></h4>

                                            <script>
                                                $(document).ready(function () {
                                                    $("#username").keyup(function () {
                                                        var user = $(this).val();
                                                        $.post("http://localhost/dinarpal_v2/index.php/member/getAjaxGetMember", {username: user}).done(function (data) {
                                                            $("#status_single_send").html(data);
                                                        });
                                                        $.post("http://localhost/dinarpal_v2/index.php/member/getAjaxGetMeID", {username: user}).done(function (data) {
                                                            $("#me_id_to").val(data);
                                                        });
                                                    });
                                                    $("#amanah_username").keyup(function () {
                                                        var user = $(this).val();
                                                        $.post("http://localhost/dinarpal_v2/index.php/member/getAjaxGetMember", {username: user}).done(function (data) {
                                                            $("#amanah_status_single_send").html(data);
                                                        });
                                                        $.post("http://localhost/dinarpal_v2/index.php/member/getAjaxGetMeID", {username: user}).done(function (data) {
                                                            $("#amanah_me_id_to").val(data);
                                                        });
                                                    });
                                                });
                                            </script>
                                            <form id="form_send_payment1" class="form-horizontal" role="form" method="post" action="http://localhost/dinarpal_v2/index.php/member/sendSinglePayment">
                                                <input type="hidden" name="me_id_from" value="3" />
                                                <input type="hidden" name="ft_id" value="4" />
                                                <input type="hidden" name="tt_id" value="1" />
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="storageLocation" class="col-sm-2 control-label" ><strong>Send To</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label>
                                                            <div class="col-sm-7">

                                                                <div id="status_single_send"></div>
                                                                <input name="username" type="text" class="form-control" placeholder="Please key-in receiver Username" id="username"  />
                                                                <input name="me_id_to" type="hidden" class="form-control" id="me_id_to" value="0" height="5px" />

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="storageLocation" class="col-sm-2 control-label"><strong>Payment Type</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label>
                                                            <div class="col-sm-7">
                                                                <select name="pt_id" class="form-control">
                                                                    <option value="1">Goods</option>
                                                                    <option value="2">Services</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="storageLocation" class="col-sm-2 control-label"><strong>Select an Account</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label>
                                                            <div class="col-sm-7">
                                                                <select name="at_id" class="form-control" id="at_id">
                                                                    <option value="1">E-Dinar</option>
                                                                    <option value="3">E-Dirham</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="storageLocation" class="col-sm-2 control-label"><strong>Amount </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label>
                                                            <div class="col-sm-7">
                                                                <input name="tr_amount" type="text" class="form-control" placeholder="Amount Transfer (RM)" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="storageLocation" class="col-sm-2 control-label"><strong>Notes</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</label>
                                                            <div class="col-sm-5">
                                                                <textarea name="tr_notes" class="form-control" placeholder="Description"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </form>

                                        </div>
                                    </div>

                                </div> 

                                <br>

                                <div class="confirm-payment__vault">
                                    <img src="http://localhost/dinarpal_v2/assets/imagess/bendera-malaysia-1.png" width="30"> Melaka, Malaysia,
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div style="padding:5px; height:50px;">
                                        <!--<p class="center-small-input">
                                            <button class=" circle-button-control circle-button-control--red modal-button-close" id="btn_back_da1" style="width:90px; height: 90px;"></button> 
                                                    
                                            <button class=" circle-button-control circle-button-control--green" id="btn_submit_da1" style="width:90px; height: 90px;"></button>
                                        </p>-->

                                        <p class="center">
                                        <div class="col-md-3 col-md-offset-2">
                                            <button class=" circle-button-control circle-button-control--red modal-button-close" id="btn_back_da1" style="width:50px; height: 50px;"></button> 
                                        </div>
                                        <div class="col-md-2">
                                            <button class=" circle-button-control circle-button-control--green" id="btn_submit_da1" style="width:50px; height: 50px;"></button>
                                        </div>
                                        </p>

                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>

                </div><!--/ .design baru-->

                <script>
                    $(document).ready(function () {
                        $("#btn_submit_da1").click(function () {
                            $("#form_deposit").submit();
                        });
                        $("#btn_back_da1").click(function () {
                            location.href = '<?= site_url('member/newMenu/deposit/10'); ?>';
                        });
                    });
                </script>

            </div>

        </div>