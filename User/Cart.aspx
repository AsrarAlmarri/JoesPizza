<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Food_Ordering.User.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="login-page-section" style="background-image: url(../images/background/pattern-11.png); background-repeat: no-repeat; 
        background-attachment: fixed;  padding-top: 150px">
        <div class="auto-container">
            <div class="row clearfix">
                <div class="table-column col-lg-12 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <div class="cart-outer">
							<div class="table-outer">
                <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False" ShowFooter="True" CssClass="table table-bordered table-hover "
                    EmptyDataText="No Product Available in Shopping Cart" Font-Bold="True" OnRowDeleting="gvCart_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="Sr No">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pid" HeaderText="Id">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="pimage" HeaderText="Image">
                            <ControlStyle Height="100px" Width="140px" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:ImageField>
                        <asp:BoundField DataField="pname" HeaderText="Name">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pdesc" HeaderText="Description">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pprice" HeaderText="Price">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pquantity" HeaderText="Quantity">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ptotalprice" HeaderText="Total Price">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CommandField DeleteText="" ShowDeleteButton="True" ControlStyle-CssClass="fa fa-trash-o" >
                            <ControlStyle CssClass="fa fa-trash-o"></ControlStyle>
                        </asp:CommandField>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" CssClass="table table-dark" Font-Bold="True"/>
                    <FooterStyle HorizontalAlign="Center" CssClass="table table-dark" Font-Bold="True"/>
                </asp:GridView>
                </div>
                </div>

                <div class="pull-right">
				    <%--<button type="button" class="theme-btn btn-style-three"><span class="txt">Place Order</span></button>--%>
                    <asp:LinkButton ID="btnOrder" class="theme-btn btn-style-three" runat="server" OnClick="btnOrder_Click"><span class="txt">Place Order</span></asp:LinkButton>
				</div>

                </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
