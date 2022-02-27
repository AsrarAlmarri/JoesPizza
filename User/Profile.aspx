<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Food_Ordering.User.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><br />
    <!-- Page Title -->
    <section class="page-title" style="background-image: url(../images/background/10.jpg)">
    	<div class="auto-container">
			<h1>My Profile</h1>
			<ul class="page-breadcrumb">
				<li><a href="../Home.aspx">home</a></li>
				<li>My Profile</li>
			</ul>
        </div>
    </section>
    <!-- End Page Title -->
	
	<!-- Welcome Section -->
	<section class="welcome-section">
		<div class="auto-container">
			<div class="row clearfix">
					</div>
				
    
        <div class="row">
            <div class="col-4">
                
                <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <%--<label><%# Eval("orderid") %></label>
                <label><%# Eval("productname") %> </label>
                 <label><%# Eval("orderdate") %></label>
                <label><%# Eval("status") %>  </label>
               --%>
               <asp:Label runat="server">Name: </asp:Label> <label><%# Eval("fName") %>  <%# Eval("lName") %></label><br /><br />
               <asp:Label runat="server">Email Id: </asp:Label> <label><%# Eval("Email") %></label><br />
               

            </ItemTemplate>
        </asp:DataList>
            </div><br /><br /><br /><br />
            <div class="col-10">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S/N">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="orderid" HeaderText="OrderID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="productname" HeaderText="Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="orderdate" HeaderText="Order Date">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <%--<asp:BoundField DataField="paymentType" HeaderText="Payment Mode">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>--%>
                <asp:BoundField DataField="status" HeaderText="Status">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                

                
            </Columns>
            <HeaderStyle HorizontalAlign="Center" />
        </asp:GridView>
        </div>
       </div></section>
        
</div>
    </div>
  <br /><br /><br /><br />
</asp:Content>

