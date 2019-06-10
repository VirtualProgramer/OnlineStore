using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductView : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }

    }

    //protected void Button2_Click(object sender, EventArgs e) {
    //    Button b = sender as Button;
    //    int prodId = int.Parse(b.CommandName);
    //    ProductHandler ph = new ProductHandler();
    //    ph.DeleteProduct(prodId);
    //    Repeater1.DataBind();
    //}

    protected void Button2_Click(object sender, EventArgs e) {
        Button b = sender as Button;
        int prodId = int.Parse(b.CommandName);
        ProductHandler ph = new ProductHandler();
        ph.DeleteProduct(prodId);
        Repeater1.DataBind();
    }
}