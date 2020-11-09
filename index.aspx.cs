using LogicOnlineAcadamy.admin;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace LogicOnlineAcadamy
{
    public partial class index : System.Web.UI.Page
    {

        //static int c1;
        public string count_tutor;
        public string count_student;
        public string count_course;
        public string courseID;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "LOA - Home";
            HtmlControl liNav = (HtmlControl)Page.Master.FindControl("indexNav");
            liNav.Attributes["class"] = "nav-item active";

            if (Session["ID"] != null)
            {
                Page.Master.FindControl("logout").Visible = true;
                Page.Master.FindControl("btn_lgo_reg").Visible = false;
            }
            //c1 = Int32.Parse(Request.QueryString["c1"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LOA_db"].ConnectionString);
            con.Open();
            String query1 = "SELECT Course_ID FROM Courses";
            String query2 = "SELECT Tutor_ID FROM Tutors";
            String query3 = "SELECT Student_ID FROM Students";
            
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlCommand cmd2 = new SqlCommand(query2, con);
            SqlCommand cmd3 = new SqlCommand(query3, con);

            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            SqlDataAdapter sda3 = new SqlDataAdapter(cmd3);

            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();
            DataTable dt3 = new DataTable();

            sda1.SelectCommand = cmd1;
            sda2.SelectCommand = cmd2;
            sda3.SelectCommand = cmd3;

            sda1.Fill(dt1);
            sda2.Fill(dt2);
            sda3.Fill(dt3);

            DataRow row1 = dt1.Rows[0];
            DataRow row2 = dt2.Rows[0];
            DataRow row3 = dt3.Rows[0];

            count_course = dt1.Rows.Count.ToString();
            count_tutor = dt2.Rows.Count.ToString();
            count_student = dt3.Rows.Count.ToString();

            //String query = "SELECT Course_ID, CourseName, Description, CourseImg, Tutor_ID, Fees FROM Courses WHERE Course_ID=@id";
            //SqlCommand cmd = new SqlCommand(query, con);
            //cmd.Parameters.AddWithValue("@id", c1);

            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.SelectCommand = cmd;
            //sda.Fill(dt);
            //DataRow row = dt.Rows[0];
            //CourseImage1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])row["CourseImg"]);
            //CourseLabel1.Text = row["CourseName"].ToString();
            //DesLabel1.Text = row["Description"].ToString();
            //CourseLabel1.Text = Session["PassID" + 1].ToString();;

            String query = "SELECT * FROM DiscountTable";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            sda.SelectCommand = cmd;
            
            if (dt.Rows.Count>0)
            {
                discountBannerContainer.Visible = true;
                DataRow row = dt.Rows[0];
                courseID = row["ID"].ToString();
                webImg.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])row["DiscountBanner"]);
                mobImg.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])row["MobBanner"]);
            }
            else
            {
                discountBannerContainer.Visible = false;
            }
        }

        protected void ifNullBanner()
        {
            
        }

        protected void webImg_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/enrollment.aspx?content="+courseID.ToString());
        }
        protected void mobImg_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/enrollment.aspx?content=" + courseID.ToString());
        }
    }
}