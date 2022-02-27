using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Ordering.User
{
    public partial class Invoice : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["FoodDBConnectionString"].ConnectionString);
        string Address = string.Empty;
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
            orderDate.Text = DateTime.Now.ToString();
            Label3.Text = Session["address"].ToString();
            showgrid();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }

        // Will generate PDF
        protected void btnDownloadInvoice_Click(object sender, EventArgs e)
        {
            exportpdf();
        }

        // Function for exporting PDF
        private void exportpdf()
        {
            // Document Type i.e PDF
            Response.ContentType = "application/pdf";
            // Generate PDF with following Name
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            // Cache is not saved 
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            // Class for Writing the Content
            StringWriter sw = new StringWriter();
            // Class for Writing HTML 
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            // Function to Render all Content which is inside of Panel Control 
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            // Defines Document Page Size
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            //StyleSheet styles = new StyleSheet();
            //styles.LoadStyle("testt","ForeColor","Red");
            //styles.LoadStyle("bgcolor", "background-color", "red");
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            //htmlparser.SetStyleSheet(styles);
            // Class for getting it into PDF Format
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            // Open connection
            pdfDoc.Open();
            // Parse all HTML's Panel Data
            htmlparser.Parse(sr);
            // Close connection
            pdfDoc.Close();
            // Will give PDF as a Response
            Response.Write(pdfDoc);
            Response.End();
            // After this it will get downloaded into your local drive
        }

        // Displays Purchased Items in GridView
        private void showgrid()
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("orderid");
            //dt.Columns.Add("productid");
            dt.Columns.Add("productname");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            int grandtotal = 0;
            List<string> orderList = (List<string>)Session["POrderId"];
            foreach (string orderId in orderList)
            {
                SqlCommand cmd = new SqlCommand("select * from OrderDetails where orderid='" + orderId + "'");
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                int totalrows = ds.Tables[0].Rows.Count;
                int i = 0;
                while (i < totalrows)
                {
                    dr = dt.NewRow();
                    dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
                    dr["orderid"] = ds.Tables[0].Rows[i]["orderid"].ToString();
                    dr["productname"] = ds.Tables[0].Rows[i]["productname"].ToString();
                    dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                    dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
                    int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    grandtotal = grandtotal + totalprice;
                    dt.Rows.Add(dr);
                    i = i + 1;
                }
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label4.Text = grandtotal.ToString();
        }
    }
}