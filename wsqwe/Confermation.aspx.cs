using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Confermation : System.Web.UI.Page
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




            Repeater1.DataSource = sList;
            Repeater1.DataBind();

            int total = 0;
            foreach (var item in sList)
            {
                total += item.Totalprice;
            }

            Label1.Text = $"NT${total.ToString()}";
        }
    }
}