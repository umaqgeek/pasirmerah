<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script language="javascript">
 var base_url = "<?=base_url()?>"
</script>
<link rel="stylesheet" href="<?=base_url()?>css/css.css" type="text/css"/>
<script language="javascript" src="<?=base_url()?>js/jquery/jquery.tools.min.js"></script>
<script language="javascript" src="<?=base_url()?>js/common.js">

</script>
<?php
	if(isset($head_content))
	{
		echo $head_content;
	}
?>
</head>



<body>
<div id="container">
    <div id="header">header</div>
    <div id="contentleft" style="visibility:inherit"><?=$menu_content?></div>
    <div id="contentright" style="position:relative; height:100%"><?=$main_content?></div>
    <div id="footer"></div>
</div>
</body>
</html>