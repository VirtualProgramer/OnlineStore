using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShopCarts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ShoppingCart"] != null)
        {

            Dictionary<int, int> shoppingCart = Session["ShoppingCart"] as Dictionary<int, int>;

            string idString = string.Join(",", shoppingCart.Keys);
            ProductHandler ph = new ProductHandler();
            List<Product> prodList = ph.GetProductsByIDs(idString);

            ShoppingCartHandler sch = new ShoppingCartHandler();
            List<ShoppingCart> sList = sch.GetShoppingCartList(shoppingCart, prodList);

            Label1.Text = "";

            

            Repeater1.DataSource = sList;
            Repeater1.DataBind();

            int total = 0;
            foreach (var item in sList)
            {
                total += item.Totalprice;
            }

            Label1.Text = total.ToString();
        }
        else
        {
            //Repeater1.DataSource = "購物車內無任何商品";
            //Repeater1.DataBind();
            ProductHandler ph = new ProductHandler();
            string str = "購物車內無任何商品";
            ph.strMsg(str);
        }
    }
}