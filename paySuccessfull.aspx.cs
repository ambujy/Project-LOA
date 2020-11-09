using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogicOnlineAcadamy
{
    public partial class paySuccessfull : System.Web.UI.Page
    {
        public static string enrollDate;
        public static string orderID;
        public static string fname;
        public static string email;
        public static string cname;
        public static int cprice;

        protected void Page_Load(object sender, EventArgs e)
        {
            orderID = Request.QueryString["oid"];

            Page.Title = "LOA - Payment Successfull.";
            if (Session["ID"] != null)
            {
                Page.Master.FindControl("logout").Visible = true;
                Page.Master.FindControl("btn_lgo_reg").Visible = false;
            }
            //ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS",
            //"setTimeout(function() { window.location.replace('index.aspx') }, 5000);", true);

            enrollDate = DateTime.Now.ToString("dd/MM/yyyy");

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LOA_db"].ConnectionString);
            con.Open();
            string query = "INSERT INTO Enrollments(Enrollment_ID, EnrollmentDate, Course_ID, Student_ID)" +
                " VALUES (@enrollID, @enrollDate, @courseID, @studentID)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@enrollID", Request.QueryString["oid"]);
            cmd.Parameters.AddWithValue("@enrollDate", DateTime.Parse(enrollDate));
            cmd.Parameters.AddWithValue("@courseID", Request.QueryString["cid"]);
            cmd.Parameters.AddWithValue("@studentID", Request.QueryString["sid"]);
            cmd.ExecuteNonQuery();
            //sendInvoice();

            string query1 = " select Email, FirstName from Students where Student_ID = @studentID";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@studentID", Request.QueryString["sid"]);

            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);

            cmd1.ExecuteNonQuery();

            email = dt1.Rows[0].Field<string>(0);
            fname = dt1.Rows[0].Field<string>(1);

            string query2 = "select CourseName, Fees from Courses where Course_ID ="+ Convert.ToInt32(Request.QueryString["cid"]);
            SqlCommand cmd2 = new SqlCommand(query2, con);
            //cmd.Parameters.AddWithValue("@courseID", Convert.ToInt32(Request.QueryString["cid"]));

            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);

            cname = dt2.Rows[0].Field<string>(0);
            cprice = dt2.Rows[0].Field<int>(1);

            cmd2.ExecuteNonQuery();
        }
    }
}