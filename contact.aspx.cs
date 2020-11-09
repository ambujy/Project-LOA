using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace LogicOnlineAcadamy
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "LOA - Contacts";
            HtmlControl liNav = (HtmlControl)Page.Master.FindControl("contactNav");
            liNav.Attributes["class"] = "nav-item active";

            if (Session["ID"] != null)
            {
                Page.Master.FindControl("logout").Visible = true;
                Page.Master.FindControl("btn_lgo_reg").Visible = false;
            }
        }

        protected void sendMessage_Click(object sender, EventArgs e)
        {
            string date = DateTime.Now.ToString("dd/MM/yyyy");
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LOA_db"].ConnectionString);
                con.Open();
                String query = "INSERT INTO StudentQuery(Name, Email, Subject, Message, Date) " +
                    "VALUES (@Name, @Email, @Subject, @Message, @Date)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", yourName.Text);
                cmd.Parameters.AddWithValue("@Email", yourEmail.Text);
                cmd.Parameters.AddWithValue("@Subject", subjet.Text);
                cmd.Parameters.AddWithValue("@Message", message.Text);
                cmd.Parameters.AddWithValue("@Date", DateTime.Parse(date));
                cmd.ExecuteNonQuery();
                successLBL.Text = "Your Message has sent Successfully...";
            }
            catch
            {

            }
            finally
            {

            }
        }
    }
}