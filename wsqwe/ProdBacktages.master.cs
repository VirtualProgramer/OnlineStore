using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProdBacktages : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Lbname.Visible = false;
            alogout.Visible = false;


        }
        else if (Session["UserName"].ToString() == "Ben")
        {
            Lbname.Text = Session["UserName"].ToString();
            alogout.Visible = true;

        }
    }
}
