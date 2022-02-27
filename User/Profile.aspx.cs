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
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FoodDBConnectionString"].ConnectionString);
        string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Redirect("~/User/Login.aspx");
                }
                else
                {
                    email = Session["username"].ToString();
                    userOrder();
                    userDetails();
                }
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void userOrder()
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * from OrderDetails where Email = '" + email + "'", con);
            //SqlDataAdapter sda = new SqlDataAdapter("Select * from Users where Email = '" + email + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void userDetails()
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Users where Email = '" + email + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}