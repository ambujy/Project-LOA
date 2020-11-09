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
    public partial class teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "LOA - Tutors";
            HtmlControl liNav = (HtmlControl)Page.Master.FindControl("teacherNav");
            liNav.Attributes["class"] = "nav-item active";

            if (Session["ID"] != null)
            {
                Page.Master.FindControl("logout").Visible = true;
                Page.Master.FindControl("btn_lgo_reg").Visible = false;
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LOA_db"].ConnectionString);
            con.Open();
            String query = "SELECT Tutor_ID, FirstName, LastName, About, TutorImg FROM Tutors";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.SelectCommand = cmd;
            sda.Fill(dt);

            String html = "";

            foreach (DataRow row in dt.Rows)
            {
                html += "<div class=\"col-md-6 col-lg-3 ftco-animate\">";
                html += "<div class=\"staff\">";
                html += "<div class=\"img-wrap d-flex align-items-stretch\">";
                html += "<img class=\"img\" src='" + "data:image/jpg;base64," + Convert.ToBase64String((byte[])row["TutorImg"]) + "'>";
                html += "</div>";
                html += " <div class=\"text pt-3 text-center\">";
                html += "<h3>" + row.Field<string>(1) + " " + row.Field<string>(2) + "</h3>";
                html += "<span class=\"position mb-2\">Teacher</span>";
                html += "<div class=\"faded\">";
                html += "<p>"+row.Field<string>(3)+"</p>";
                html += "</div>";
                html += "</div>";
                html += "</div>";
                html += "</div>";
            }
            tutorBlock.InnerHtml = html;
        }
    }
}