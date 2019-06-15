using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;

public class Product {
    public int Id { get; set; }
    public string Name { get; set; }
    public int Price { get; set; }
    public int Amount { get; set; }
    public string ImageFileName { get; set; }
    public string CategoryName { get; set; }
    public int TargetCustomer { get; set; }
}

public class ProductHandler {

    private string SourcesPath;
    private string ssql;

    public ProductHandler() {
        SourcesPath = WebConfigurationManager.ConnectionStrings["CaseDBConnectionString1"].ConnectionString;
    }

    public List<Product> GetAllProduct() {
        SqlDataAdapter sda = new SqlDataAdapter(
            "SELECT p.Id, Name, Price, Amount, ImageFileName, CategoryName, TargetCustomer  " +
            "FROM Products p inner join Categories c on p.CategoryID = c.Id",
            this.SourcesPath);

        DataTable dt = new DataTable();

        sda.Fill(dt);

        var query = from row in dt.AsEnumerable()
                    select new Product() {
                        Id = Convert.ToInt32(row["id"]),
                        Name = row["Name"].ToString(),
                        Price = Convert.ToInt32(row["Price"]),
                        Amount = Convert.ToInt32(row["Amount"]),
                        ImageFileName = row["ImageFileName"] is DBNull ? "default.png" : row["ImageFileName"].ToString(),
                        CategoryName = row["CategoryName"].ToString(),
                        TargetCustomer = row["TargetCustomer"] is DBNull ? -1 : Convert.ToInt32(row["TargetCustomer"])
                    };

        return query.ToList();
    }

    public Product GetProduct(int id) {
        SqlDataAdapter da = new SqlDataAdapter(
           "SELECT p.Id, Name, Price, Amount, ImageFileName, CategoryName, TargetCustomer  " +
            "FROM Products p inner join Categories c on p.CategoryID = c.Id where p.id=@id",
           this.SourcesPath);

        da.SelectCommand.Parameters.AddWithValue("@id", id);

        DataTable dt = new DataTable();

        da.Fill(dt);

        if (dt.Rows.Count == 0) {
            return null;
        } else {
            return new Product() {
                Id = Convert.ToInt32(dt.Rows[0]["id"]),
                Name = dt.Rows[0]["Name"].ToString(),
                Price = Convert.ToInt32(dt.Rows[0]["Price"]),
                Amount = Convert.ToInt32(dt.Rows[0]["Amount"]),
                ImageFileName = dt.Rows[0]["ImageFileName"] is DBNull ? "default.png" : dt.Rows[0]["ImageFileName"].ToString(),
                CategoryName = dt.Rows[0]["CategoryName"].ToString(),
                TargetCustomer = dt.Rows[0]["TargetCustomer"] is DBNull ? -1 : Convert.ToInt32(dt.Rows[0]["TargetCustomer"])
            };
        }
    }

    public void DeleteProduct(int id) {
        using (SqlConnection cn = new SqlConnection(this.SourcesPath)) {
            SqlCommand cmd = new SqlCommand("delete Products where id=@id", cn);
            cmd.Parameters.AddWithValue("@id", id);
            cn.Open();
            cmd.ExecuteNonQuery();
        }
    }

    public string GetProductName(int proId) {
        SqlDataAdapter da = new SqlDataAdapter(
           "SELECT * FROM Products where id=@id", this.SourcesPath);

        da.SelectCommand.Parameters.AddWithValue("@id", proId);

        DataTable dt = new DataTable();

        da.Fill(dt);

        if (dt.Rows.Count == 0) {
            return null;
        } else {
            return dt.Rows[0]["Name"].ToString();
        }
    }

    ///////////////////以上已經修好並使用中///////////////////
    
    public void UpdateProduct(Product p) {

        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Categories where CategoryName=@CategoryName",
            this.SourcesPath);

        da.SelectCommand.Parameters.AddWithValue("@CategoryName", p.CategoryName);
        DataTable dt = new DataTable();
        da.Fill(dt);
        int ctId = Convert.ToInt32(dt.Rows[0]["id"]);

