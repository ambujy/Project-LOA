using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogicOnlineAcadamy
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            string studentID = Guid.NewGuid().ToString("N").Substring(0, 8);
            string regDate = DateTime.Now.ToString("dd/MM/yyyy");
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LOA_db"].ConnectionString);
                con.Open();
                String query = "INSERT INTO Students(Student_ID, Email, UserName, Password, FirstName, LastName, Phone, Gender, DateOfBirth, RegistrationDate) " +
                    "VALUES (@Student_ID, @Email, @UserName, @Password, @FirstName, @LastName, @Phone, @Gender, @DateOfBirth, @RegistrationDate)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Student_ID", studentID);
                cmd.Parameters.AddWithValue("@Email", signupEmail.Text);
                cmd.Parameters.AddWithValue("@UserName", tbx_username.Text);
                cmd.Parameters.AddWithValue("@Password", repeatPassword.Text);
                cmd.Parameters.AddWithValue("@FirstName", fname.Text);
                cmd.Parameters.AddWithValue("@LastName", lname.Text);
                cmd.Parameters.AddWithValue("@Phone", tbx_phone.Text);
                cmd.Parameters.AddWithValue("@Gender", DropDownGender.SelectedValue);
                cmd.Parameters.AddWithValue("@DateOfBirth", DateTime.Parse(tbx_date.Text));
                cmd.Parameters.AddWithValue("@RegistrationDate", DateTime.Parse(regDate));
                cmd.ExecuteNonQuery();

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You have Registered Successfully.')", true);

                con.Close();

            }
            catch (Exception ee)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ee.Message.ToString() + "')", true);
                //Response.Write(ee.Message);
            }
            finally
            {

            }
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LOA_db"].ConnectionString);
                con.Open();
                String query = "SELECT * FROM Students WHERE UserName = @username or Email = @email and Password = @password";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@username", inputEmail_Username.Text);
                cmd.Parameters.AddWithValue("@email", inputEmail_Username.Text);
                cmd.Parameters.AddWithValue("@password", inputPassword.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                cmd.ExecuteNonQuery();

                if (dt.Rows.Count > 0)
                {
                    Session.Clear();
                    Session["ID"] = dt.Rows[0].Field<string>(0);
                    Session["email"] = dt.Rows[0].Field<string>(1);
                    Session["username"] = dt.Rows[0].Field<string>(2);
                    Session["FullName"] = dt.Rows[0].Field<string>(4) +" "+ dt.Rows[0].Field<string>(5);
                    Session["phoneNo"] = dt.Rows[0].Field<string>(6);

                    //Response.Write("ID = " + Session["ID"] + "</br>");
                    //Response.Write("Email = " + Session["email"] + "</br>");
                    //Response.Write("FullName = " + Session["FullName"] + "</br>");
                    //Response.Write("phoneNo = " + Session["phoneNo"] + "</br>");

                    btn_lgo_reg.Visible = false;
                    logout.Visible = true;
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Email/Usename or Password is INCORRECT')", true);
                    //logMsg.Visible = true;
                    //logMsg.Text = "*Email/Usename or Password is INCORRECT";
                }

            }
            catch
            {

            }
            finally
            {

            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            btn_lgo_reg.Visible = true;
            logout.Visible = false;
        }
    }
}