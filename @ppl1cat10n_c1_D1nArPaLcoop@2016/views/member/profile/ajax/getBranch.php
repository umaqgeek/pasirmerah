<label for="BanksBranch" class="col-sm-4 control-label"><strong>Branch &nbsp;&nbsp;&nbsp;
        <span style="color:red;">*</span>&nbsp;&nbsp;:</strong></label>
<div class="col-sm-7">
    <select name="bbi_id" class="form-control">
        <?php if (isset($banks_branch) && !empty($banks_branch)) { foreach ($banks_branch as $bbi) { ?>
        <option value="<?=$bbi->bbi_id; ?>" 
            <?php if (isset($bbi_id) && !empty($bbi_id) && $bbi_id==$bbi->bbi_id) { echo "selected"; } ?>><?=$bbi->bbi_address; ?></option>
        <?php } } else { ?>
        <option value="-1">-- Please choose branch --</option>
        <?php } ?>
    </select>
</div>
