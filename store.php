<?php
include "header.php";
?>
<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<ul class="breadcrumb-tree">
					<li><a href="#">Home</a></li>
					<li><a href="#">All Categories</a></li>
					<li><a href="#">Accessories</a></li>
					<li class="active">Headphones (227,490 Results)</li>
				</ul>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /BREADCRUMB -->

<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- ASIDE -->
			<div id="aside" class="col-md-3">
				<!-- aside Widget -->
				<div class="aside">
					<h3 class="aside-title">Categories</h3>
					<div class="checkbox-filter">
						<?php foreach ($getAllProtype as $value) : ?>
							<div class="input-checkbox">
								<input type="checkbox" id="category-<?= $value['type_id'] ?>">
								<label for="category-<?= $value['type_id'] ?>">
									<span></span>
									<?= $value['type_name'] ?>
									<small>(<?= rand(120, 300); ?>)</small>
								</label>
							</div>
						<?php endforeach; ?>
					</div>
				</div>
				<!-- /aside Widget -->

				<!-- aside Widget -->
				<div class="aside">
					<h3 class="aside-title">Price</h3>
					<div class="price-filter">
						<div id="price-slider"></div>
						<div class="input-number price-min">
							<input id="price-min" type="number">
							<span class="qty-up">+</span>
							<span class="qty-down">-</span>
						</div>
						<span>-</span>
						<div class="input-number price-max">
							<input id="price-max" type="number">
							<span class="qty-up">+</span>
							<span class="qty-down">-</span>
						</div>
					</div>
				</div>
				<!-- /aside Widget -->

				<!-- aside Widget -->
				<div class="aside">
					<h3 class="aside-title">Brand</h3>
					<div class="checkbox-filter">
						<?php foreach ($getAllManufacture as $value) : ?>
							<div class="input-checkbox">
								<input type="checkbox" id="brand-<?= $value['manu_id'] ?>">
								<label for="brand-<?= $value['manu_id'] ?>">
									<span></span>
									<?= $value['manu_name'] ?>
									<small>(<?= rand(130, 190) ?>)</small>
								</label>
							</div>
						<?php endforeach; ?>

					</div>
				</div>
				<!-- /aside Widget -->

				<!-- aside Widget -->
				<div class="aside">
					<h3 class="aside-title">Top selling</h3>
					<?php foreach ($getTopSelling_3_6 as $value) : ?>
						<div class="product-widget">
							<div class="product-img">
								<img src="image/<?= $value['image'] ?>" alt="">
							</div>
							<div class="product-body">
								<p class="product-category"><?= $value['manu_name'] ?></p>
								<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
								<h4 class="product-price"><?= number_format($value['price']) ?> VND
									<!-- <del class="product-old-price">$990.00</del> -->
								</h4>
							</div>

						</div>
					<?php endforeach; ?>
				</div>
				<!-- /aside Widget -->
			</div>
			<!-- /ASIDE -->

			<!-- STORE -->
			<div id="store" class="col-md-9">
				<!-- store top filter -->
				<div class="store-filter clearfix">
					<div class="store-sort">
						<label>
							Sort By:
							<select class="input-select">
								<option value="0">Popular</option>
								<option value="1">Position</option>
							</select>
						</label>

						<label>
							Show:
							<select class="input-select">
								<option value="0">20</option>
								<option value="1">50</option>
							</select>
						</label>
					</div>
					<ul class="store-grid">
						<li class="active"><i class="fa fa-th"></i></li>
						<li><a href="#"><i class="fa fa-th-list"></i></a></li>
					</ul>
				</div>
				<!-- /store top filter -->

				<!-- store products -->
				<div class="row">
					<!-- product -->

					<?php
					if (isset($_GET['keyword'])) :
						$keyWord = $_GET['keyword'];
						$search = $product->search($keyWord);
						foreach ($search as $value) :

					?>
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img" style="height: 200px;">
										<img style="height: 200px; padding: 20px" src='image/<?php echo $value['image'] ?>' alt="">
										<div class="product-label">
											<!-- <span class="sale">-30%</span> -->
											<span class="new">NEW</span>
										</div>
									</div>
									<div class="product-body">
										<p class="product-category"><?= $value['manu_name'] ?></p>
										<h3 class="product-name" style="height: 50px;"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
										<h4 class="product-price"><?= number_format($value['price']) ?> VND
											<!-- <del class="product-old-price">$990.00</del>-->
										</h4>
										<div class="product-rating">
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
										</div>
									</div>
									<a href="products.php? id=<?= $value['id'] ?>">
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
										</div>
									</a>
								</div>
							</div>
					<?php endforeach;
					endif; ?>
					<!-- /product -->


				</div>
				<!-- /store products -->

				<!-- store bottom filter -->
				<div class="store-filter clearfix">
					<span class="store-qty">Showing 20-100 products</span>
					<ul class="store-pagination">
						<li class="active">1</li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
					</ul>
				</div>
				<!-- /store bottom filter -->
			</div>
			<!-- /STORE -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->

<!-- NEWSLETTER -->
<div id="newsletter" class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<div class="newsletter">
					<p>Sign Up for the <strong>NEWSLETTER</strong></p>
					<form>
						<input class="input" type="email" placeholder="Enter Your Email">
						<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
					</form>
					<ul class="newsletter-follow">
						<li>
							<a href="#"><i class="fa fa-facebook"></i></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-twitter"></i></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-instagram"></i></a>
						</li>
						<li>
							<a href="#"><i class="fa fa-pinterest"></i></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /NEWSLETTER -->

<?php include "footer.php" ?>