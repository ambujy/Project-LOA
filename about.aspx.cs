using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace LogicOnlineAcadamy
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "LOA - About Us";
            HtmlControl liNav = (HtmlControl)Page.Master.FindControl("aboutNav");
            liNav.Attributes["class"] = "nav-item active";

            if(Session["ID"] != null)
            {
                Page.Master.FindControl("logout").Visible = true;
                Page.Master.FindControl("btn_lgo_reg").Visible = false;
            }
        }
    }
}