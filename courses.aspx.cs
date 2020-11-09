using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace LogicOnlineAcadamy
{
    public partial class course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "LOA - Courses";
            HtmlControl liNav = (HtmlControl)Page.Master.FindControl("courseNav");
            liNav.Attributes["class"] = "nav-item active";

            if (Session["ID"] != null)
            {
                Page.Master.FindControl("logout").Visible = true;
                Page.Master.FindControl("btn_lgo_reg").Visible = false;
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LOA_db"].ConnectionString);
            con.Open();
            String query = "SELECT Course_ID, CourseName, Description, CourseImg, Tutor_ID, Fees FROM Courses";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.SelectCommand = cmd;
            sda.Fill(dt);

            String html = "";

            foreach (DataRow row in dt.Rows)
            {
                html += "<div class=\"col-md-3 course ftco-animate\">";
                html += "<div class=\"img\">";
                html += "<img class=\"img\" src='"+ "data:image/jpg;base64," + Convert.ToBase64String((byte[])row["CourseImg"]) + "'>";
                html += "</div>";
                html += " <div class=\"text pt-4\">";
                html += "<h3><a href='#'>" + row.Field<string>(1) + "</a></h3>";
                html += "<p>" + row.Field<string>(2) + "</p>";
                html += "<p>";
                html += "<a href='enrollment.aspx?content=" + row.Field<Int32>(0) + "' class='btn btn-primary'>Apply Now</a>";
                html += "</p>";
                html += "</div>";
                html += "</div>";
            }
            courseBlock.InnerHtml = html;
            
        }
    }
}