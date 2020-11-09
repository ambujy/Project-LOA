using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogicOnlineAcadamy
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Guid.NewGuid().ToString("N").Substring(0, 8);
            
            for (int i=0; i<=9; i++)
            {
                Button btn = new Button();
                btn.Text = "Test Button";
                btn.Click += new EventHandler(btn_click);
                btn.ForeColor = System.Drawing.Color.Red;
                testBlock.Controls.Add(btn);
            }
        }
        protected void btn_click(object sender, EventArgs e)
        {
            Response.Write("Test success");
        }
    }
}