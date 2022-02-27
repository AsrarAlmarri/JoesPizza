using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Ordering.Admin
{
    public partial class Product : System.Web.UI.Page
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
            }
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                if (imageUpload.HasFile)
                {
                    string filename = imageUpload.PostedFile.FileName;
                    string filepath = "../MenuImages/" + imageUpload.FileName;
                    imageUpload.PostedFile.SaveAs(Server.MapPath("~/MenuImages/") + filename);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into Product values('" + txtName.Value + "', '" + txtDescription.Text + "',  '" + filepath + "', '" + txtPrice.Value + "', '" + txtQuantity.Value + "', '" + DropDownList1.SelectedItem.Text + "', '" + Session["admin"] + "' )", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("~/Admin/UpdateProduct.aspx");
                }
            }
        }
    }
}