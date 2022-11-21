<?php include "header.php" ?>


<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img src="./img/shop01.png" alt="">
					</div>
					<div class="shop-body">
						<h3>Laptop<br>Collection</h3>
						<a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->

			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img src="./img/shop03.png" alt="">
					</div>
					<div class="shop-body">
						<h3>Accessories<br>Collection</h3>
						<a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->

			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img src="./img/shop02.png" alt="">
					</div>
					<div class="shop-body">
						<h3>Cameras<br>Collection</h3>
						<a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->

<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">

			<!-- section title -->
			<div class="col-md-12">
				<div class="section-title">
					<h3 class="title">New Products</h3>
					<div class="section-nav">
						<ul class="section-tab-nav tab-nav">
							<?php foreach ($getOneProtype as $value) : ?>
								<li class="active"><a data-toggle="tab" href="#tab1"><?= $value['type_name'] ?></a></li>
							<?php endforeach; ?>
							<?php foreach ($getFourProtype as $value) : ?>
								<li><a data-toggle="tab" href="#tab1"><?= $value['type_name'] ?></a></li>
							<?php endforeach; ?>
						</ul>
					</div>
				</div>
			</div>
			<!-- /section title -->

			<!-- Products tab & slick -->
			<div class="col-md-12">
				<div class="row">
					<div class="products-tabs">
						<!-- tab -->
						<div id="tab1" class="tab-pane active">
							<div class="products-slick" data-nav="#slick-nav-1">
								<!-- product -->
								<?php foreach ($getNewProducts as $value) : ?>
									<div class="product">
										<div class="product-img">
											<img src='images/<?php echo $value['image'] ?>' alt="">
											<div class="product-label">
												<span class="new">NEW</span>
											</div>
										</div>
										<div class="product-body">
											<p class="product-category"><?= $value['manu_name'] ?></p>
											<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
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
								<?php endforeach; ?>
							</div>
							<div id="slick-nav-1" class="products-slick-nav"></div>
						</div>
						<!-- /tab -->
					</div>
				</div>
			</div>
			<!-- Products tab & slick -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->

<!-- HOT DEAL SECTION -->
<div id="hot-deal" class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<div class="hot-deal">
					<ul class="hot-deal-countdown">
						<li>
							<div>
								<h3>1</h3>
								<span>Days</span>
							</div>
						</li>
						<li>
							<div>
								<h3>1</h3>
								<span>Hours</span>
							</div>
						</li>
						<li>
							<div>
								<h3>1</h3>
								<span>Mins</span>
							</div>
						</li>
						<li>
							<div>
								<h3>60</h3>
								<span>Secs</span>
							</div>
						</li>
					</ul>
					<h2 class="text-uppercase">hot deal this week</h2>
					<p>New Collection Up to 50% OFF</p>
					<a class="primary-btn cta-btn" href="store.php">Shop now</a>
				</div>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /HOT DEAL SECTION -->

<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">

			<!-- section title -->
			<div class="col-md-12">
				<div class="section-title">
					<h3 class="title">Top selling</h3>
					<div class="section-nav">
						<?php foreach ($getOneProtype as $value) : ?>
							<li class="active"><a data-toggle="tab" href="#tab1"><?= $value['type_id'] ?></a></li>
						<?php endforeach; ?>
						<?php foreach ($getFourProtype as $value) : ?>
							<li><a data-toggle="tab" href="#tab1"><?= $value['type_id'] ?></a></li>
						<?php endforeach; ?>
					</div>
				</div>
			</div>
			<!-- /section title -->

			<!-- Products tab & slick -->
			<div class="col-md-12">
				<div class="row">
					<div class="products-tabs">
						<!-- tab -->
						<?php foreach ($getTopSellingProducts as $value) : ?>
							<div class="product">
								<div class="product-img">
									<img src="images/<?= $value['image'] ?>" alt="">
									<div class="product-label">
										<span class="new">NEW</span>
									</div>
								</div>
								<div class="product-body">
									<p class="product-category"><?= $value['manu_name'] ?></p>
									<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
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
							<!-- /product -->

						<?php endforeach; ?>
						<!-- /product -->
					</div>
					<div id="slick-nav-2" class="products-slick-nav"></div>
				</div>
				<!-- /tab -->
			</div>
		</div>
	</div>
	<!-- /Products tab & slick -->
</div>
<!-- /row -->
</div>
<!-- /container -->
</div>
<!-- /SECTION -->

