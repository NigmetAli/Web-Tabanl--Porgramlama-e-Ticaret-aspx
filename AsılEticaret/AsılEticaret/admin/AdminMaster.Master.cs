using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;


namespace AsılEticaret.admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string boyuk = "Hoşgeldin " + Session["admin_kadi"];
            Label1.Text = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(boyuk);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/giris/giris.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/giris/giris.aspx");
        }
    }
}