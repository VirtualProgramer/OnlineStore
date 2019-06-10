﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;



public class Member
{
    public int    ID { set; get; }
    public string UserName { get; set; }
    public string PassWord { get; set; }
    public string Email { get; set; }
    public int    Phone { get; set; }
    public string    Gender { get; set; }
}


public class MemberHandler
{

    private string SourcesPath;
    private string sql;
    public MemberHandler()
    {
        SourcesPath = WebConfigurationManager.ConnectionStrings["CaseDBConnectionString1"].ConnectionString;
    }

    //public void SaveToMember(Member m)
    //{
    //    File.AppendAllText(this.FilePath, $"{m.ID},{m.PWD}\r\n");
    //}

    public List<Member> GetCasePath()
    {
        sql = "SELECT * FROM Members";
        SqlDataAdapter sda = new SqlDataAdapter(sql , this.SourcesPath);

        DataTable dt = new DataTable();

        sda.Fill(dt);

        var query = from row in dt.AsEnumerable()
                    select new Member()
                    {
                        ID = (int)row["ID"],
                        UserName = row["UserName"].ToString(),
                        PassWord = row["PassWord"].ToString(),
                        Email = row["Email"].ToString(),
                        Phone = (int)row["Phone"],
                        Gender = row["Gender"].ToString()
                    };

        return query.ToList();
    }

    public Member GetAMembers(int id)
    {
        SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Members WHERE ID=@id", this.SourcesPath);

        DataTable dt = new DataTable();

        sda.SelectCommand.Parameters.AddWithValue("@id", id);

        sda.Fill(dt);


        DataRow row = dt.Rows[0];


        Member m = new Member()
        {
            ID = Convert.ToInt32(row["ID"]),
            UserName = row["UserName"].ToString(),
            PassWord = row["PassWord"].ToString(),
            Email = row["Email"].ToString(),
            Phone = Convert.ToInt32(row["Phone"]),
            Gender = row["Gender"].ToString()
        };

        return m;

    }

    public void strMsg(string Msg)
    {
        System.Web.HttpContext.Current.Response.Write("<Script language='Javascript'>");
        System.Web.HttpContext.Current.Response.Write($"alert('{Msg}')");
        System.Web.HttpContext.Current.Response.Write("</" + "Script>");
    }

    public void UpdateMember(Member m)
    {
        sql = "UPDATE Members SET UserName=@username,PassWord=@password,Email=@email,Phone=@phone,Gender=@gender WHERE ID=@id";

        SqlDataAdapter sda = new SqlDataAdapter(sql, SourcesPath);

        DataTable dt = new DataTable();

        sda.SelectCommand.Parameters.AddWithValue("@id", m.ID);
        sda.SelectCommand.Parameters.AddWithValue("@username", m.UserName);
        sda.SelectCommand.Parameters.AddWithValue("@password", m.PassWord);
        sda.SelectCommand.Parameters.AddWithValue("@email", m.Email);
        sda.SelectCommand.Parameters.AddWithValue("@phone", m.Phone);
        sda.SelectCommand.Parameters.AddWithValue("@gender", m.Gender);

        sda.Fill(dt);
        sda.Update(dt);
    }

    public bool CompareUserName(string Username)
    {
        //List<Member> loginid = GetCasePath();
        //Member client = loginid.SingleOrDefault(m => m.ID == i);
        //return client != null;

        SqlDataAdapter sd = new SqlDataAdapter("SELECT * FROM Members WHERE UserName=@username", this.SourcesPath);

        sd.SelectCommand.Parameters.AddWithValue("@username", Username);

        DataTable dtb = new DataTable();

        sd.Fill(dtb);

        return dtb.Rows.Count == 1;


    }


    public bool ComparePassWord(string Password)
    {
        SqlDataAdapter sd = new SqlDataAdapter("SELECT * FROM Members WHERE PassWord=@password", this.SourcesPath);

        sd.SelectCommand.Parameters.AddWithValue("@password", Password);

        DataTable dtb = new DataTable();

        sd.Fill(dtb);

        return dtb.Rows.Count == 1;
    }


    public bool CompareEmail(string Email)
    {
        SqlDataAdapter sd = new SqlDataAdapter("SELECT * FROM Members WHERE Email=@em", this.SourcesPath);

        sd.SelectCommand.Parameters.AddWithValue("@em", Email);

        DataTable dtb = new DataTable();

        sd.Fill(dtb);

        return dtb.Rows.Count == 1;
    }


    public void AddToMembers(string UserName, string PassWord, string Email, int Phone, string Gender)
    {
        sql = "insert into Members(UserName,PassWord,Email,Phone,Gender) values(@UN,@PW,@EM,@PH,@GD)";

        SqlDataAdapter da = new SqlDataAdapter(sql, this.SourcesPath);
        DataTable dt = new DataTable();

        da.SelectCommand.Parameters.AddWithValue("@UN", UserName);
        da.SelectCommand.Parameters.AddWithValue("@PW", PassWord);
        da.SelectCommand.Parameters.AddWithValue("@EM", Email);
        da.SelectCommand.Parameters.AddWithValue("@PH", Phone);
        da.SelectCommand.Parameters.AddWithValue("@GD", Gender);


        da.Fill(dt);
        da.Update(dt);

    }

    public void DeleteMember(int id)
    {
        sql = "DELETE Members WHERE ID=@id";

        SqlDataAdapter sda = new SqlDataAdapter(sql, SourcesPath);

        DataTable dt = new DataTable();

        sda.SelectCommand.Parameters.AddWithValue("@id", id);


        sda.Fill(dt);
        sda.Update(dt);
    }
}