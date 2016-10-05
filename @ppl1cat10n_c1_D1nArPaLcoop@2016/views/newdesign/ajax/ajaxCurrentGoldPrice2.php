<table style=" border-color: white;" border="1" cellpadding="0" cellspacing="0" width="100%" id="table1">
    <thead>
        <tr style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2;">
            <td style="color: white;text-align: center;">#</td>
            <td style="color: white;text-align: center;">Image</td>
            <td style="color: white;text-align: center;">Cert. No.</td>
            <!--<td style="color: white;text-align: center;">Name / Brand / Item Type / Category</td>-->
            <td style="color: white;text-align: center;">Purity</td>
            <td style="color: white;text-align: center;">Weight (GRM)</td>
            <td style="color: white;text-align: center;">Current Price (<?=$this->my_func->getCurrency(); ?>)</td>
            <td style="color: white;text-align: center;" width='10%'>Action</td>
        </tr>
    </thead>
    <tbody>
        <?php
        $i = 1;
        if (isset($vault) && !empty($vault)) {
            foreach ($vault as $v) {
                
                $v_id = $v->v_id;
                    
                $ivmt_id = $v->ivmt_id;
                $v_id_parent = $v->v_id_parent;
                $vault_parent = $this->m_vault_parent->get($v_id_parent);
                $v_weight_parent = 0.00;
                if ($v_id_parent != 0 && isset($vault_parent) && !empty($vault_parent)) {
                    $v_weight_parent = (is_numeric($vault_parent[0]->vp_weight)) ? ($vault_parent[0]->vp_weight) : (0);
                }

                $minting_icon = $this->my_func->getMintingIcon($v_id);

                $idsx0 = $this->my_func->dinarpal_encrypt($v->v_id);
                $itc_idx = $this->my_func->dinarpal_encrypt($v->itc_id);
                $v_namex = $this->my_func->dinarpal_encrypt($v->v_name);
                $br_idx = $this->my_func->dinarpal_encrypt($v->br_id);

                $v_price_rate = (is_numeric($v->v_price_rate)) ? ($v->v_price_rate) : (0);

                $noImage = $this->my_func->getNoImage(1);
                $vimg1 = (isset($v->v_image) && !empty($v->v_image) && $v->v_image != null && $v->v_image != "") ?
                        ($v->v_image) : ($noImage);
                
                $vimages = $this->my_func->getVaultImages($v_id);

                $link = site_url('member/muamalat/viewProduct2/341?v=' . $idsx0 . '&itc=' . $itc_idx . '&name=' . $v_namex . '&br=' . $br_idx);
                
                ?>
                <tr style=" border-color: #B6BDD2; text-align: center;">
                    <td><?= $i; ?></td>
                    <td>
                        <!--<a name = "<?= $idsx0; ?>" class = "tekan">-->
                        <a href="<?= $link; ?>">
                            <?=$vimages; ?>
                        </a>
                    </td>
                    <td>
<!--                        V<?= $v->v_id; ?>
                        <br />-->
                        <?= $v->v_cert; ?>
                        <br />
                        <?=$minting_icon; ?>
                    </td>
<!--                    <td style="">
                        <a class = "tekan" name = "<?= $idsx0; ?>" title="More detail about <?= $v->v_name; ?>" >
                        <a href="<?= $link; ?>">
                            <?= $v->v_name; ?>
                        </a>
                        <br />
                        <?= $v->br_name; ?>
                        <br />
                        <?= $v->it_name; ?>
                        <br />
                        <?= $v->itc_name; ?>
                    </td>-->
                    <td style=""><?= $v->pu_desc; ?></td>
                    <td style=""><?php 
                    $v_weight = (is_numeric($v->v_weight)) ? ($v->v_weight) : (0);
                    echo number_format($v_weight, 2);
                    if ($ivmt_id == 2) {
                        echo " / " . number_format($v_weight_parent, 2);
                    }
                    ?></td>
                    <td style="">
                        <?php // echo number_format($v->itp_price * $v->v_weight, 2); ?>
                        <?= number_format($v_price_rate, 2); ?>
                        <input class="form-control" name="qty_item_souq_<?= $i; ?>" type="hidden" id="qty_item_souq_<?= $i; ?>" size="4" value="1" />
                        <br />
                        <?=$minting_icon; ?>
                    </td>
                    <td>
                        <a href='<?=site_url('login/setCookie/?vpurchase='.$this->my_func->dinarpal_encrypt($v_id)); ?>'>
                            <em>You need to login to purchase this item.</em>
                        </a>
                    </td>
                </tr>
            <?php
            $i++; 
            }
        }
        ?>
    </tbody>
</table>

<script>
    $(document).ready(function () {
        $("#table1").DataTable({
            "pageLength": 25,
            "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]]
        });
    });
</script>