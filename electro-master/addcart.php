<!--  -->


<?php include "header.php"; ?>
<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- Order Details -->
            <div class="col-md-10 order-details">
                <div class="section-title text-center">
                    <h3 class="title">Your Order</h3>
                </div>
                <div class="order-summary">
                    <div class="order-col">
                        <div><strong>PRODUCT</strong></div>
                        <div><strong>TOTAL</strong></div>
                    </div>
                    <?php

                    if (isset($_SESSION['cart'])) {
                    ?>
                        <div class="order-products">
                            <?php
                            $total = 0;
                            foreach ($_SESSION['cart'] as $key => $value) {
                                foreach ($allProducts as $p) {
                                    if ($p['id'] == $key) {
                                        $total = $total + $p['price']*$value;
                            ?>
                                        <div class="order-col">
                                            <div><?php echo $value ?>x <?php echo $p['name'] ?></div>
                                            <div><?php echo number_format($p['price']*$value) ?> VND</div>
                                        </div>
                                        <a href="delete.php?id=<?php echo $p['id'] ?>" class="primary-btn">DELETE</a>
                            <?php
                                    }
                                }
                            }
                            ?>
                        </div>
                        <div class="order-col">
                            <div><strong>TOTAL</strong></div>
                            <div><strong class="order-total"><?php echo number_format($total)?>VND</strong></div>
                        </div>

                    <?php } ?>
                </div>
                <a href="delete.php" class="primary-btn order-submit">DELETE ALL</a>
            </div>
            <!-- /Order Details -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<?php include "footer.php"; ?>