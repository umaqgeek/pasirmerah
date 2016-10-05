
<div class="row">
	<div class="col-md-12" style="margin-top: 2%;">
    </div>
</div>

<div class="row">
	<div class="col-md-12">
<form method="post" action="<?=site_url('login/tukaqEmas/2'); ?>">
<table class="table table-striped" border="1">
  <tr>
    <td>Purity / Item Type&nbsp;</td>
<?php if ($item_type) { foreach ($item_type as $it) { ?>
    <td><?=$it->it_name; ?>&nbsp;</td>
<?php } } ?>
  </tr>
<?php
if ($purity) {
	foreach ($purity as $pu) {
?>
  <tr>
    <td><?=$pu->pu_desc; ?>&nbsp;</td>
<?php 
		if ($item_type) { 
			foreach ($item_type as $it) { 
				$item_type_purity = $this->m_item_type_purity->get_calculator($it->it_id, $pu->pu_id);
				$price = (isset($item_type_purity[0]->itp_price)) ? ($item_type_purity[0]->itp_price) : ('0.00');
?>
    <td>
    <input type="text" name="<?=$pu->pu_id; ?>_<?=$it->it_id; ?>" id="<?=$pu->pu_id; ?>_<?=$it->it_id; ?>" value="<?=$price; ?>" class="form-control" placeholder="0.00" />
    &nbsp;</td>
<?php 
			} 
		} 
?>
  </tr>
<?php
	}
}
?>
</table>
<button type="submit" class="btn btn-dinarpal">Save</button>
</form>
    </div>
</div>
