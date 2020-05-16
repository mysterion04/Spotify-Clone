<?php include_once("./layout/head.php"); ?>

<?php include_once("./layout/header.php"); ?>

<?php include_once("./layout/banner-bg.php"); ?>

<div class="row no-gutters">
    <div class="col-3">
        <?php include_once("./layout/sidebar.php"); ?>
    </div>



<div class="col-9">
                <div class="section-content">
                    <h3>Privacy Info</h3>
                    <?php

                        if (isset($_SESSION['msg'])) {

                            echo '<div class="alert alert-danger" role="alert" style="border-radius: 0;">'.$_SESSION['msg'].'
                                    </div>';
                            unset($_SESSION['msg']);
                        }


                    ?>

                    <p style="color: black;">Your privacy and the security of your personal data are, and always will be, our highest priority.<br><br>That’s why we’ve created a Privacy Center to highlight some of the important sections of our Privacy Policy and to give you more info about the rights and controls you have in relation to your personal data.</p>

                    <h5 style="color: black;">Sign Out Everywhere</h5>

                    <p style="color: black;">Sign out wherever you have Spotify open, including the web, mobile, desktop or any other devices.</p>

                    <a href="../backend/logout.php" class="button-webPlay text-center" style="margin: 10px;">Sign Out Everywhere</a>

                    <h5 style="color: black;">How to stop Spotify processing my data ?</h5>

                    <p style="color: black;">Spotify needs to process some personal data in order to provide you with the Spotify service. To delete that personal data, you need to close your account.<br><br>You can control the processing of certain data categories from your account page or directly from the Spotify app (see “How do I control what personal data is processed about me?” above for more info).</p>

                    <h5 style="color: black;">How to port my music data to another music provider ?</h5>

                    <p style="color: black;">If you want to port your personal Spotify data to another service, you can download a copy of it in a machine readable format from the Privacy Settings section of your account page. This page also contains instructions for accessing your data and a summary of the categories of data you can expect to receive.</p>


                    <h5 style="color: black;">Can I update my personal details ?</h5>

                    <p style="color: black;">You can update your personal details in the <a style="color: green;" href="./edit-profile.php">Edit Profile</a> section of your account page.</p>
                </div>
            </div>
        </div>
    </div>
</section>









<?php include_once("./layout/footer.php") ?>

<?php include_once("./layout/bottom.php") ?>