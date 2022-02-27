<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Food_Ordering.Admin.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Adding Product Section -->
	<section class="login-page-section" style="background-image: url(../images/background/pattern-11.png); padding-top: 150px; padding-bottom:25px;">
		<div class="auto-container">
			<div class="inner-container" >
				<!-- Sec Title -->
				<div class="sec-title centered">
					<div class="title">Product</div>
					<h2>Add Product</h2>
				
				</div>
				
				<!-- Product Form -->
				<div class="styled-form">
						<div class="row clearfix">
						
							<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" CssClass="form-control"
									DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryId" >
									<asp:ListItem>Select Category</asp:ListItem>
								</asp:DropDownList>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
									ControlToValidate="DropDownList1" Display="Dynamic" ForeColor="Gray"
									ErrorMessage="Category is Mandatory"  InitialValue="Select Category"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Category required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
							</div>
							
							<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<input id="txtName" type="text" runat="server" name="txtName" value="" placeholder="Product Name" required>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Product Name required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
							</div>
							
							<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<%--<input id="emailId" type="text" runat="server" name="email" value="" placeholder="Email Address" required>--%>
                                <asp:TextBox ID="txtDescription" TextMode="MultiLine" BorderColor="Gray" runat="server" placeholder="Product Description" required></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDescription" ErrorMessage="Description required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
                                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailId" ErrorMessage="Enter Valid Email" ValidationExpression="[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"></asp:RegularExpressionValidator>--%>
							</div>
							
							<div class="form-group col-lg-12 col-md-12 col-sm-12">
								<asp:FileUpload ID="imageUpload" runat="server" name="imageUpload" CssClass="form-control" required/>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="imageUpload" ErrorMessage="Image required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
							</div>
							
							<div class="form-group col-lg-6 col-md-6 col-sm-12">
								<input id="txtPrice" type="number" runat="server" name="txtPrice" value="" placeholder="Product Price(KD)" required>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
							</div>

							<div class="form-group col-lg-6 col-md-6 col-sm-12">
								<input id="txtQuantity" type="number" runat="server" name="txtQuantity" value="" placeholder="Product Quantity" required>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
							</div>
							
							<div class="form-group text-center col-lg-12 col-md-12 col-sm-12">
                                <asp:LinkButton ID="btnAddProduct" class="theme-btn btn-style-three" runat="server" OnClick="btnAddProduct_Click" ><span class="txt">Add</span></asp:LinkButton>
							</div>
						
						</div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- End Adding Product Section -->

	<%--DataSource to Populate DropDownlist of Product--%>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FoodDBConnectionString %>" 
            SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
    </div>

</asp:Content>
