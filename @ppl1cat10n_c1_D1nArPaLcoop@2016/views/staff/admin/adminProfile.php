
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <br><br />
                    
                    <button type="button" class="button" onclick="location.href = '<?= site_url('staff/newMenu/manageprofile/019'); ?>';">Back</button>

                    <br><br />

                    <form method="post" action="<?= site_url('staff/manageStaff/manageProfile/x16'); ?>" enctype="multipart/form-data">

                        <table class="table">
                            <tr>
                                <th>Profile Image</th>
                                <th>:</th>
                                <td>
                                    <img src="<?= base_url(); ?>assets/uploads/profile/" class="img-circle" style="max-width: 150px; max-height: 150px;" />
                                    <br />
                                    <input type="hidden" name="me_image2" value="" />
                                    <input type="file" name="me_image" class="form-control" placeholder="Upload profile image here." />
                                </td>
                            </tr>
                            <tr>
                                <th>Username</th>
                                <th>:</th>
                                <td>
                                    <input type="text" name="me_username" value="" class="form-control" placeholder="Insert username here." />
                                    <input type="hidden" name="me_username2" value="" />
                                </td>
                            </tr>
                            <tr>
                                <th>First Name</th>
                                <th>:</th>
                                <td>
                                    <input type="text" name="me_firstname" value="" class="form-control" placeholder="Insert first name here." />
                                </td>
                            </tr>
                            <tr>
                                <th>Last Name</th>
                                <th>:</th>
                                <td>
                                    <input type="text" name="me_lastname" value="" class="form-control" placeholder="Insert last name here." />
                                </td>
                            </tr>
                            <tr>
                                <th>E-Mail</th>
                                <th>:</th>
                                <td>
                                    <input type="text" name="me_email" value="" class="form-control" placeholder="Insert email here." />
                                </td>
                            </tr>
                            <tr>
                                <th>Gender</th>
                                <th>:</th>
                                <td>
                                    <select name="g_id" class="form-control">
                                        <?php
                                        if (isset($gender) && !empty($gender)) {
                                            foreach ($gender as $g) {
                                                ?>
                                                <option value="<?= $g->g_id; ?>" <?php
                                                if ($g->g_id == $profile[0]->g_id) {
                                                    echo "selected";
                                                }
                                                ?>><?= $g->g_desc; ?></option>
                                                    <?php
                                                    }
                                                }
                                                ?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>Office Branch</th>
                                <th>:</th>
                                <td>
                                    <select name="sl_id" class="form-control">
                                        <?php
                                        if (isset($branch) && !empty($branch)) {
                                            foreach ($branch as $sl) {
                                                ?>
                                                <option value="<?= $sl->sl_id; ?>" <?php
                                                if ($sl->sl_id == $profile[0]->sl_id) {
                                                    echo "selected";
                                                }
                                                ?>><?= $sl->sl_name; ?></option>
                                                    <?php }
                                                }
                                                ?>
                                    </select>
                                </td>
                            </tr>>
                        </table>

                        <button type="submit" class="button">Submit</button>

                    </form>
                </div>
            </div>

        </div>

    </body>



</html>






