using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Ordering.Admin
{
    public partial class UpdateStatus : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FoodDBConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check whether Admin is logged in or not
                if (Session["admin"] == null)
                {
                    Response.Redirect("~/User/Login.aspx");
                }
                btnUpdate.Visible = false;
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[4].HorizontalAlign = HorizontalAlign.Center;
            e.Row.Cells[5].HorizontalAlign = HorizontalAlign.Center;
        }

        protected void btnDate_Click(object sender, EventArgs e)
        {
            string date = txtDate.Text;

            if (date == "")
            {
                Response.Write("<script>alert('Please select Date')</script>");
            }
            else
            {
                IFormatProvider culture = new CultureInfo("en-US", true);
                DateTime dateTime = DateTime.ParseExact(date, "yyyy-MM-dd", culture);
                string selectedDate = dateTime.ToString("dd-MM-yyyy");
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("select orderid as OrderId,productname as ProductName,price as Price, quantity as Quantity, orderdate as OrderedDate from OrderDetails where orderdate='" + selectedDate + "' and status='Pending' ", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count == 0)
                {
                    Response.Write("<script>alert('No record to display')</script>");
                }
                else
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    GridView1.Columns[0].Visible = true;
                    btnUpdate.Visible = true;
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                string orderId = row.Cells[1].Text;
                //RadioButton rb1 = (RadioButton)row.FindControl("rbPending");
                //RadioButton rb2 = (RadioButton)row.FindControl("rbComplete");
                RadioButton rb1 = (row.Cells[0].FindControl("RadioButton1") as RadioButton);
                RadioButton rb2 = (row.Cells[0].FindControl("RadioButton2") as RadioButton);
                string status;
                if (rb1.Checked)
                {
                    status = rb1.Text;
                    continue;
                }
                else
                {
                    status = rb2.Text;
                }
                con.Open();
                SqlCommand cmd = new SqlCommand("Update OrderDetails set status=@a where OrderId=@b", con);
                cmd.Parameters.AddWithValue("@a", status);
                cmd.Parameters.AddWithValue("@b", orderId);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Response.Write("<script>alert('Status updated successfully.')</script>");
        }

        protected void btnAllOrder_Click(object sender, EventArgs e)
        {
            AllOrders();
        }

        private void AllOrders()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select orderid as OrderId,productname as ProductName,price as Price, quantity as Quantity, orderdate as OrderedDate, status as Status from OrderDetails ", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "OrderDetails");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Columns[0].Visible = false;
            btnUpdate.Visible = false;
        }
    }
}