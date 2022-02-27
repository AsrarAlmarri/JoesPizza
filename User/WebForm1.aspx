<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Food_Ordering.User.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <p class="h5 mt-1">Select Payment Method:</p>
        <hr />
        <!-- Rounded tabs -->
        <ul id="myTab" role="tablist" class="nav nav-tabs nav-pills rounded-pill flex-column flex-sm-row text-center bg-light border-0 rounded-nav">
            <li class="nav-item flex-sm-fill">
                <a id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true" class="nav-link rounded-pill border-0 text-uppercase font-weight-bold active">
                    <i class="fa fa-credit-card mr-1"></i>Card Payment
                </a>
            </li>
            <li class="nav-item flex-sm-fill">
                <a id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false" class="nav-link rounded-pill border-0 text-uppercase font-weight-bold">
                    <i class="fa fa-money mr-1"></i>Cash On Delivery
                </a>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content">
            <div id="home" role="tabpanel" aria-labelledby="home-tab" class="tab-pane fade px-4 py-5 ">
                <div class="container px-lg-5">
                    <div class="container px-lg-5">
                    <div class="form-group">
                    <label for="name">Delivery/Billing Address:</label>
                    <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server" placeholder="Your Address" TextMode="MultiLine"></asp:TextBox>
                </div>
                        
                <div class="form-group text-center">
                    <asp:Button ID="btnCODSubmit" CssClass="form-control bg-warning rounded-pill shadow-sm" runat="server" Text="Submit" CausesValidation="false" OnClick="btnCODSubmit_Click" />
                </div>
                </div>
                    </div>
            </div>
            <div id="profile" role="tabpanel" aria-labelledby="profile-tab" class="tab-pane fade px-4 py-5 show active">
                <div class="container px-lg-5">
                    <div class="container px-lg-5">
                        <form role="form">
                            <div class="form-group">
                                <label for="username">Full name (on the card)</label>
                                <asp:TextBox ID="txtUsername" runat="server" name="username" CssClass="form-control" 
                                    placeholder="Jason Doe" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="cardNumber">Card number</label>
                                <div class="input-group">
                                    <asp:TextBox ID="txtCardNumber" runat="server" name="cardNumber" placeholder="Your card number" 
                                        CssClass="form-control" ></asp:TextBox>
                                    <div class="input-group-append">
                                        <span class="input-group-text text-muted">
                                            <i class="fa fa-cc-visa mx-1"></i>
                                            <i class="fa fa-cc-amex mx-1"></i>
                                            <i class="fa fa-cc-mastercard mx-1"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-8">
                                    <div class="form-group">
                                        <label><span class="hidden-xs">Expiration</span></label>
                                        <div class="input-group">
                                            <asp:TextBox ID="txtMonth" runat="server" placeholder="MM" name="" CssClass="form-control" ></asp:TextBox>
                                            <asp:TextBox ID="txtYear" runat="server" placeholder="YY" name="" CssClass="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group mb-4">
                                        <label data-toggle="tooltip" title="Three-digits code on the back of your card">
                                            CVV
                                                <i class="fa fa-question-circle"></i>
                                        </label>
                                        <asp:TextBox ID="txtCvv" runat="server" CssClass="form-control" ></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="userAddress">Delivery/Billing Address</label>
                                <asp:TextBox ID="txtUserAddress" runat="server" name="userAddress" CssClass="form-control" 
                                    placeholder="Your Address" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnCardPayment" runat="server" CssClass="subscribe btn btn-warning btn-block rounded-pill shadow-sm" 
                                Text="Confirm" CausesValidation="false" OnClick="btnCardPayment_Click" OnClientClick ="javascript:validate()" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- End rounded tabs -->


</asp:Content>


