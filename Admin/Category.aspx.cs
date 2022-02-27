using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Ordering.Admin
{
    public partial class Category : System.Web.UI.Page
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
                ShowGrid();
            }
        }

        // Will Add Category into table
        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from Category where CategoryName='" + txtCategory.Value.Trim() + "' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            // Check whether the added Category is already present or not
            if (dt.Rows.Count == 1)
            {
                Response.Write("<script>alert('This Category is Already Present');</script>");
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Category values (@Cname)", con);
                cmd.Parameters.AddWithValue("@Cname", txtCategory.Value.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('One Record added');</script>");
                txtCategory.Value = "";
                ShowGrid();
            }
        }

        // Displays Category in GridVeiw
        public void ShowGrid()
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Category", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            ShowGrid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int CId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from Category where CategoryId=@1", con);
            cmd.Parameters.AddWithValue("@1", CId);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Category Deleted Successful');</script>");
            ShowGrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            ShowGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string CategoryName = (row.FindControl("TextBox1") as TextBox).Text;
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Category set CategoryName=@1 where CategoryId=@2", con);
            cmd.Parameters.AddWithValue("@1", CategoryName);
            cmd.Parameters.AddWithValue("@2", cId);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            Response.Write("<script>alert('Category Updated Successful');</script>");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ShowGrid();
        }
    }
}