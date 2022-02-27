<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="Food_Ordering.Admin.UpdateProduct" %>
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
                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover" AllowPaging="True"
                                    PageSize="4" AutoGenerateColumns="False" EmptyDataText="No Product to display" OnPageIndexChanging="GridView1_PageIndexChanging" 
                                    OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" 
                                    AllowSorting="True">
                                    <Columns>
                                        <asp:TemplateField HeaderText="ID">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Pname") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pname") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Description">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Pdesc") %>' TextMode="MultiLine"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pdesc") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Image">
                                            <EditItemTemplate>
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Pimage") %>' Height="90px" Width="120px" />
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Price">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("Pprice") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Quantity">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("Pquantity") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Pquantity") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Category">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                                    DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
                                                    DataValueField="CategoryName" SelectedValue='<%# Eval("Pcategory") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:FoodDBConnectionString %>" 
                                                    SelectCommand="SELECT [CategoryName] FROM [Category]"></asp:SqlDataSource>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Pcategory") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:CommandField HeaderText="Operation" ShowEditButton="True" >
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:CommandField>
                                    </Columns>
                                    <EmptyDataRowStyle Font-Bold="True" ForeColor="#CC0000" />
                                    <FooterStyle HorizontalAlign="Center" CssClass="table table-dark" Font-Bold="True"/>
                                    <HeaderStyle HorizontalAlign="Center" CssClass="table table-dark" Font-Bold="True"/>
                                </asp:GridView>
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
