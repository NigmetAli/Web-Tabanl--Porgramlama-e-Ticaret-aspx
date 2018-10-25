using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

namespace AsılEticaret
{
    public class genelDegiskenler
    {
        public static string aranan = "";
    }   
    public partial class Master : System.Web.UI.MasterPage
    {
        
        SqlConnection baglan = new SqlConnection("Data Source=PıÇAAAK;Initial Catalog=pc;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string boyuk = "Hoşgeldin " + Session["kullanici"];
            girisadi.Text = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(boyuk);
            

          
        }

        protected void guvenliCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/giris/giris.aspx");
        } 

        protected void UrunAra_Click(object sender, EventArgs e)
        {
            genelDegiskenler.aranan = "basıldı";
            Response.Redirect("/kullanici/kullaniciSayfa.aspx?q=" + TextBox1.Text.Trim());
        }

        protected void linksepet_Click(object sender, EventArgs e)
        {
            Response.Redirect("/sepetim/sepetim.aspx");           
        }
    }
}