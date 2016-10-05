<!--<style>
    .maintenance {
        background-image: url('<?=base_url(); ?>assets/imagess/maintenance1.png');
        height: 100%;
        width: 100%;
        background-repeat: no-repeat;
        background-position: center;
    }
    body {
        background-color: #0B2E53;
    }
</style>

<div class="maintenance"></div>-->

<?php echo $this->load->view('test4', '', true); ?>

<script src="<?php echo base_url().'assets/js/jquery-1.11.1.js' ?>"></script> 
<script type="text/javascript">
    function checkMaintenance() {
        $.post("<?=site_url('maintenance/isMaintenance'); ?>", {
        }).done(function (data) {
            if (data != '-1') {
                location.href = '<?=site_url('version3'); ?>';
            } else {
                var time = setTimeout("checkMaintenance()", 5000);
            }
        });
    }
    checkMaintenance();
</script>