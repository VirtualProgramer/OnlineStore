using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TackingOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       

        if (txtTackuser.Text == "" || txtTackpass.Text == "")
        {
            Label1.Text = "欄位不得為空";
        }
        else if (Session["UserName"].ToString() != txtTackuser.Text)
        {
            Label1.Text = "帳號輸入錯誤";

        }
        else if (Session["PassWord"].ToString() != txtTackpass.Text)
        {
            Label1.Text = "密碼輸入錯誤";
        }
        else
        {
            if (Session["ShoppingCart"] != null)
            {

                Dictionary<int, int> shoppingCart = Session["ShoppingCart"] as Dictionary<int, int>;

                string idString = string.Join(",", shoppingCart.Keys);
                ProductHandler ph = new ProductHandler();
                List<Product> prodList = ph.GetProductsByIDs(idString);

                ShoppingCartHandler sch = new ShoppingCartHandler();
                List<ShoppingCart> sList = sch.GetShoppingCartList(shoppingCart, prodList);




                Repeater1.DataSource = sList;
                Repeater1.DataBind();

                int total = 0;
                foreach (var item in sList)
                {
                    total += item.Totalprice;
                }

                Label2.Text = $"NT${total.ToString()}";
            }
        }

    }
}