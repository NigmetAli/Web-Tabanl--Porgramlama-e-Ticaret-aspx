using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using System.Data;

namespace AsılEticaret.kullanici
{
    
    public partial class kullaniciSayfa : System.Web.UI.Page
    {


        
        
        SqlConnection orklenti = new SqlConnection("Data Source=PıÇAAAK;Initial Catalog=pc;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

            string ara = "";
            if (genelDegiskenler.aranan == "basıldı")
            {
                ara = Request.QueryString["q"].ToString();
            }
           
            if (ara != "")
            {

                orklenti.Open();

                SqlCommand komut = new SqlCommand("select * from pc where marka  like'%" + ara + "%'or model like'%" + ara + "%' ", orklenti);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(komut);
                da.Fill(dt);  
                DataList1.DataSource = dt;
                DataList1.DataBind();



                orklenti.Close();
                genelDegiskenler.aranan = "";

            }
            else
            {                
                try
                {
                    if (Session["kullanici"] != null)
                    {
                        string boyuk = "Hoşgeldin " + Session["kullanici"];

                        Label girisadi = this.Master.FindControl("girisadi") as Label;

                        girisadi.Text = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(boyuk);
                    }
                }
                catch (Exception ex)
                {
                    Response.Redirect("/giris/giris.aspx");
                }


                try
                {
                    orklenti.Open();

                    SqlCommand gomut = orklenti.CreateCommand();
                    gomut.CommandType = CommandType.Text;
                    gomut.CommandText = "select * from pc";
                    DataTable dataTablosu = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(gomut);
                    da.Fill(dataTablosu);
                    DataList1.DataSource = dataTablosu;
                    DataList1.DataBind();

                    orklenti.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
        }       

        



    }
}