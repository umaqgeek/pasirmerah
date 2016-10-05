<table style=" border-color: white;" border="1" cellpadding="0" cellspacing="0" width="100%" id="table1">
    <thead>
        <tr style="background-image:linear-gradient(#28b3ee,#0287c0);  border-color: #B6BDD2;">
            <td style="color: white;text-align: center;">#</td>
            <td style="color: white;text-align: center;">Item Name</td>
            <td style="color: white;text-align: center;">Cert. No.</td>
            <td style="color: white;text-align: center;">Gram</td>
            <td style="color: white;text-align: center;">Price</td>
        </tr>
    </thead>
    <tbody>
        <?php
        $iv = 1;
        if (isset($vault) && !empty($vault)) {
            foreach ($vault as $v) {
                ?>
                <tr style=" border-color: #B6BDD2; text-align: center;">
                    <td><?= $iv++; ?></td>
                    <td><?= $v->v_name; ?></td>
                    <td><?= $v->v_cert; ?></td>
                    <td><?= ((is_numeric($v->v_weight)) ? (number_format($v->v_weight, 2)) : ("0.00")); ?></td>
                    <td><?= $currency; ?> <?= ((is_numeric($v->v_price_rate)) ? (number_format($v->v_price_rate, 2)) : ("0.00")); ?></td>
                </tr>
            <?php
            }
        }
        ?>
    </tbody>
</table>

<script>
    $(document).ready(function () {
        $("#table1").DataTable({
            "pageLength": 5,
            "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]]
        });
    });
</script>