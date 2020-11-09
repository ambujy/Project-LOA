using paytm;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Net;

namespace LogicOnlineAcadamy
{
    public partial class enrollment : System.Web.UI.Page
    {
        protected int amt;
        protected int courseID;
        public string orderID;

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "LOA - Enrollment";
            if (Session["ID"] != null)
            {
                Page.Master.FindControl("logout").Visible = true;
                Page.Master.FindControl("btn_lgo_reg").Visible = false;
            }
            courseID = Int32.Parse(Request.QueryString["content"]);
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LOA_db"].ConnectionString);
            con.Open();
            String query = "SELECT Course_ID, CourseName, Description, CourseImg, Fees FROM Courses WHERE Course_ID = @courseID";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@courseID", (courseID));
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            DataRow row = dt.Rows[0];
            courseImg.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])row["CourseImg"]);
            courseTitle.Text = row.Field<string>(1);
            CourseDiscription.Text = row.Field<string>(2);
            price.Text = "&#x20B9; " + row.Field<Int32>(4).ToString() + "/-";
            amt = row.Field<Int32>(4);
        }

        protected void buyNow_Click(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                String customerEmail = Session["email"].ToString();
                String customerPhone = Session["phoneNo"].ToString();
                String customerID = Session["ID"].ToString();
                orderID = Guid.NewGuid().ToString("N").Substring(0, 8);
                Session["eID"] = orderID;
                Application["orderID"] = orderID;
                string callBackURL = "https://localhost:44309/paySuccessfull.aspx?oid="+ orderID + "&sid="+ customerID + "&cid="+ courseID + "";
                ///////////////////###PAYTM CODE###//////////////////////////
                String merchantKey = "YC0T2!IHqS0vk7T6";
                Dictionary<string, string> parameters = new Dictionary<string, string>();
                parameters.Add("MID", "gLUvwt12674974157660");
                parameters.Add("CHANNEL_ID", "WEB");
                parameters.Add("INDUSTRY_TYPE_ID", "Retail");
                parameters.Add("WEBSITE", "WEBSTAGING");
                parameters.Add("EMAIL", customerEmail);
                parameters.Add("MOBILE_NO", customerPhone);
                parameters.Add("CUST_ID", customerID);
                parameters.Add("ORDER_ID", orderID);
                parameters.Add("TXN_AMOUNT", amt.ToString());
                parameters.Add("CALLBACK_URL", callBackURL); //This parameter is not mandatory. Use this to pass the callback url dynamically.

                string checksum = CheckSum.generateCheckSum(merchantKey, parameters);

                string paytmURL = "https://securegw-stage.paytm.in/theia/processTransaction";

                string outputHTML = "<html>";
                outputHTML += "<head>";
                outputHTML += "<title>Merchant Check Out Page</title>";
                outputHTML += "</head>";
                outputHTML += "<body>";
                outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
                outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
                outputHTML += "<table border='1'>";
                outputHTML += "<tbody>";
                foreach (string key in parameters.Keys)
                {
                    outputHTML += "<input type='hidden' name='" + key + "' value='" + parameters[key] + "'>";
                }
                outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
                outputHTML += "</tbody>";
                outputHTML += "</table>";
                outputHTML += "<script type='text/javascript'>";
                outputHTML += "document.f1.submit();";
                outputHTML += "</script>";
                outputHTML += "</form>";
                outputHTML += "</body>";
                outputHTML += "</html>";
                Response.Write(outputHTML);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowLogin", "$('#modalLRForm').modal('show')", true);
            }
        }

    }
}