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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FoodDBConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if user already log in or not
                if (Session["username"] != null)
                {
                    Response.Redirect("../Home.aspx");
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string emailId = email.Value.Trim();
            string pass = password.Value.Trim();
            if (emailId == "Admin" & pass == "123")
            {
                Session["admin"] = emailId;
                Response.Redirect("../Admin/Home.aspx");
            }
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Users where email='" + emailId + "' and password='" + pass + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Session["userFullName"] = dt.Rows[0]["fName"].ToString() + " " + dt.Rows[0]["lName"].ToString(); 
                Session["username"] = emailId;
                Session["buyitems"] = null;
                fillSavedCart();
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login Failed...!');</script>");
            }
        }

        //After user logged in it will fetch all cart itmes which were added by that user previously & storing it in Session 
        private void fillSavedCart()
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("pid");
            dt.Columns.Add("pname");
            dt.Columns.Add("pimage");
            dt.Columns.Add("pdesc");
            dt.Columns.Add("pprice");
            dt.Columns.Add("pquantity");
            dt.Columns.Add("pcategory");
            dt.Columns.Add("ptotalprice");

            String myquery = "select * from CartDetails where Email='" + Session["username"].ToString() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                int counter = ds.Tables[0].Rows.Count;
                while (i < counter)
                {
                    dr = dt.NewRow();
                    dr["sno"] = i + 1;
                    dr["pid"] = ds.Tables[0].Rows[i]["ProductId"].ToString();
                    dr["pname"] = ds.Tables[0].Rows[i]["Pname"].ToString();
                    dr["pimage"] = ds.Tables[0].Rows[i]["Pimage"].ToString();
                    dr["pdesc"] = ds.Tables[0].Rows[0]["Pdesc"].ToString();
                    dr["pprice"] = ds.Tables[0].Rows[i]["Pprice"].ToString();
                    dr["pquantity"] = ds.Tables[0].Rows[i]["Pquantity"].ToString();
                    dr["pcategory"] = ds.Tables[0].Rows[0]["Pcategory"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[i]["pprice"].ToString());
                    int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["pquantity"].ToString());
                    int totalprice = price * quantity;
                    dr["ptotalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    i = i + 1;
                }
            }
            else
            {
                Session["buyitems"] = null;
            }
            Session["buyitems"] = dt;
        }
    }
}