        using (SqlConnection cn = new SqlConnection(this.SourcesPath)) {

            SqlCommand cmd = new SqlCommand("Update Products set Name = @Name, Price = @Price, Amount = @Amount, ImageFileName = @ImageFileName, CategoryID=@CategoryID, TargetCustomer=@TargetCustomer where id=@id", cn);

            cmd.Parameters.AddWithValue("@id", p.Id);
            cmd.Parameters.AddWithValue("@Name", p.Name);
            cmd.Parameters.AddWithValue("@Price", p.Price);
            cmd.Parameters.AddWithValue("@Amount", p.Amount);
            cmd.Parameters.AddWithValue("@CategoryID", ctId);
            cmd.Parameters.AddWithValue("@TargetCustomer", DBNull.Value);

            if (p.ImageFileName == "") {
                cmd.Parameters.AddWithValue("@ImageFileName", DBNull.Value);
            } else {
                cmd.Parameters.AddWithValue("@ImageFileName", p.ImageFileName);
            }

            cn.Open();
            cmd.ExecuteNonQuery();
        }
    }

    public void AddToProducts(string ProdName, int Price, int Amount) {
        ssql = "insert into Products(Name,Price,Amount) values(@prodname,@price,@amount)";

        SqlDataAdapter sda = new SqlDataAdapter(ssql, this.SourcesPath);
        DataTable dt = new DataTable();

        sda.SelectCommand.Parameters.AddWithValue("prodname", ProdName);
        sda.SelectCommand.Parameters.AddWithValue("price", Price);
        sda.SelectCommand.Parameters.AddWithValue("amount", Amount);

        sda.Fill(dt);
        sda.Update(dt);
    }

    public void AddToProducts(Product p) {
        using (SqlConnection cn = new SqlConnection(this.SourcesPath)) {
            SqlCommand cmd = new SqlCommand(
                "insert into Products values(@name , @price , @amount , @imgUrl)",
                cn);

            cmd.Parameters.AddWithValue("@name", p.Name);
            cmd.Parameters.AddWithValue("@price", p.Price);
            cmd.Parameters.AddWithValue("@amount", p.Amount);
            cmd.Parameters.AddWithValue("@imgUrl", p.ImageFileName);
            //cmd.Parameters.AddWithValue("@imgUrl", DBNull.Value);

            cn.Open();
            cmd.ExecuteNonQuery();
        }
    }

    public void AddToProducts(string ProdName, int Price, int Amount, string ProdImg) {
        ssql = "insert into Products(Name,Price,Amount,ImageFileName) values(@prodname,@price,@amount,@imgfilename)";

        SqlDataAdapter sda = new SqlDataAdapter(ssql, this.SourcesPath);
        DataTable dt = new DataTable();

        sda.SelectCommand.Parameters.AddWithValue("prodname", ProdName);
        sda.SelectCommand.Parameters.AddWithValue("price", Price);
        sda.SelectCommand.Parameters.AddWithValue("amount", Amount);
        sda.SelectCommand.Parameters.AddWithValue("imgfilename", ProdImg);

        sda.Fill(dt);
        sda.Update(dt);
    }

    public bool CompareProdName(string ProdName) {
        ssql = "SELECT* FROM Products WHERE Name=@name";

        SqlDataAdapter sd = new SqlDataAdapter(ssql, this.SourcesPath);

        sd.SelectCommand.Parameters.AddWithValue("@name", ProdName);

        DataTable dtb = new DataTable();

        sd.Fill(dtb);

        return dtb.Rows.Count == 1;


    }

    public void OutputFileFormat(string str, string FileName) {
        StreamWriter sw = new StreamWriter(HttpContext.Current.Server.MapPath($"{FileName}"));

        sw.WriteLine(str);

        sw.Close();

        //File.AppendAllText(FileFormat,result);
    }

    public string ProdString(string N, string P, string A, string I) {
        return $"產品名稱：{N}，產品價格：{P}元，產品數量：{A}杯，圖片檔名：{I}";
    }

    public string ProdString(string N, string P, string A) {
        return $"產品名稱：{N}，產品價格：{P}元，產品數量：{A}杯";
    }

    public void CapBPrice(int ProdPrice, BulletedList buList) {
        //foreach (Product item in GetCasePath()) {
        //    if (int.Parse(item.Price.ToString()) > ProdPrice) {
        //        buList.Items.Add(ProdString(item.Name, item.Price.ToString(), item.Amount.ToString(), item.ImageFileName));
        //    }
        //}
    }

    public void strMsg(string Msg) {
        System.Web.HttpContext.Current.Response.Write("<Script language='Javascript'>");
        System.Web.HttpContext.Current.Response.Write($"alert('{Msg}')");
        System.Web.HttpContext.Current.Response.Write("</" + "Script>");
    }

    public List<Product> GetProductsByIDs(string idString) {
        SqlDataAdapter da = new SqlDataAdapter(
             $"select * from Products where id in ({idString})",
             SourcesPath);

        DataTable dt = new DataTable();

        da.Fill(dt);

        var query = from row in dt.AsEnumerable()
                    select new Product() {
                        Id = Convert.ToInt32(row["ID"]),
                        Name = row["Name"].ToString(),
                        Price = Convert.ToInt32(row["Price"]),
                        Amount = Convert.ToInt32(row["Amount"]),
                        ImageFileName = row["ImageFileName"] is DBNull ? "" : row["ImageFileName"].ToString()
                    };

        return query.ToList();
    }

}