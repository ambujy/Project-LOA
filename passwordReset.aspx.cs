using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogicOnlineAcadamy
{
    public partial class passwordReset : System.Web.UI.Page
    {
        static string code;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "LOA - Reset Password";
        }
        private void sendCode()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("logicacademy40@gmail.com", "Logic@owner");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Activation Code to Verify Email Address";
            msg.Body = "Dear   " + username.Text + "\n Your Activation Code is " + code;
            string ToAddress = emailTBX.Text;
            msg.To.Add(ToAddress);
            string FromAddress = "Logic Online Academy (LOA) <logicacademy40@gmail.com>";
            msg.From = new MailAddress(FromAddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }
        }

        protected void getcoedeBTN_Click(object sender, EventArgs e)
        {
            Random random = new Random();
            code = random.Next(1001, 9999).ToString();

            ViewState["code"] = code;
            //Label3.Text = ViewState["code"].ToString();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LOA_db"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Students where UserName=@username and Email=@email", con);
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@email", emailTBX.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                incorrect.Text = "";
                getcoedeBTN.Visible = false;
                Button2.Visible = true;
                codeLBL.Visible = true;
                codeTBX.Visible = true;
                divcode.Visible = true;
                verify_btn.Visible = true;
                divGetCode.Visible = false;
                sendCode();
            }
            else
            {
                incorrect.Text = "*Username or Email is Incorrect.";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (ViewState["code"].ToString() == codeTBX.Text)
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
            else
            {
                Label3.Text = "*Entered Code is Incorrect! Please try again.";
            }
        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LOA_db"].ConnectionString);
            con.Open();
            String query = "update Students set Password=@password where UserName=@username and Email=@email";
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@password", conf_pass.Text);
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@email", emailTBX.Text);
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            form2.Visible = false;
            success_msg.Visible = true;
        }
    }
}