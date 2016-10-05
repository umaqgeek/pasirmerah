
<div class="container">
	<!-- Containers
	================================================== -->
	<div class="bs-docs-section">
    	<div class="row">
		  <div class="col-md-12">
            
           	<table class="table table-striped">
                <thead>
                  <tr>
                    <td><strong>No.</strong></td>
                    <td><strong>Item Type</strong></td>
                    <td><strong>Weight (gram)</strong></td>
                    <td><strong>Purity</strong></td>
                    <td align="right"><strong>Rate (MYR)</strong></td>
                    <td align="right"><strong>Marhun Value (MYR)</strong></td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>
                    <select class="form-control" name="it1" id="it1" onchange="calculate(1);">
                    <?php if (sizeof($item_type) > 0) { foreach($item_type as $it) { ?>
                      <option value="<?=$it->it_id; ?>"><?=$it->it_name; ?></option>
                    <?php } } ?>
                    </select>
                    </td>
                    <td><input name="w1" type="text" class="form-control" id="w1" onkeyup="calculate(1);" value="" placeholder="0.00" /></td>
                    <td>
                    <select class="form-control" name="pu1" id="pu1" onchange="calculate(1);">
                    <?php if (sizeof($purity) > 0) { foreach($purity as $pu) { ?>
                      <option value="<?=$pu->pu_id; ?>"><?=$pu->pu_desc; ?></option>
                    <?php } } ?>
                    </select>
                    </td>
                    <td align="right" id="price1">0.00</td>
                    <td align="right" id="nilai1">0.00</td>
                    <input name="price_1" id="price_1" type="hidden" value="0.00" />
                    <input name="nilai_1" id="nilai_1" type="hidden" value="0.00" />
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>
                    <select class="form-control" name="it2" id="it2" onchange="calculate(2);">
                    <?php if (sizeof($item_type) > 0) { foreach($item_type as $it) { ?>
                      <option value="<?=$it->it_id; ?>"><?=$it->it_name; ?></option>
                    <?php } } ?>
                    </select>
                    </td>
                    <td><input name="w2" type="text" class="form-control" id="w2" onkeyup="calculate(2);" value="" placeholder="0.00" /></td>
                    <td>
                    <select class="form-control" name="pu2" id="pu2" onchange="calculate(2);">
                    <?php if (sizeof($purity) > 0) { foreach($purity as $pu) { ?>
                      <option value="<?=$pu->pu_id; ?>"><?=$pu->pu_desc; ?></option>
                    <?php } } ?>
                    </select>
                    </td>
                    <td align="right" id="price2">0.00</td>
                    <td align="right" id="nilai2">0.00</td>
                    <input name="price_2" id="price_2" type="hidden" value="0.00" />
                    <input name="nilai_2" id="nilai_2" type="hidden" value="0.00" />
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>
                    <select class="form-control" name="it3" id="it3" onchange="calculate(3);">
                    <?php if (sizeof($item_type) > 0) { foreach($item_type as $it) { ?>
                      <option value="<?=$it->it_id; ?>"><?=$it->it_name; ?></option>
                    <?php } } ?>
                    </select>
                    </td>
                    <td><input name="w3" type="text" class="form-control" id="w3" onkeyup="calculate(3);" value="" placeholder="0.00" /></td>
                    <td>
                    <select class="form-control" name="pu3" id="pu3" onchange="calculate(3);">
                    <?php if (sizeof($purity) > 0) { foreach($purity as $pu) { ?>
                      <option value="<?=$pu->pu_id; ?>"><?=$pu->pu_desc; ?></option>
                    <?php } } ?>
                    </select>
                    </td>
                    <td align="right"  id="price3">0.00</td>
                    <td align="right" id="nilai3">0.00</td>
                    <input name="price_3" id="price_3" type="hidden" value="0.00" />
                    <input name="nilai_3" id="nilai_3" type="hidden" value="0.00" />
                  </tr>
                  <tr>
                    <td>4</td>
                    <td>
                    <select class="form-control" name="it4" id="it4" onchange="calculate(4);">
                    <?php if (sizeof($item_type) > 0) { foreach($item_type as $it) { ?>
                      <option value="<?=$it->it_id; ?>"><?=$it->it_name; ?></option>
                    <?php } } ?>
                    </select>
                    </td>
                    <td><input name="w4" type="text" class="form-control" id="w4" onkeyup="calculate(4);" value="" placeholder="0.00" /></td>
                    <td>
                    <select class="form-control" name="pu4" id="pu4" onchange="calculate(4);">
                    <?php if (sizeof($purity) > 0) { foreach($purity as $pu) { ?>
                      <option value="<?=$pu->pu_id; ?>"><?=$pu->pu_desc; ?></option>
                    <?php } } ?>
                    </select>
                    </td>
                    <td align="right" id="price4">0.00</td>
                    <td align="right" id="nilai4">0.00</td>
                    <input name="price_4" id="price_4" type="hidden" value="0.00" />
                    <input name="nilai_4" id="nilai_4" type="hidden" value="0.00" />
                  </tr>
                  <tr>
                    <td>5</td>
                    <td>
                    <select class="form-control" name="it5" id="it5" onchange="calculate(5);">
                    <?php if (sizeof($item_type) > 0) { foreach($item_type as $it) { ?>
                      <option value="<?=$it->it_id; ?>"><?=$it->it_name; ?></option>
                    <?php } } ?>
                    </select>
                    </td>
                    <td><input name="w5" type="text" class="form-control" id="w5" onkeyup="calculate(5);" value="" placeholder="0.00" /></td>
                    <td>
                    <select class="form-control" name="pu5" id="pu5" onchange="calculate(5);">
                    <?php if (sizeof($purity) > 0) { foreach($purity as $pu) { ?>
                      <option value="<?=$pu->pu_id; ?>"><?=$pu->pu_desc; ?></option>
                    <?php } } ?>
                    </select>
                    </td>
                    <td align="right" id="price5">0.00</td>
                    <td align="right" id="nilai5">0.00</td>
                    <input name="price_5" id="price_5" type="hidden" value="0.00" />
                    <input name="nilai_5" id="nilai_5" type="hidden" value="0.00" />
                  </tr>
              </tbody>
            </table>
            <table>
              <tbody>
                  <tr>
                    <td align="left">Total (MYR)</td>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="center">:</td>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="left" id="totaPrice">0.00</td>
                    <input name="totaPrice_1" id="totaPrice_1" type="hidden" value="0.00" />
                  </tr>
                  <tr>
                    <td align="left">Collateral Rate (%)</td>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="center">:</td>
                    <td align="left" id="totaPrice2">&nbsp;</td>
                    <td align="left" id="totaPrice2">&nbsp;</td>
                    <td align="left" id="totaPrice2">
                      <select class="form-control" name="col_rate" id="col_rate" onchange="tukarRate();">
                        <?php for($ir=50;$ir<=80;$ir+=5) { ?>
                        <option value="<?=$ir ?>">
                        <?=$ir ?>
                        </option>
                        <?php } ?>
                    </select></td>
                  </tr>
                  <tr>
                    <td align="left">Collateral Cash / DinarPal E-Dinar 
                      
                    (MYR)</td>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="center">:</td>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="left" id="col_nilai">0.00</td>
                    <input name="col_nilai_1" id="col_nilai_1" type="hidden" value="0.00" />
                  </tr>
                  <tr>
                    <td align="left">Safe Keeping Fee (MYR)</td>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="center">:</td>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="left" id="safe_keeping_fee">0.55</td>
                    <input name="safe_keeping_fee_1" id="safe_keeping_fee_1" type="hidden" value="0.00" />
                  </tr>
                  <tr>
                    <td align="left">Keeping Period (Month)</td>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="center">:</td>
                    <td align="left" id="totaPrice5">&nbsp;</td>
                    <td align="left" id="totaPrice5">&nbsp;</td>
                    <td align="left" id="totaPrice5">
                      <select class="form-control" name="keeping_period" id="keeping_period" onchange="tukarRate();">
                        <?php for($ir=1;$ir<=6;$ir+=1) { ?>
                        <option value="<?=$ir ?>">
                          <?=$ir ?>
                        </option>
                        <?php } ?>
                    </select></td>
                  </tr>
                  <tr>
                    <td align="left">Keeping Period Fee (MYR)</td>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="center">:</td>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="left" id="keeping_period_fee">0.55</td>
                    <input name="keeping_period_fee_1" id="keeping_period_fee_1" type="hidden" value="0.00" />
                  </tr>
                  <tr>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="left">&nbsp;</td>
                    <td align="center">&nbsp;</td>
                    <td align="left" id="totaPrice7">&nbsp;</td>
                    <td align="left" id="totaPrice7">&nbsp;</td>
                    <td align="left" id="totaPrice7">&nbsp;</td>
                  </tr>
              </tbody>
              </table>
            	
            </div>
            <div class="col-md-12">
            
            	<table cellspacing="0" cellpadding="10">
                  <tr>
                    <td>Notes:</td>
                  </tr>
                  <tr>
                    <td>Marhun Value = Weight * Rate</td>
                  </tr>
                  <tr>
                    <td>Safe Keeping Fee = [ Marhun * (Safe Keeping Fee Rate / 100) * (Total Days / 365) * 12 ]</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>
                      <button type="button" class="btn btn-dinarpal" onclick="location.href='<?=site_url('login/?member/purchaseAndPawn/purchase/21')?>';">Purchase &amp; Pawn</button>
    
   				    <button type="button" class="btn btn-dinarpal" onclick="location.href='<?=site_url('login/?member/purchaseAndPawn/pawn2/22')?>';">Pawn &amp; Courier</button>                    &nbsp;</td>
                  </tr>
                </table>
            
            </div>
            <div class="row">
           	  <div class="col-md-12" style="height:100px">
                </div>
            </div>
      </div>
		<!-- Panels
		================================================== -->
		
		
		<!-- Footer
		================================================== -->
		
        
	</div>
</div>

