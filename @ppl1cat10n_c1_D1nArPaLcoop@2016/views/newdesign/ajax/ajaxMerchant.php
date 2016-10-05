
<?php
$statusMerchants = true;
?>

<!--                <div style="margin-top: 25%;">
<?php
//                    $statusMerchants = false;
//                    echo $this->load->view('test2.html', '', true); 
?>
                </div>-->

<?php
$i = 1;
if (isset($button_api) && !empty($button_api) && $statusMerchants) {
    foreach ($button_api as $ba) {
        ?>
        <summary class="ordersummary col-md-3">
            <center>
                <table>
                    <tr>
                        <td height="400" valign="top" style="padding-top: 15%;">
                            <table class="table">
                                <tr>
                                    <td align="center" colspan="3" height="100px">
                                        <img src="<?= base_url(); ?>assets/uploads/merchant/<?= $ba->bap_image; ?>" style="max-height: 100px; max-width: 100px" class="img-rounded" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Item Name</td>
                                    <td align="center">:</td>
                                    <th><?php
                                        $bap_name = $ba->bap_name;
                                        $str_len = 15;
                                        $str_bap_name = $this->my_func->getShortString($bap_name, $str_len);
                                        echo $str_bap_name;
                                        ?></th>
                                </tr>
        <!--                                        <tr>
                                    <td>Username</td>
                                    <td align="center">:</td>
                                    <th><?php // echo $ba->me_username;  ?></th>
                                </tr>-->
                                <?php if (is_numeric($ba->bap_price) && $ba->bap_price > 0) { ?>
                                    <tr>
                                        <td>Price in <?= $this->my_func->getCurrency(); ?></td>
                                        <td align="center">:</td>
                                        <th><?php 
                                        $pricemyr = $this->my_func->getCurrency() .' '. ((is_numeric($ba->bap_price)) ? (number_format($ba->bap_price, 2)) : ("0.00"));
                                        $str_pricemyr = $this->my_func->getShortString($pricemyr, $str_len);
                                        echo $str_pricemyr;
                                        ?></th>
                                    </tr>
                                <?php } ?>
                                <?php if (is_numeric($ba->bap_gold) && $ba->bap_gold > 0) { ?>
                                    <tr>
                                        <td>Price in Gold</td>
                                        <td align="center">:</td>
                                        <th><?php 
                                        $pricegold = ((is_numeric($ba->bap_gold)) ? (number_format($ba->bap_gold, 4)) : ("0.0000")) . " GRM";
                                        $str_pricegold = $this->my_func->getShortString($pricegold, $str_len);
                                        echo $str_pricegold;
                                        ?></th>
                                    </tr>
                                <?php } ?>
                                <?php if (is_numeric($ba->bap_silver) && $ba->bap_silver > 0) { ?>
                                    <tr>
                                        <td>Price in Silver</td>
                                        <td align="center">:</td>
                                        <th><?php 
                                        $pricesilver = ((is_numeric($ba->bap_silver)) ? (number_format($ba->bap_silver, 4)) : ("0.0000")) . " GRM"; 
                                        $str_pricesilver = $this->my_func->getShortString($pricesilver, $str_len);
                                        echo $str_pricesilver;
                                        ?></th>
                                    </tr>
                                <?php } ?>
                                <tr>
                                    <td>Link</td>
                                    <td align="center">:</td>
                                    <td>
                                        <a href="<?= base_url(); ?>aqad/index.php/payment/?product=<?= $this->my_func->dinarpal_encrypt($ba->bap_id); ?>">
                                            More info ...
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </center>
        </summary>
        <?php
        if ($i % 4 == 0) {
            echo "<br />";
        }
        ?>
        <?php $i++;
    }
} else { ?>

<center>
    <h4>
        <em>
            Opss! .. Item Not Found .. Try again.
        </em>
    </h4>
</center>

<?php } ?>
