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
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FoodDBConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check whether user is logged in or not
                if (Session["username"] == null)
                {
                    Response.Redirect("~/User/Login.aspx");
                }
                DataTable dtCheck = (DataTable)Session["buyitems"];
                if (dtCheck == null)
                {
                    btnOrder.Enabled = false;
                }
                else
                {
                    btnOrder.Enabled = true;
                }

                // Adding product to Gridview
                // Adding DataRow & then Columns to DataTable
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
                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlDataAdapter da = new SqlDataAdapter("select * from Product where ProductId=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["pdesc"] = ds.Tables[0].Rows[0]["Pdesc"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];
                        dr["pcategory"] = ds.Tables[0].Rows[0]["Pcategory"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;
                        dt.Rows.Add(dr);
                        con.Open();
                        SqlCommand cmd = new SqlCommand("Insert into CartDetails values('" + dr["sno"] + "', '" + dr["pid"] + "', '" + dr["pname"] + "', '" + dr["pdesc"] + "','" + dr["pimage"] + "', '" + dr["pprice"] + "', '" + dr["pquantity"] + "', '" + dr["pcategory"] + "', '" + Session["username"].ToString() + "')", con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        gvCart.DataSource = dt;
                        gvCart.DataBind();
                        Session["buyitems"] = dt;
                        btnOrder.Enabled = true;
                        gvCart.FooterRow.Cells[5].Text = "Total Amount";
                        gvCart.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("~/User/Cart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        SqlDataAdapter da = new SqlDataAdapter("select * from Product where ProductId=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["pdesc"] = ds.Tables[0].Rows[0]["Pdesc"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];
                        dr["pcategory"] = ds.Tables[0].Rows[0]["Pcategory"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;
                        dt.Rows.Add(dr);
                        con.Open();
                        SqlCommand cmd = new SqlCommand("Insert into CartDetails values('" + dr["sno"] + "', '" + dr["pid"] + "', '" + dr["pname"] + "', '" + dr["pdesc"] + "','" + dr["pimage"] + "', '" + dr["pprice"] + "', '" + dr["pquantity"] + "', '" + dr["pcategory"] + "', '" + Session["username"].ToString() + "')", con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        gvCart.DataSource = dt;
                        gvCart.DataBind();
                        Session["buyitems"] = dt;
                        btnOrder.Enabled = true;
                        gvCart.FooterRow.Cells[5].Text = "Total Amount";
                        gvCart.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("~/User/Cart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    gvCart.DataSource = dt;
                    gvCart.DataBind();
                    if (gvCart.Rows.Count > 0)
                    {
                        gvCart.FooterRow.Cells[5].Text = "Total Amount";
                        gvCart.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }
            }

            // If no product present in cart then it will disable ClearCart button & PlaceOrder button
            if (gvCart.Rows.Count.ToString() == "0")
            {
                gvCart.Enabled = false;
                btnOrder.Text = "Oops";
            }
            else
            {
                btnOrder.Enabled = true;
            }
        }

        // Calculating Final Price
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["ptotalprice"].ToString());
                i = i + 1;
            }
            return totalprice;
        }

        // Deleting selected Product from Cart
        protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = gvCart.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                TableCell prID = gvCart.Rows[e.RowIndex].Cells[1];
                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Delete top (1) from CartDetails where ProductId='" + prID.Text + "' and Email='" + Session["username"] + "' ", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Item Has Been Deleted From Shopping Cart
                    break;
                }
            }
            // Setting SNo. after deleting Row item from cart
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("~/User/Cart.aspx");
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            bool isTrue = false;
            // First of all it will check that existing product in cart is in Stock or not
            DataTable dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int pId = Convert.ToInt16(dt.Rows[i]["pid"]);
                int pQuantity = Convert.ToInt16(dt.Rows[i]["pquantity"]);
                SqlDataAdapter sda = new SqlDataAdapter("Select Pquantity,Pname from Product where ProductId='" + pId + "' ", con);
                DataTable dtble = new DataTable();
                sda.Fill(dtble);
                int quantity = Convert.ToInt16(dtble.Rows[0][0]);
                if (quantity == 0)
                {
                    string pName = dtble.Rows[0][1].ToString();
                    string msg = "" + pName + " is not in Stock, please remove it from cart to proceed further.";
                    Response.Write("<script>alert('" + msg + "');</script>");// Display Alert message that following product is not in Stock now
                    isTrue = false;
                    break;
                }
                else
                {
                    isTrue = true;
                }
            }
            // Checks if cart contains any product in it or not
            if (gvCart.Rows.Count.ToString() == "0")
            {
                // Display alert message if Empty
                Response.Write("<script>alert('Your Cart is Empty. You cannot place an Order');</script>");
            }
            else
            {
                if (isTrue == true)
                {
                    Response.Redirect("~/User/CheckOut.aspx");
                }
            }
        }
    }
}