<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-4 col-xs-6">
				<div class="section-title">
					<h4 class="title">Top selling</h4>
					<div class="section-nav">
						<div id="slick-nav-3" class="products-slick-nav"></div>
					</div>
				</div>

				<div class="products-widget-slick" data-nav="#slick-nav-3">
					<div>
						<!-- product widget -->
						<div class="product-widget">
							<div class="product-img">
								<img src="./img/product07.png" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">Category</p>
								<h3 class="product-name"><a href="#">product name goes here</a></h3>
								<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
							</div>
						</div>
						<!-- /product widget -->

						<!-- product widget -->
						<?php foreach ($getTopSelling_0_3 as $value) : ?>
							<div class="product-widget">
								<div class="product-img">
									<img src="images/<?= $value['image'] ?>" alt="">
								</div>
								<div class="product-body">
									<p class="product-category"><?= $value['manu_name'] ?></p>
									<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
									<h4 class="product-price"><?= number_format($value['price']) ?> VND
									</h4>
								</div>
							</div>
						<?php endforeach; ?>
						<!-- /product widget -->

						<!-- product widget -->
						<?php foreach ($getTopSelling_3_6 as $value) : ?>
							<div class="product-widget">
								<div class="product-img">
									<img src="images/<?= $value['image'] ?>" alt="">
								</div>
								<div class="product-body">
									<p class="product-category"><?= $value['manu_name'] ?></p>
									<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
									<h4 class="product-price"><?= number_format($value['price']) ?> VND
									</h4>
								</div>
							</div>
						<?php endforeach; ?>
						<!-- product widget -->
					</div>

					<div>
						<!-- product widget -->
						<?php foreach ($getTopSelling_6_9 as $value) : ?>
							<div class="product-widget">
								<div class="product-img">
									<img src="images/<?= $value['image'] ?>" alt="">
								</div>
								<div class="product-body">
									<p class="product-category"><?= $value['manu_name'] ?></p>
									<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
									<h4 class="product-price"><?= number_format($value['price']) ?> VND
									</h4>
								</div>
							</div>
						<?php endforeach; ?>
						<!-- /product widget -->

					</div>
				</div>
			</div>

			<div class="col-md-4 col-xs-6">
				<div class="section-title">
					<h4 class="title">Top selling</h4>
					<div class="section-nav">
						<div id="slick-nav-4" class="products-slick-nav"></div>
					</div>
				</div>

				<div class="products-widget-slick" data-nav="#slick-nav-4">
					<div>
						<!-- product widget -->
						<?php foreach ($getTopSelling_0_3 as $value) : ?>
							<div class="product-widget">
								<div class="product-img">
									<img src="images/<?= $value['image'] ?>" alt="">
								</div>
								<div class="product-body">
									<p class="product-category"><?= $value['name'] ?></p>
									<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
									<h4 class="product-price"><?= number_format($value['price']) ?> VND
										<!-- <del class="product-old-price">$990.00</del> -->
									</h4>
								</div>
							</div>
						<?php endforeach; ?>
						<!-- /product widget -->

						<!-- product widget -->
						<?php foreach ($getTopSelling_3_6 as $value) : ?>
							<div class="product-widget">
								<div class="product-img">
									<img src="images/<?= $value['image'] ?>" alt="">
								</div>
								<div class="product-body">
									<p class="product-category"><?= $value['name'] ?></p>
									<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
									<h4 class="product-price"><?= number_format($value['price']) ?> VND
										<!-- <del class="product-old-price">$990.00</del> -->
									</h4>
								</div>
							</div>
						<?php endforeach; ?>
						<!-- /product widget -->

						<!-- product widget -->
						<?php foreach ($getTopSelling_6_9 as $value) : ?>
							<div class="product-widget">
								<div class="product-img">
									<img src="images/<?= $value['image'] ?>" alt="">
								</div>
								<div class="product-body">
									<p class="product-category"><?= $value['name'] ?></p>
									<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
									<h4 class="product-price"><?= number_format($value['price']) ?> VND
										<!-- <del class="product-old-price">$990.00</del> -->
									</h4>
								</div>
							</div>
						<?php endforeach; ?>
						<!-- product widget -->
					</div>										
				</div>
			</div>

			<div class="clearfix visible-sm visible-xs"></div>

			<div class="col-md-4 col-xs-6">
				<div class="section-title">
					<h4 class="title">Top selling</h4>
					<div class="section-nav">
						<div id="slick-nav-5" class="products-slick-nav"></div>
					</div>
				</div>

				<div class="products-widget-slick" data-nav="#slick-nav-5">
					<div>
						<!-- product widget -->
						<?php foreach ($getTopSelling_0_3 as $value) : ?>
							<div class="product-widget">
								<div class="product-img">
									<img src="images/<?= $value['image'] ?>" alt="">
								</div>
								<div class="product-body">
									<p class="product-category"><?= $value['name'] ?></p>
									<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
									<h4 class="product-price"><?= number_format($value['price']) ?> VND
										<!-- <del class="product-old-price">$990.00</del> -->
									</h4>
								</div>
							</div>
						<?php endforeach; ?>
						<!-- /product widget -->

						<!-- product widget -->
						<?php foreach ($getTopSelling_3_6 as $value) : ?>
							<div class="product-widget">
								<div class="product-img">
									<img src="images/<?= $value['image'] ?>" alt="">
								</div>
								<div class="product-body">
									<p class="product-category"><?= $value['name'] ?></p>
									<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
									<h4 class="product-price"><?= number_format($value['price']) ?> VND
										<!-- <del class="product-old-price">$990.00</del> -->
									</h4>
								</div>
							</div>
						<?php endforeach; ?>
						<!-- /product widget -->

						<!-- product widget -->
						<?php foreach ($getTopSelling_6_9 as $value) : ?>
							<div class="product-widget">
								<div class="product-img">
									<img src="images/<?= $value['image'] ?>" alt="">
								</div>
								<div class="product-body">
									<p class="product-category"><?= $value['name'] ?></p>
									<h3 class="product-name"><a href="products.php? id=<?php echo $value['id'] ?>"><?= $value['name'] ?></a></h3>
									<h4 class="product-price"><?= number_format($value['price']) ?> VND
										<!-- <del class="product-old-price">$990.00</del> -->
									</h4>
								</div>
							</div>
						<?php endforeach; ?>
						<!-- product widget -->
					</div>				
				</div>
			</div>

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