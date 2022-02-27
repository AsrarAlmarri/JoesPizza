using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Ordering.Admin
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FoodDBConnectionString"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["admin"] == null)
                {
                    Response.Redirect("~/User/Login.aspx");
                }
            }
            totalProducts();
            totalOrders();
            deliveredProducts();
            pendingProducts();
        }

        private void totalProducts()
        {
            con.Open();
            cmd = new SqlCommand("Select count(*) from Product", con);
            object count = cmd.ExecuteScalar();
            con.Close();
            if (count != null)
            {
                totalProduct.Text = count.ToString();
            }
            else
            {
                totalProduct.Text = "N/A";
            }
        }

        private void totalOrders()
        {
            con.Open();
            cmd = new SqlCommand("Select count(*) from OrderDetails", con);
            object count = cmd.ExecuteScalar();
            con.Close();
            if (count != null)
            {
                totalOrder.Text = count.ToString();
            }
            else
            {
                totalOrder.Text = "N/A";
            }
        }

        private void deliveredProducts()
        {
            con.Open();
            cmd = new SqlCommand("Select count(*) from OrderDetails where status='Complete'", con);
            object count = cmd.ExecuteScalar();
            con.Close();
            if (count != null)
            {
                deliveredProduct.Text = count.ToString();
            }
            else
            {
                deliveredProduct.Text = "N/A";
            }
        }

        private void pendingProducts()
        {
            con.Open();
            cmd = new SqlCommand("Select count(*) from OrderDetails where status='Pending'", con);
            object count = cmd.ExecuteScalar();
            con.Close();
            if (count != null)
            {
                pendingProduct.Text = count.ToString();
            }
            else
            {
                pendingProduct.Text = "N/A";
            }
        }
    }
}