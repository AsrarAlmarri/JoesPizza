<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Food_Ordering.User.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="login-page-section" style="background-image: url(../images/background/pattern-11.png); padding-top:150px">
    <div class="auto-container">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="row clearfix">

                    <%--Content inside the Panel will going to reflect in PDF--%>
                <asp:Panel ID="Panel1" runat="server">

                    <table border="1" class="table table-bordered table-hover table-responsive" >
                        <%--Header Text--%>
                        <tr>
                            <td style="text-align: center">
                   
                                <h2 style="text-align: center">Order Invoice</h2>
                            </td>
                        </tr>

                        <tr>
                            <%--Order No. & Order Date--%>
                            <td>
                                Order Date:
                        <asp:Label ID="orderDate" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td>

                                <table style="width:100%">
                                    <tr>
                                        <%--User Address--%>
                                        <td style="width: 50%; border:1px">Buyer Address:
                                            <br />
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        </td>

                                        <%--Seller Address--%>
                                        <td style="width: 50%; border:1px">Seller Address:
                                            <br />
                                            <br />
                                            Seller Addresses....
                                        </td>
                                    </tr>
                                </table>

                            </td>
                        </tr>

                        <%--GridVeiw for displaying Purchased Product--%>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                    Width="1000px">
                                    <Columns>
                                        <asp:BoundField DataField="sno" HeaderText="SNo">
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="orderid" HeaderText="Order Id">
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="productname" HeaderText="Product Name">
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="price" HeaderText="Price">
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                    </Columns>
                                    <HeaderStyle BackColor="#FFBF00" HorizontalAlign="Center" />
                                </asp:GridView>
                            </td>
                        </tr>

                        <%--Display Total payment--%>
                        <tr>
                            <td>Grand Total:
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>

                        <%--PDF Note--%>
                        <tr>
                            <td align="center">This is a computer generated invoice and does not required signature.</td>
                        </tr>
                    </table>

                </asp:Panel>

                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:LinkButton runat="server" ID="btnDownloadInvoice" class="theme-btn btn-style-three" OnClick="btnDownloadInvoice_Click">
                            <span class="txt">Download Invoice</span>
                        </asp:LinkButton>
                    </div>

                </div>
            </div>
        </div>
    </div>
   </section>

</asp:Content>
