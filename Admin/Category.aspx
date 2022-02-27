<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Food_Ordering.Admin.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>   <section class="login-page-section" style="background-image: url(../images/background/pattern-11.png); padding-top:150px">
    <div class="auto-container">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="row clearfix">
                    <div class="row clearfix">
                        <!--Form Group-->
                        <div class="form-group col-md-6 col-sm-12 col-xs-12">
                            <div class="field-label">Add Category <sup>*</sup></div>
                            <input runat="server" ID="txtCategory" type="text" name="field-name" value="" placeholder="New Category" class="form-control">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategory" ErrorMessage="Category Required" Display="Dynamic" ForeColor="Gray"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ErrorMessage="Category must be in characters" ControlToValidate="txtCategory" 
                                ForeColor="Gray" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                        </div>

                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                            <asp:LinkButton runat="server" ID="btnAddCategory" class="theme-btn btn-style-three" OnClick="btnAddCategory_Click">
                            <span class="txt">Add</span>
                        </asp:LinkButton>
                        </div>

                        <div class="form-group col-md-12 col-sm-12 col-xs-12">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                                PageSize="4" DataKeyNames="CategoryId" EmptyDataText="No record to display" Font-Bold="True"
                                class="table table-bordered table-hover" OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                                OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                                <Columns>
                                    <asp:TemplateField HeaderText="Category Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("CategoryName") %>' Font-Bold="True"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:CommandField CausesValidation="False" HeaderText="Operation" 
                                        ShowDeleteButton="True" ShowEditButton="True" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:CommandField>
                                </Columns>
                                <HeaderStyle HorizontalAlign="Center" CssClass="table table-dark" Font-Bold="True" Font-Size="Large"  />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section></center>
 

</asp:Content>
