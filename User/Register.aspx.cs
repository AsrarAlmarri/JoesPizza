using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Ordering.User
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FoodDBConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //if(password.Value == confirmPassword.Value)
            //{
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Users" + "(fName,lName,email,password) values (@Fname,@Lname,@Email,@Password)", con);
                cmd.Parameters.AddWithValue("@Fname", firstName.Value.Trim());
                cmd.Parameters.AddWithValue("@Lname", lastName.Value.Trim());
                cmd.Parameters.AddWithValue("@Email", emailId.Value.Trim());
                cmd.Parameters.AddWithValue("@Password", password.Value.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registered Successfull');</script>");
            //}
            //else
            //{
            //    Response.Write("<script>alert('Password Not Match');</script>");
            //}
        }
    }
}