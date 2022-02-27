<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Food_Ordering.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid " style="padding-top:150px">
        <div class="row mt-2">
            <div class="col-md-3 col-sm-6 col-xs-12 mt-4">
                <div class="card text-center text-white bg-secondary">
                    <%--<div class="card-header">
                        Total Products
                    </div>--%>
                    <h6 class="card-header">
                        <i class="fa fa-shopping-bag fa-2x mr-1"></i>Total Products
                    </h6>
                    <div class="card-body">
                        <%--<h5 class="card-title">Special title treatment</h5>--%>
                        <h4><asp:Label ID="totalProduct" runat="server" CssClass="card-title"></asp:Label></h4>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mt-4">
                <div class="card text-center text-dark bg-warning">
                    <h6 class="card-header">
                        <i class="fa fa-bar-chart fa-2x mr-1"></i>Total Orders
                    </h6>
                    <div class="card-body">
                        <%--<h5 class="card-title">Special title treatment</h5>--%>
                        <h4><asp:Label ID="totalOrder" runat="server" CssClass="card-title"></asp:Label></h4>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mt-4">
                <div class="card text-center text-white bg-success">
                    <h6 class="card-header">
                        <i class="fa fa-check-square fa-2x mr-1"></i>Delivered Products
                    </h6>
                    <div class="card-body">
                        <%--<h5 class="card-title">Special title treatment</h5>--%>
                        <h4><asp:Label ID="deliveredProduct" runat="server" CssClass="card-title"></asp:Label></h4>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mt-4">
                <div class="card text-center text-white bg-danger">
                    <h6 class="card-header">
                        <i class="fa fa-tasks fa-2x mr-1"></i>Pending Products
                    </h6>
                    <div class="card-body">
                        <%--<h5 class="card-title">Special title treatment</h5>--%>
                        <h4><asp:Label ID="pendingProduct" runat="server" CssClass="card-title"></asp:Label></h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
