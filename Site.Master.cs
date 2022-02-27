using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Ordering
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"]!= null)
            {
                lblUsername.Visible = true;
                lblAccountLogout.Visible = true;
                lblAccountLogin.Visible = false;
                btnRegister.Visible = false;
                lblUsername.Text = Session["userFullName"].ToString();
            }
            else
            {
                lblUsername.Visible = false;
                lblAccountLogout.Visible = false;
                lblAccountLogin.Visible = true;
                btnRegister.Visible = true;
            }
        }

        protected void lblAccountLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/Login.aspx");
        }

        protected void lblAccountLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("~/User/Login.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/Register.aspx");
        }

        protected void lblAccountManage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/Profile.aspx");
        }
    }
}