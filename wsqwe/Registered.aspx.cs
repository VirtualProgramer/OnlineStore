﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registered : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string str = "恭喜! 註冊成功，下次登入時請用這組帳號密碼登入。";

        MemberHandler mh = new MemberHandler();

        if (mh.CompareUserName(txtUserName.Text))
        {
            mh.strMsg("該帳號已被註冊!");
        }
        else if (mh.CompareEmail(txtEmail.Text))
        {
            mh.strMsg("您填寫的信箱已被註冊!");

        }
        else
        {
            mh.strMsg(str);
            mh.AddToMembers(txtUserName.Text,txtPassWord.Text,txtEmail.Text,txtPhone.Text,int.Parse(RBL1.SelectedValue));
            Response.Redirect("~/Home.aspx");
        }
    }
}