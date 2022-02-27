<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UpdateStatus.aspx.cs" Inherits="Food_Ordering.Admin.UpdateStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="login-page-section" style="background-image: url(../images/background/pattern-11.png); padding-top:150px">
    <div class="auto-container">
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="row clearfix">
                    <div class="row clearfix">
                        <!--Form Group-->
                        <div class="form-group col-md-6 col-sm-12 col-xs-12">
                            <div class="field-label">Select Date <sup>*</sup></div>
                            <asp:TextBox ID="txtDate" runat="server" name="txtDate" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" 
                                ErrorMessage="Date Selection Required" Display="Dynamic" ForeColor="Gray">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group col-md-6 col-sm-12 col-xs-12">
                            <asp:LinkButton runat="server" ID="btnDate" class="theme-btn btn-style-three" OnClick="btnDate_Click">
                                <span class="txt">Click</span>
                            </asp:LinkButton>
                            <%--<div class="pull-right">
                                <asp:LinkButton ID="btnAllOrder" class="theme-btn btn-style-three" CausesValidation="false" runat="server" OnClick="btnAllOrder_Click" ><span class="txt">Show All Order List</span></asp:LinkButton>
				            </div>--%>
                        </div>

                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                        <div class="pull-right">
                            <asp:LinkButton ID="btnAllOrder" class="theme-btn btn-style-three" CausesValidation="false" runat="server" OnClick="btnAllOrder_Click" ><span class="txt">Show All Order List</span></asp:LinkButton>
				        </div>
                        </div>

                        <div class="form-group col-md-12 col-sm-12 col-xs-12">
                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover"
                                EmptyDataText="No Data Available To Display" Font-Bold="True" OnRowDataBound="GridView1_RowDataBound">
                                <Columns>
                                    <asp:TemplateField HeaderText="Product Status">
                                        <ItemTemplate>
                                            <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="attend" Text="Pending" />
                                              &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="attend" Text="Complete" />
                                              &nbsp;
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                </Columns>
                                <HeaderStyle HorizontalAlign="Center" CssClass="table table-dark" Font-Bold="True"/>
                                <FooterStyle HorizontalAlign="Center" CssClass="table table-dark" Font-Bold="True"/>
                            </asp:GridView>
                        </div>
                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                            <asp:LinkButton runat="server" ID="btnUpdate" class="theme-btn btn-style-three" OnClick="btnUpdate_Click" >
                                <span class="txt">Update</span>
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>

</asp:Content>
