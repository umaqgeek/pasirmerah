
<div class="row" style='margin-top: 5%; margin-bottom: 20%;'>
    <div class="col-md-10 col-md-offset-1">
        
        <?php
//        print_r($items); die();
        $noImage = $this->my_func->getNoImage(1);
        $vimg1 = (isset($items->v_image) && !empty($items->v_image) && $items->v_image != null && $items->v_image != "") ?
                ($items->v_image) : ($noImage);
        $vimg2 = (isset($items->v_image2) && !empty($items->v_image2) && $items->v_image2 != null && $items->v_image2 != "") ?
                ($items->v_image2) : ($noImage);
        $vimg3 = (isset($items->v_image3) && !empty($items->v_image3) && $items->v_image3 != null && $items->v_image3 != "") ?
                ($items->v_image3) : ($noImage);
        $vimg4 = (isset($items->v_image4) && !empty($items->v_image4) && $items->v_image4 != null && $items->v_image4 != "") ?
                ($items->v_image4) : ($noImage);
        $vimg5 = (isset($items->v_image5) && !empty($items->v_image5) && $items->v_image5 != null && $items->v_image5 != "") ?
                ($items->v_image5) : ($noImage);
        ?>

        <!-- Magic Zoom Plus Magento module version v4.9.2 [v1.4:v4.5.19] -->

        <div class="row">
            <div class="col-md-12">

                <div class="col-md-6">
                    <!-- Begin magiczoomplus -->
                    <div class="MagicToolboxContainer " >   

                        <a class="MagicZoomPlus" id="MagicZoomPlusImage14063" href="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg1; ?>" rel="zoom-width:550;zoom-height:550;show-title:false;" title="" style="position: relative; display: inline-block; text-decoration: none; outline: 0px; overflow: hidden; margin: auto; width: auto; height: auto;">
                            <img itemprop="image" src="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg1; ?>" alt="Istanbul Gold 1/2g Gold Bar (Birthday Assay) 999.9 - Cond: A+" style="opacity: 1;"><div class="MagicZoomPlusLoading" style="opacity: 0.75; display: none; overflow: hidden; position: absolute; visibility: hidden; z-index: 20; max-width: 346px; left: 122px; top: 162px;">Loading zoom...</div>

                            <div class="MagicZoomPup" style="z-index: 10; position: absolute; overflow: hidden; display: none; visibility: hidden; width: 315px; height: 315px; opacity: 0.5; left: 0px; top: 29px;"></div>
                            <div class="MagicZoomPlusHint" style="display: block; overflow: hidden; position: absolute; visibility: visible; z-index: 1; left: 2px; right: auto; top: 2px; bottom: auto; opacity: 0.75; max-width: 346px;">Zoom</div>
                        </a>


                        <div class="MagicToolboxMessage">Move your mouse over image or click to enlarge </div> 


                        <div id="MagicToolboxSelectors14063" class="MagicToolboxSelectorsContainer" style="margin-top: 5px">      

                            <?php if (isset($items->v_image) && !empty($items->v_image) && $items->v_image != null && $items->v_image != "" && $items->v_image != $noImage) { ?>
                                <a onclick="magicToolboxOnChangeSelector(this);" href="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg1; ?>" rel="zoom-id:MagicZoomPlusImage14063;caption-source:a:title;zoom-width:550;zoom-height:550;show-title:false;" rev="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg1; ?>" class="MagicThumb-swap" style="outline: none; display: inline-block;">
                                    <img src="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg1; ?>" alt="" style="max-height: 100px; max-width: 90px"></a> 	
                            <?php } ?>

                            <?php if (isset($items->v_image2) && !empty($items->v_image2) && $items->v_image2 != null && $items->v_image2 != "" && $items->v_image2 != $noImage) { ?>
                                <a onclick="magicToolboxOnChangeSelector(this);" href="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg2; ?>" rel="zoom-id:MagicZoomPlusImage14063;caption-source:a:title;zoom-width:550;zoom-height:550;show-title:false;" rev="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg2; ?>" id="mt-618484015098" class="MagicThumb-swap" style="outline: none; display: inline-block;">
                                    <img src="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg2; ?>" alt="" style="max-height: 100px; max-width: 90px"></a> 	
                            <?php } ?>

                            <?php if (isset($items->v_image3) && !empty($items->v_image3) && $items->v_image3 != null && $items->v_image3 != "" && $items->v_image3 != $noImage) { ?>
                                <a onclick="magicToolboxOnChangeSelector(this);" href="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg3; ?>" rel="zoom-id:MagicZoomPlusImage14063;caption-source:a:title;zoom-width:550;zoom-height:550;show-title:false;" rev="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg3; ?>" id="mt-618484015098" class="MagicThumb-swap" style="outline: none; display: inline-block;">
                                    <img src="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg3; ?>" alt="" style="max-height: 100px; max-width: 90px"></a> 	
                            <?php } ?>

                            <?php if (isset($items->v_image4) && !empty($items->v_image4) && $items->v_image4 != null && $items->v_image4 != "" && $items->v_image4 != $noImage) { ?>
                                <a onclick="magicToolboxOnChangeSelector(this);" href="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg4; ?>" rel="zoom-id:MagicZoomPlusImage14063;caption-source:a:title;zoom-width:550;zoom-height:550;show-title:false;" rev="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg4; ?>" id="mt-846576356680" class="MagicThumb-swap" style="outline: none; display: inline-block;">
                                    <img src="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg4; ?>" alt="" style="max-height: 100px; max-width: 90px"></a> 
                            <?php } ?>

                            <?php if (isset($items->v_image5) && !empty($items->v_image5) && $items->v_image5 != null && $items->v_image5 != "" && $items->v_image5 != $noImage) { ?>
                                <a onclick="magicToolboxOnChangeSelector(this);" href="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg5; ?>" rel="zoom-id:MagicZoomPlusImage14063;caption-source:a:title;zoom-width:550;zoom-height:550;show-title:false;" rev="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg5; ?>" id="mt-831910720103" class="MagicThumb-swap" style="outline: none; display: inline-block;">
                                    <img src="<?= base_url() . 'assets/uploads/items/'; ?><?= $vimg5; ?>" alt="" style="max-height: 100px; max-width: 90px"></a>    
                            <?php } ?>
                        </div>              
                    </div> 
                    <!-- End magiczoomplus --> 
                    <img id="image" scr="" style="display: none !important;">        
                </div>



                <div class="col-md-6">
                    <h1><?= $items->v_name; ?> <?= $items->v_weight; ?>g <?= $items->itc_name; ?> <?= $items->it_name; ?> <?= $items->pu_desc; ?> </h1>
                    <table class="table table-stripe">
                        <tr >
                            <td align="left"><b>Description</b></td>
                            <td align="left">:</td>
                            <td> <?= $items->v_desc; ?></td>
                        </tr>                
                        <tr >
                            <td align="left"><b>Item ID</b></td>
                            <td align="left">:</td>
                            <td> V<?= $items->v_id; ?></td>
                        </tr>
                        <tr >
                            <td align="left"><b>Name</b></td>
                            <td align="left">:</td>
                            <td> <?= $items->v_name; ?></td>
                        </tr>
                        <tr>
                            <td align="left"><b>Price Rate</b></td>
                            <td align="left">:</td>
                            <td ><?= $this->my_func->getCurrency(); ?> <?= number_format($items->v_price_rate, 2); ?></td>
                        </tr>
                        <tr>
                            <td align="left"><b>Purity</b></td>
                            <td align="left">:</td>
                            <td ><?= $items->pu_desc; ?></td>
                        </tr>
                        <tr>
                            <td align="left"><b>Weight </b></td>
                            <td align="left">:</td>
                            <td><?= number_format($items->v_weight, 2); ?> GRM </td>
                        </tr>
                        <tr >
                            <td align="left"><b>Certificate No </b></td>
                            <td align="left">:</td>
                            <td><?= $items->v_cert; ?> </td> 
                        </tr>
                    </table>
                </div>


            </div>	
        </div>
        
    </div>
</div>