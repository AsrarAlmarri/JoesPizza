<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Food_Ordering.User.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Title -->
    <section class="page-title" style="background-image: url(../images/background/10.jpg)">
    	<div class="auto-container">
			<h1>About Us</h1>
			<ul class="page-breadcrumb">
				<li><a href="../Home.aspx">home</a></li>
				<li>About us</li>
			</ul>
        </div>
    </section>
    <!-- End Page Title -->
	
	<!-- Welcome Section -->
	<section class="welcome-section">
		<div class="auto-container">
			<div class="row clearfix">
				<!-- Image Column -->
				<div class="image-column col-lg-6 col-md-12 col-sm-12">
					<div class="inner-column">
						<div class="image">
							<img src="../images/resource/welcome.jpg" alt="" />
						</div>
						<div class="image-two">
							<img src="../images/resource/welcome-3.jpg" alt="" />
						</div>
					</div>
				</div>
				<!-- Content Column -->
				<div class="content-column col-lg-6 col-md-12 col-sm-12">
					<div class="inner-column">
						<div class="sec-title">
							<div class="title">Introduction</div>
							<h2>Welcome To Our Pizza Party</h2>
							<div class="text">Mauris semper scelerisque lacus nec congue. Nulla tincidunt dui ut massa tempus lobortis. Vivamus dignissim tempus odio, et suscipit nulla tincidunt elementum phasellus maximus felis sed iaculis </div>
						</div>
						<ul class="list-style-one">
							<li>Pellentesque habitant morbi tristique senectus et netus et malesuada</li>
							<li>Fames ac turpis egestas aliquam diam erat malesuada ut tortor sit amet</li>
							<li>Suspendisse malesuada ullamcorper just sed ultricies tortor</li>
							<li>Nunc congue neque vel odio placerat a lacinia lacus elementum </li>
						</ul>
						<div class="author-box">
							<div class="box-inner">
								<div class="author-image">
									<img src="../images/resource/author-1.jpg" alt="" />
								</div>
								<div class="signature"><img src="../images/icons/signature.png" alt="" /></div>
								<h5>Peter Chops</h5>
								<div class="designation">Master Chef</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Welcome Section -->
	
	<!-- Offer Section -->
	<section class="offer-section">
		<div class="auto-container">
			<div class="row clearfix">
			
				<!-- Blocks Column -->
				<div class="blocks-column col-lg-6 col-md-12 col-sm-12">
					<div class="inner-column">
						<!-- Sec Title -->
						<div class="sec-title">
							<div class="title">What We Offer</div>
							<h2>Best Traditions Over the world</h2>
						</div>
						<div class="row clearfix">
							
							<!-- Offer Block -->
							<div class="offer-block col-lg-6 col-md-6 col-sm-12">
								<div class="inner-box">
									<div class="icon flaticon-alarm-clock"></div>
									<h4><a href="services-detail.html">Catering</a></h4>
									<div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit Nulla nec ultricies ligula.</div>
								</div>
							</div>
							
							<!-- Offer Block -->
							<div class="offer-block col-lg-6 col-md-6 col-sm-12">
								<div class="inner-box">
									<div class="icon flaticon-dining-table"></div>
									<h4><a href="services-detail.html">Dining</a></h4>
									<div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit Nulla nec ultricies ligula.</div>
								</div>
							</div>
							
							<!-- Offer Block -->
							<div class="offer-block col-lg-6 col-md-6 col-sm-12">
								<div class="inner-box">
									<div class="icon flaticon-gift-box"></div>
									<h4><a href="services-detail.html">Gift Cards</a></h4>
									<div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit Nulla nec ultricies ligula.</div>
								</div>
							</div>
							
							<!-- Offer Block -->
							<div class="offer-block col-lg-6 col-md-6 col-sm-12">
								<div class="inner-box">
									<div class="icon flaticon-purchase-order"></div>
									<h4><a href="services-detail.html">Order Online</a></h4>
									<div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit Nulla nec ultricies ligula.</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				
				<!-- Images Column -->
				<div class="images-column col-lg-6 col-md-12 col-sm-12">
					<div class="inner-column">
						<div class="image">
							<img src="images/resource/offer-1.jpg" alt="" />
						</div>
						<div class="image-two">
							<img src="images/resource/offer-2.jpg" alt="" />
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- End Offer Section -->
	
	<!-- Video Section -->
	<section class="video-section" style="background-image:url(../images/background/11.jpg)">
		<div class="auto-container">
			<!-- Sec Title -->
			<div class="sec-title light centered">
				<div class="title">Our Promo Video</div>
				<h2>Make the thing Anything is Possible</h2>
				<div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec ultricies ligula. Maecenas erat libero, accumsan sed consectetur sed, tincidunt ultricies nunc. Curabitur felis dui, posuere vel facilisis in, laoreet at nisl. Phasellus velit orci, ultrices quis lorem fermentum.</div>
			</div>
			<a href="https://www.youtube.com/watch?v=kxPCFljwJws" class="lightbox-image video-box"><span class="flaticon-play-arrow"><i class="ripple"></i></span></a>
		</div>
	</section>
	<!-- End Video Section -->
	
	<!-- Specialist Section -->
	<section class="specialist-section">
		<div class="auto-container">
			<!-- Sec Title -->
			<div class="sec-title centered">
				<div class="title">Specialities</div>
				<h2>Our Hand Picked Items</h2>
			</div>
			<div class="row clearfix">
			
				<!-- Specialist Block -->
				<div class="specialist-block col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<a href="shop-single.html"><img src="../images/resource/item-1.jpg" alt="" /></a>
						</div>
						<div class="lower-content">
							<h6><a href="shop-single.html">Pellentesque habitant morbi tristi senectus et netus</a></h6>
							<div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec ultricies ligula. Maecenas erat libero, accumsan sed consectetur sed...</div>
							<a href="shop-single.html" class="theme-btn read-more">Read More</a>
						</div>
					</div>
				</div>
				
				<!-- Specialist Block -->
				<div class="specialist-block col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<a href="shop-single.html"><img src="../images/resource/item-2.jpg" alt="" /></a>
						</div>
						<div class="lower-content">
							<h6><a href="shop-single.html">Nunc sed elit nec erat luctus sagittis eget eu purus</a></h6>
							<div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec ultricies ligula. Maecenas erat libero, accumsan sed consectetur sed...</div>
							<a href="shop-single.html" class="theme-btn read-more">Read More</a>
						</div>
					</div>
				</div>
				
				<!-- Specialist Block -->
				<div class="specialist-block col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<a href="shop-single.html"><img src="../images/resource/item-3.jpg" alt="" /></a>
						</div>
						<div class="lower-content">
							<h6><a href="shop-single.html"> Curabitur id tincidunt erat vel imperdiet nulla</a></h6>
							<div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec ultricies ligula. Maecenas erat libero, accumsan sed consectetur sed...</div>
							<a href="shop-single.html" class="theme-btn read-more">Read More</a>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- End Specialist Section -->
	
	<!-- Team Section -->
	<section class="team-section">
		<div class="auto-container">
			<!-- Sec Title -->
			<div class="sec-title centered">
				<div class="title">Meet Our Team</div>
				<h2>Our Experts Chefs</h2>
			</div>
			<div class="row clearfix">
				
				<!-- Team Block -->
				<div class="team-block col-lg-3 col-md-6 col-sm-12">
					<div class="inner-box">
						<div class="image">
							<img src="../images/resource/team-1.jpg" alt="" />
							<div class="overlay-box">
								<div class="content">
									<div class="designation">Manager</div>
									<h4>Den Mark</h4>
								</div>
							</div>
							<div class="overlay-box-two">
								<div class="overlay-inner">
									<div class="content">
										<div class="overlay-designation">Manager</div>
										<h4><a href="team-detail.html">Den Mark</a></h4>
										<div class="text">Everything We Pizza, We Pizza <br> With Love. Designer Fastfood.</div>
										<div class="social-links">
											<a href="#" class="facebook"><span class="fa fa-facebook-f"></span></a>
											<a href="#" class="twitter"><span class="fa fa-twitter"></span></a>
											<a href="#" class="instagram"><span class="fa fa-instagram"></span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Team Block -->
				<div class="team-block col-lg-3 col-md-6 col-sm-12">
					<div class="inner-box">
						<div class="image">
							<img src="../images/resource/team-2.jpg" alt="" />
							<div class="overlay-box">
								<div class="content">
									<div class="designation">Chef</div>
									<h4>Rachel Ray</h4>
								</div>
							</div>
							<div class="overlay-box-two">
								<div class="overlay-inner">
									<div class="content">
										<div class="overlay-designation">Chef</div>
										<h4><a href="team-detail.html">Rachel Ray</a></h4>
										<div class="text">Everything We Pizza, We Pizza <br> With Love. Designer Fastfood.</div>
										<div class="social-links">
											<a href="#" class="facebook"><span class="fa fa-facebook-f"></span></a>
											<a href="#" class="twitter"><span class="fa fa-twitter"></span></a>
											<a href="#" class="instagram"><span class="fa fa-instagram"></span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Team Block -->
				<div class="team-block col-lg-3 col-md-6 col-sm-12">
					<div class="inner-box">
						<div class="image">
							<img src="../images/resource/team-3.jpg" alt="" />
							<div class="overlay-box">
								<div class="content">
									<div class="designation">Chef</div>
									<h4>Donald Olson</h4>
								</div>
							</div>
							<div class="overlay-box-two">
								<div class="overlay-inner">
									<div class="content">
										<div class="overlay-designation">Chef</div>
										<h4><a href="team-detail.html">Donald Olson</a></h4>
										<div class="text">Everything We Pizza, We Pizza <br> With Love. Designer Fastfood.</div>
										<div class="social-links">
											<a href="#" class="facebook"><span class="fa fa-facebook-f"></span></a>
											<a href="#" class="twitter"><span class="fa fa-twitter"></span></a>
											<a href="#" class="instagram"><span class="fa fa-instagram"></span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Team Block -->
				<div class="team-block col-lg-3 col-md-6 col-sm-12">
					<div class="inner-box">
						<div class="image">
							<img src="../images/resource/team-4.jpg" alt="" />
							<div class="overlay-box">
								<div class="content">
									<div class="designation">chef</div>
									<h4>Amanda Brown</h4>
								</div>
							</div>
							<div class="overlay-box-two">
								<div class="overlay-inner">
									<div class="content">
										<div class="overlay-designation">chef</div>
										<h4><a href="team-detail.html">Amanda Brown</a></h4>
										<div class="text">Everything We Pizza, We Pizza <br> With Love. Designer Fastfood.</div>
										<div class="social-links">
											<a href="#" class="facebook"><span class="fa fa-facebook-f"></span></a>
											<a href="#" class="twitter"><span class="fa fa-twitter"></span></a>
											<a href="#" class="instagram"><span class="fa fa-instagram"></span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- End Team Section -->

</asp:Content>
