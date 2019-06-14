using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ServerHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/ServerLogin.aspx");
        }
        else if (Session["UserName"].ToString() != "Ben")
        {
            Response.Redirect("~/ServerLogin.aspx");
        }
    }
}