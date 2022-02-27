<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Food_Ordering.User.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Login Page Section -->
	<section class="login-page-section" style="background-image: url(../images/background/pattern-11.png); padding-top:150px">
		<div class="auto-container">
			<div class="inner-container">
				<!-- Sec Title -->
				<div class="sec-title centered">
					<div class="title">Login</div>
					<h2>Login Now</h2>
					<div class="text">Enter Correct Email id and Password To Get Into Your Account.If You haven't Regsitered With Us Yet Please Do Hit Register Button Below Form</div>
				</div>
				
				<!-- Login Form -->
				<div class="styled-form">
					
						
						<div class="form-group">
							<input type="text" id="email" name="email" runat="server" value="" placeholder="Email Address" required>
						</div>
						
						<div class="form-group">
							<input type="password" id="password" name="password" runat="server" value="" placeholder="Password" required>
						</div>

						<%--<div class="form-group">
							<div class="clearfix">
								<div class="pull-left">
									<div class="check-box">
										<input type="checkbox" name="remember-password" id="type-1"> 
										<label for="type-1">Remember password</label>
									</div>
								</div>
								<div class="pull-right">
									<a href="#" class="forgot">Lost my password?</a> 
								</div>
							</div>
						</div>--%>
						
						<div class="form-group text-center">
							<asp:LinkButton ID="btnLogin" class="theme-btn btn-style-three" runat="server" OnClick="btnLogin_Click">
								<span class="txt">Log In</span>
							</asp:LinkButton>
						</div>
						
						<%--<div class="form-group">
							<div class="or">or</div>
						</div>
						
						<div class="form-group">
							<div class="btns-box">
								<a class="social-btn facebook-btn" href="#"><span class="social-icon fa fa-facebook-f"></span>Sign In with Facebook</a>
								<a class="social-btn google-btn" href="#"><span class="social-icon fa fa-twitter"></span>Sign In with Google</a>
							</div>
						</div>--%>
						
						<div class="form-group">
							<div class="users">Not a Member? <a href="../User/Register.aspx">Register Now</a></div>
						</div>
						
					<%--</form>--%>
				</div>
				
			</div>
		</div>
	</section>
	<!-- End Login Page Section -->

</asp:Content>
