<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Food_Ordering.User.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Title -->
    <section class="page-title" style="background-image: url(../images/background/10.jpg)">
    	<div class="auto-container">
			<h1>Contact Us</h1>
			<ul class="page-breadcrumb">
				<li><a href="../Home.aspx">home</a></li>
				<li>Contact Us</li>
			</ul>
        </div>
    </section>
    <!-- End Page Title --><br /><br /><br /><br />
	<center><h3>Feel Free To Reach Us!!</h3></center>
	<!-- Contact Page Info Section -->
	<section class="contact-page-info-section">
		<div class="auto-container">
			<!-- Contact Info Boxed -->
			<div class="contact-info-boxed">
				<div class="row clearfix">
					
					<!-- Info Box -->
					<div class="info-box col-lg-4 col-md-6 col-sm-12">
						<div class="inner-box">
							<div class="content">
								<span class="icon flaticon-phone-call"></span>
								<h4>Book a table</h4>
								<ul>
									<li>Phone : <a href="tel:+101-987-567-234">+00 123 45 67</a></li>
									<li>Fax : <a href="tel:+101-678-123-987">+00 123 45 67</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<!-- Info Box -->
					<div class="info-box col-lg-4 col-md-6 col-sm-12">
						<div class="inner-box">
							<div class="content">
								<span class="icon flaticon-email"></span>
								<h4>E-mail Us</h4>
								<ul>
									<li>Support : <a href="mailto:support@pdemo.com">support@pdemo.com</a></li>
									<li>Sales : <a href="mailto:support@pdemo.com">support@pdemo.com</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<!-- Info Box -->
					<div class="info-box col-lg-4 col-md-6 col-sm-12">
						<div class="inner-box">
							<div class="content">
								<span class="icon flaticon-placeholder"></span>
								<h4>Our Location</h4>
								<ul>
									<li>Demo address here Demo details add address</li>
								</ul>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			
		</div>
	</section>
	<!-- End Contact Page Info Section -->

</asp:Content>
