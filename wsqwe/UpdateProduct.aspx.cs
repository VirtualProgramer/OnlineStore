using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateProduct : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e) {

        FileUpload fileUp = FormView1.FindControl("f") as FileUpload;
        if (fileUp.HasFile) {

            string ext = Path.GetExtension(e.NewValues["ImageFileName"].ToString());
            e.NewValues["ImageFileName"] = DateTime.Now.ToString("yyMMdd_HHmmss_ffff") + ext;

            string str = System.Web.HttpContext.Current.Server.MapPath("img/" + e.NewValues["ImageFileName"]);
            fileUp.SaveAs(str);

        } else {
            e.NewValues["ImageFileName"] = "";
        }
    }
}