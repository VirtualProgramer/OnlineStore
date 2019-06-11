using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCart : System.Web.UI.Page {

    public string GetShoppingCartName() {

        if (Session["ShoppingCart"] != null) {
            Dictionary<int, int> shoppingCart = Session["ShoppingCart"] as Dictionary<int, int>;

            ProductHandler ph = new ProductHandler();

            List<int> scList = shoppingCart.Keys.ToList();

            return ph.GetProductName(scList[0]);

        } else {

            return "購物車內無商品";

        }


    }

    protected void Page_Load(object sender, EventArgs e) {

    }
}