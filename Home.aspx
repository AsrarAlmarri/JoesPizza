<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Food_Ordering.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Banner Section Two -->
    <section class="banner-section-two">
		<div class="main-slider-carousel owl-carousel owl-theme">
            
            <div class="slide" style="background-image: url(images/main-slider/image-2.jpg)">
				<div class="auto-container">
					<!-- Content Column -->
					<div class="content-column">
						<div class="inner-column">
							<div class="title">Menu Of The Day</div>
							<h1>Its <span>Pizza</span> Time</h1>
							<div class="text">Get Fresh and Delicious Pizza Delivered To Your Door Step Within 30 Min </div>
							<div class="price">3KD<span>Only</span></div>
							<div class="btns-box clearfix">
								<div class="delivery-box">
									<div class="box-inner">
										<span class="icon"><img src="images/icons/delivery.png" alt="" /></span>
										Free Delivery<br>
										<a class="phone" href="tel:+00 965 12345678">+00 965 12345678</a>
									</div>
								</div>
								<a href="../User/Menu.aspx" class="theme-btn btn-style-four"><span class="txt">Order Now</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="slide" style="background-image: url(images/main-slider/image-1.jpg)">
				<div class="auto-container">
					<!-- Content Column -->
					<div class="content-column">
						<div class="inner-column">
							<div class="title">Menu Of The Day</div>
							<h1>Its <span>Pizza</span> Time</h1>
							<div class="text">Get Fresh and Delicious Pizza Delivered To Your Door Step Within 30 Min </div>
							<div class="price">3 KD <span>Only</span></div>
							<div class="btns-box clearfix">
								<div class="delivery-box">
									<div class="box-inner">
										<span class="icon"><img src="images/icons/delivery.png" alt="" /></span>
										Free Delivery<br>
										<a class="phone" href="tel:+00 012 345 67">+00 965 12345678</a>
									</div>
								</div>
								<a href="../User/Menu.aspx" class="theme-btn btn-style-four"><span class="txt order-now">Order Now</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="slide" style="background-image: url(images/main-slider/image-3.jpg)">
				<div class="auto-container">
					<!-- Content Column -->
					<div class="content-column">
						<div class="inner-column">
							<div class="title">Menu Of The Day</div>
							<h1>Its <span>Pizza</span> Time</h1>
							<div class="text">Get Fresh and Delicious Pizza Delivered To Your Door Step Within 30 Min</div>
							<div class="price">3KD <span>Only</span></div>
							<div class="btns-box clearfix">
								<div class="delivery-box">
									<div class="box-inner">
										<span class="icon"><img src="images/icons/delivery.png" alt="" /></span>
										Free Delivery<br>
										<a class="phone" href="tel:+00 965 12345678">+00 965 12345678</a>
									</div>
								</div>
								<a href="../User/Menu.aspx" class="theme-btn btn-style-four"><span class="txt">Order Now</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</section>
	<!-- End Banner Section Two -->
	<!-- Menu Section Section -->
	<section class="menu-section-two">
		<div class="auto-container">
			<div class="row clearfix">
				
				<!-- Menu Block Four -->
				<div class="menu-block-four col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box">
						<div class="image">
							<img src="images/resource/menu-11.jpg" alt="" />
							<div class="overlay-box">
								<div class="overlay-inner">
									<div class="content">
										<h3><a href="./User/Menu.aspx">Special FOR YOU</a></h3>
										<div class="price">Only 3 KD</div>
										<a href="./User/Menu.aspx" class="theme-btn order-btn">Order Now</a>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Menu Block Four -->
				<div class="menu-block-four col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box">
						<div class="image">
							<img src="images/resource/menu-12.jpg" alt="" />
							<div class="overlay-box">
								<div class="overlay-inner">
									<div class="content">
										<h3><a href="http://localhost:59617/User/Menu.aspx">Special FOR YOU</a></h3>
										<div class="price">Only 3 KD</div>
										<a href="./User/Menu.aspx" class="theme-btn order-btn">Order Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Menu Block Four -->
				<div class="menu-block-four col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box">
						<div class="image">
							<img src="images/resource/menu-13.jpg" alt="" />
							<div class="overlay-box">
								<div class="overlay-inner">
									<div class="content">
										<h3><a href="http://localhost:59617/User/Menu.aspx">Special FOR YOU</a></h3>
										<div class="price">Only 4 KD</div>
										<a href="http://localhost:59617/User/Menu.aspx" class="theme-btn order-btn">Order Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- End Menu Section Section -->

</asp:Content>
