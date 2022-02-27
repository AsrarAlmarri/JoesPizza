<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Food_Ordering.User.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Checkout Page -->
    <div class="checkout-page">
        <div class="auto-container">
                
            <!--Billing Details-->
            <div class="billing-details" style="padding-top:50px">
                <div class="shop-form">
                    <%--<form method="post" action="https://codexlayer.com/comida_punto/checkout.html">--%>
                        <div class="row clearfix">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                
                                <div class="sec-title"><h2>Billing Details</h2></div>
                        		<div class="billing-inner">
                                    <div class="row clearfix">
                                        
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">First name <sup>*</sup></div>
                                            <input runat="server" ID="txtFirstName" type="text" name="field-name" value="" placeholder="First Name">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name Required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                ErrorMessage="First Name must be in characters" ControlToValidate="txtFirstName" 
                                                ForeColor="Gray" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                                        </div>
                                        
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">Last name <sup>*</sup></div>
                                            <input runat="server" ID="txtLastName" type="text" name="field-name" value="" placeholder="Last Name">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name Required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                ErrorMessage="Last Name must be in characters" ControlToValidate="txtLastName" 
                                                ForeColor="Gray" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                                        </div>
                                        
                                        <!--Form Group-->
                                        <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                            <div class="field-label">Card Number <sup>*</sup></div>
                                            <input runat="server" ID="txtCardNo" type="text" name="field-name" value="" placeholder="Card Number">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCardNo" ErrorMessage="Card Number Required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                ErrorMessage="Card Number must be of 16 digits" ControlToValidate="txtCardNo" 
                                                ForeColor="Gray" ValidationExpression="[0-9]{16}"></asp:RegularExpressionValidator>
                                        </div>
                                        
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">Expiry Date <sup>*</sup> </div>
                                            <input runat="server" ID="txtExpiry" type="text" name="code" value="" placeholder="Ex. 02/2022">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtExpiry" ErrorMessage="Expiry Date Required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
                                        </div>
                                        
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <div class="field-label">CVV <sup>*</sup></div>
                                            <input runat="server" ID="txtCVV" type="text" name="code" value="" placeholder="3 Digits Pin Code">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCVV" ErrorMessage="CVV Required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                                ErrorMessage="CVV Number must be of 3 digits" ControlToValidate="txtCVV" 
                                                ForeColor="Gray" ValidationExpression="[0-9]{3}"></asp:RegularExpressionValidator>
                                        </div>
                                        
                                        <!--Form Group-->
                                        <div class="form-group col-md-12 col-sm-12 col-xs-12">

                                            <input runat="server" ID="txtAddress" type="email" name="field-name" value="" placeholder="Billing Address">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
                                        </div>
                                        
                                        <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <%--<button type="button" class="theme-btn btn-style-three"><span class="txt">Submit</span></button>--%>
                                            <asp:LinkButton runat="server" ID="btnSubmit" class="theme-btn btn-style-three" OnClick="btnSubmit_Click">
                                                <span class="txt">Submit</span>
                                            </asp:LinkButton>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            
                        </div>                             
                    <%--</form>--%>
                    
                </div>
                
            </div><!--End Billing Details-->
    	</div>
    </div>

</asp:Content>
