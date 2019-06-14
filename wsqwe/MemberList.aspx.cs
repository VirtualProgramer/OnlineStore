using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MemberHandler mh = new MemberHandler();

        if (Session["UserName"].ToString() != "Ben")
        {
            string str = "您所在的用戶組並非為管理員，請洽管理員!";
            mh.strMsg(str);
        }

    }

    protected void btnDel_Click(object sender, EventArgs e)
    {
        Button b = sender as Button;

        int id = int.Parse(b.CommandName);

        MemberHandler mh = new MemberHandler();

        mh.DeleteMember(id);

        Repeater1.DataBind();
    }
}