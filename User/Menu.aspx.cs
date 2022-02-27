using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Ordering.User
{
    public partial class Menu : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FoodDBConnectionString"].ConnectionString);
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
            if (!IsPostBack)
            {
                ShowProduct();
                ShowCategory();
            }
        }

        protected void dlProduct_ItemCommand(object source, DataListCommandEventArgs e)
        {
            // Adding to Cart
            Session["addproduct"] = "true";
            if (e.CommandName == "AddToCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("ddlQuantity"));
                Response.Redirect("~/User/Cart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());
            }
        }

        private void ShowProduct()
        {
            sda = new SqlDataAdapter("Select * from Product", con);
            dt = new DataTable();
            sda.Fill(dt);
            dlProduct.DataSource = dt;
            dlProduct.DataBind();
        }

        private void ShowCategory()
        {
            sda = new SqlDataAdapter("Select * from Category", con);
            dt = new DataTable();
            sda.Fill(dt);
            dlCategory.DataSource = dt;
            dlCategory.DataBind();
        }

        protected void dlCategory_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "CategoryType")
            {
                sda = new SqlDataAdapter("Select * from Product where Pcategory= '" + e.CommandArgument.ToString() + "' ", con);
                dt = new DataTable();
                sda.Fill(dt);
                dlProduct.DataSource = dt;
                dlProduct.DataBind();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ShowProduct();
        }
    }
}