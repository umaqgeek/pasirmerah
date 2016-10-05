<?php
$this->load->library('QRGenerator');
$ayat = (isset($_GET['ayat'])) ? ($_GET['ayat']) : ("Tak de ayat pun!");
$ayat = str_replace("ASD", "#", $ayat);
$ayat = $this->my_func->dinarpal_encrypt($ayat);
$qrcode = new QRGenerator($ayat, 100);  // 100 is the qr size
print "<img src='". $qrcode->generate() ."'>"
?>