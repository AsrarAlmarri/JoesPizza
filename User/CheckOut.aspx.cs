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
    public partial class CheckOut : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FoodDBConnectionString"].ConnectionString);
        bool isTrue = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check whether user is logged in or not
                if (Session["username"] == null)
                {
                    Response.Redirect("~/User/Login.aspx");
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Session["buyitems"] != null)
            {
                ConfirmOrder();
                Payment();
                decreaseQuantity();
                clearCart();
                Session["buyitems"] = null;
                Response.Redirect("~/User/Invoice.aspx");
            }
            else
            {
                Response.Redirect("~/User/AddtoCart.aspx");
            }
        }

        // Insert Payment details into Table
        public void Payment()
        {
            if (isTrue == true)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into CardDetails" + "(Fname,Lname,CardNo,ExpiryDate,CVV,BillingAddr) values (@FName,@LName,@CardNo,@ExpiryDate,@CVV,@BillingAddr)", con);
                cmd.Parameters.AddWithValue("@FName", txtFirstName.Value);
                cmd.Parameters.AddWithValue("@LName", txtLastName.Value);
                cmd.Parameters.AddWithValue("@CardNo", txtCardNo.Value);
                cmd.Parameters.AddWithValue("@ExpiryDate", txtExpiry.Value);
                cmd.Parameters.AddWithValue("@CVV", txtCVV.Value);
                cmd.Parameters.AddWithValue("@BillingAddr", txtAddress.Value);

                cmd.ExecuteNonQuery();
                con.Close();
            }
            Session["address"] = txtAddress.Value;
        }

        // Insert Order Details in table
        public void ConfirmOrder()
        {
            if (Session["buyitems"] != null)
            {
                var orderId = new List<string>();
                DataTable dt = (DataTable)Session["buyitems"];
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    orderid();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into OrderDetails(orderid,sno,productid,productname,price,quantity,orderdate,status,email) values('"
                    + Session["Orderid"] + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["pid"] + ",'" + dt.Rows[i]["pname"] + "'," + dt.Rows[i]["pprice"]
                    + "," + dt.Rows[i]["pquantity"] + ",'" + DateTime.Now.ToString("dd-MM-yyyy") + "','Pending', '" + Session["username"].ToString() + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    isTrue = true;
                    orderId.Add(Session["Orderid"].ToString());
                    Session["POrderId"] = orderId;
                }
            }
        }

        // Generates Order ID for a Order created
        private void orderid()
        {
            Guid obj = Guid.NewGuid();
            String orderid;
            orderid = obj.ToString();
            Session["Orderid"] = orderid;
        }

        // Decrease the Product Quantity after purchasing the Product
        public void decreaseQuantity()
        {
            DataTable dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int pId = Convert.ToInt16(dt.Rows[i]["pid"]);
                int pQuantity = Convert.ToInt16(dt.Rows[i]["pquantity"]);
                SqlDataAdapter sda = new SqlDataAdapter("Select Pquantity from Product where ProductId='" + pId + "' ", con);
                DataTable dtble = new DataTable();
                sda.Fill(dtble);
                int quantity = Convert.ToInt16(dtble.Rows[0][0]);
                if (quantity > 0)
                {
                    int reducedQuantity = quantity - pQuantity;
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update Product set Pquantity='" + reducedQuantity + "' where ProductId='" + pId + "' ", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    //isTrue = true;
                }
                else
                {
                    //isTrue = false;
                }
            }
        }

        // Delete the product from cart after payment
        public void clearCart()
        {
            if (Session["username"] != null)
            {
                DataTable dt = (DataTable)Session["buyitems"];
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    int pId = Convert.ToInt16(dt.Rows[i]["pid"]);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Delete from CartDetails where ProductId='" + pId + "' and Email='" + Session["username"] + "' ", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            else
            {
                Response.Redirect("~/User/Login.aspx");
            }
        }
    }
}