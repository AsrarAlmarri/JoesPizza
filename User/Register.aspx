<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Food_Ordering.User.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Register Page Section -->
	<section class="login-page-section" style="background-image: url(../images/background/pattern-11.png); padding-top: 150px">
		<div class="auto-container">
			<div class="inner-container">
				<!-- Sec Title -->
				<div class="sec-title centered">
					<div class="title">Register</div>
					<h2>Register Now</h2>
					<div class="text"></div>
				</div>
				
				<!-- Register Form -->
				<div class="styled-form">
					<%--<form method="post" action="https://codexlayer.com/comida_punto/index.html">--%>
						<div class="row clearfix">
						
							<div class="form-group col-lg-6 col-md-6 col-sm-12">
								<input id="firstName" type="text" runat="server" name="firstname" value="" placeholder="First Name" required>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstName" ErrorMessage="First Name required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
							</div>
							
							<div class="form-group col-lg-6 col-md-6 col-sm-12">
								<input id="lastName" type="text" runat="server" name="lastname" value="" placeholder="Last Name" required>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastName" ErrorMessage="Last Name required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
							</div>
							
							<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<input id="emailId" type="text" runat="server" name="email" value="" placeholder="Email Address" required>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailId" ErrorMessage="Email required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailId" ErrorMessage="Enter Valid Email" ValidationExpression="[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"></asp:RegularExpressionValidator>
							</div>
							
							<div class="form-group col-lg-6 col-md-6 col-sm-12">
								<input id="password" type="password" runat="server" name="password" value="" placeholder="Password" required>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="Password required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
							</div>
							
							<div class="form-group col-lg-6 col-md-6 col-sm-12">
								<input id="confirmPassword" type="password" runat="server" name="password" value="" placeholder="Re-Type Password" required>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="confirmPassword" ErrorMessage="Confirm Password required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password didn't match!" ControlToCompare="password" ControlToValidate="confirmPassword" Display="Dynamic" ForeColor="Gray"></asp:CompareValidator>
							</div>

							<%--<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<div class="check-box">
									<input type="checkbox" name="remember-password" id="type-1"> 
									<label for="type-1">Keep me sign in</label>
								</div>
							</div>--%>
							
							<div class="form-group text-center col-lg-12 col-md-12 col-sm-12">
								<%--<button type="button" class="theme-btn btn-style-three"><span class="txt">Register</span></button>--%>
                                <asp:LinkButton ID="btnRegister" class="theme-btn btn-style-three" runat="server" OnClick="btnRegister_Click"><span class="txt">Register</span></asp:LinkButton>
							</div>
							
							<%--<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<div class="or">or</div>
							</div>
							
							<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<div class="btns-box">
									<a class="social-btn facebook-btn" href="#"><span class="social-icon fa fa-facebook-f"></span>Sign In with Facebook</a>
									<a class="social-btn google-btn" href="#"><span class="social-icon fa fa-twitter"></span>Sign In with Google</a>
								</div>
							</div>--%>
							
							<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<div class="users">Already a Member? <a href="../User/Login.aspx">Login Now</a></div>
							</div>
						
						</div>
					<%--</form>--%>
				</div>
				
			</div>
		</div>
	</section>
	<!-- End Register Page Section -->

</asp:Content>
