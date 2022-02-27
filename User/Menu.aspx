<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Food_Ordering.User.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Menu Section Six -->
    <section class="menu-section-six" style="padding-top: 150px">
        <div class="auto-container">
            <!-- Sec Title -->
            <div class="sec-title centered">
                <div class="title">Our Menu</div>
   
            </div>


            <div class="row">
                <div class="col-lg-10">
                <asp:DataList ID="dlCategory" runat="server" RepeatDirection="Horizontal" CssClass="table table-responsive" 
                    OnItemCommand="dlCategory_ItemCommand">
                    <ItemTemplate>                       
                        <div class="outer-box clearfix">
                            <div class="btn-box m-1">
                                <asp:Button ID="btnCategory" CssClass="theme-btn btn-style-four" runat="server" Text='<%# Eval("CategoryName") %>'
                                    CommandArgument='<%# Eval("CategoryName") %>' CommandName="CategoryType" CausesValidation="false"/>
                            </div>
                        </div>                      
                    </ItemTemplate>
                </asp:DataList>
                </div>
                <div class="col-lg-2">
                    <asp:LinkButton runat="server" CssClass="theme-btn btn-style-four" ID="btnReset" OnClick="btnReset_Click"><i class="fa fa-spinner fa-spin"></i>&nbsp;Reset</asp:LinkButton>
                </div>
            </div>


            <!-- Menu Block Eight -->
            <asp:DataList ID="dlProduct" runat="server" RepeatDirection="Horizontal" RepeatColumns="2" OnItemCommand="dlProduct_ItemCommand">
                <ItemTemplate>
                    <div class="row clearfix">
                        <div class="menu-block-eight col-lg-12 col-md-12 col-sm-12 ml-3 mr-3">
                            <div class="inner-box">
                                <div class="content">
                                    <div class="menu-image">
                                        <a href="#">
                                            <img src="<%# Eval("Pimage") %>" alt="" />
                                        </a>
                                    </div>
                                    <div class="price">KD<%# Eval("Pprice") %></div>
                                    <h4><a href="#">
                                        <%# Eval("Pname") %> </a>
                                    </h4>
                                    <div class="text"><%# Eval("Pdesc") %></div>
                                    <asp:DropDownList ID="ddlQuantity" runat="server" CssClass="form-control-sm">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;
                                    <asp:Button ID="Button1" class="cart-btn theme-btn" runat="server" Text="Add To Cart"
                                        CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart" CausesValidation="false" />
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>



        </div>
    </section>
    <!-- End Menu Section Six -->

</asp:Content>
