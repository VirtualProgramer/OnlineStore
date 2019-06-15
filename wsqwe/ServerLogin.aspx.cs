﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ServerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

        //接textBox
        //string id = txtUserName.Text;
        //string pw = txtPassWord.Text;

        Member m = new Member();

        MemberHandler mber = new MemberHandler();

        List<Member> berList = mber.GetCasePath();

        Session["UserName"] = txtUserName.Text;
        Session["PassWord"] = txtPassWord.Text;

        if (mber.CompareUserName(Convert.ToString(Session["UserName"])) == false && mber.ComparePassWord(Convert.ToString(Session["PassWord"])) == false)
        {
            mber.strMsg("該用戶尚未註冊，請先加入會員再執行此動作!");
            Response.Redirect("~/Registered.aspx");
        }
        else
        {
            if (mber.CompareUserName(Convert.ToString(Session["UserName"])) == false)
            {
                mber.strMsg("您輸入的帳號有誤，請再次檢查是否輸入正確!");
            }
            else if (mber.ComparePassWord(Convert.ToString(Session["PassWord"])) == false)
            {
                mber.strMsg("您輸入的密碼有誤，請再次檢查是否輸入正確!");
            }
            else
            {
                Response.Redirect("~/ServerHome.aspx");
            }
        }

    }
}