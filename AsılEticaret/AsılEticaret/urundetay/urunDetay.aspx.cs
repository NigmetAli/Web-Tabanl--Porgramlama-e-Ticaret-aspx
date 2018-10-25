using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;

namespace AsılEticaret.urundetay
{
    public partial class urunDetay : System.Web.UI.Page
    {

        SqlConnection orklenti = new SqlConnection("Data Source=PıÇAAAK;Initial Catalog=pc;Integrated Security=True");

        string pcid = "";
        

        protected void Page_Load(object sender, EventArgs e)
        {

            TextBox arann = this.Master.FindControl("TextBox1") as TextBox;

            genelDegiskenler.aranan = arann.Text;

            pcid=Request.QueryString["detay"];

            orklenti.Open();

            SqlCommand komut = new SqlCommand("select * from pc where pc_id='" + pcid + "'",orklenti);

            SqlDataReader oku = komut.ExecuteReader();
           

            if (oku.Read())
            {
                Image1.ImageUrl ="/Resimler/"+oku["goruntu"].ToString();
                labelfiyat.Text=oku["fiyati"].ToString();
                lblmarka.Text=oku["marka"].ToString();
                lblmodel.Text=oku["model"].ToString();
                lblislemci.Text=oku["islemci"].ToString();
                lblhdd.Text=oku["hdd"].ToString();
                lblekrankartiboyut.Text=oku["e_k_boyutu"].ToString();
                lblekrankarti.Text=oku["e_karti"].ToString();
                lblekranboyutu.Text=oku["ekran_boyutu"].ToString();
                lblonbellek.Text=oku["onbellek"].ToString();
                lblram.Text=oku["ram"].ToString();
                lblislemcihizi.Text=oku["islemci_hizi"].ToString();  
            }
            orklenti.Close();
        }

        protected void sepeteEkle_Click(object sender, EventArgs e)
        {
            
            pcid = Request.QueryString["detay"];

            
               int adet = Convert.ToInt32(textAdet.Text);
            if (textAdet.Text != null && adet>0)
            {
                orklenti.Open();

                SqlCommand sepeteEkle = new SqlCommand("insert into sepet(pc_urun_id,kullanici_id,adet) values(@pc_urun_id,@kullanici_id,@adet)", orklenti);

                sepeteEkle.Parameters.Add("@pc_urun_id", pcid);
                sepeteEkle.Parameters.Add("@kullanici_id", Session["kullanici_id"].ToString());
                sepeteEkle.Parameters.Add("@adet", textAdet.Text);

                sepeteEkle.ExecuteNonQuery();
                Response.Write("<script> alert(' Sepete barıyla eklenmiştir.') </script>");

                textAdet.Text = "";

                orklenti.Close();
            }
            else
                Response.Write("<script> alert ('Ürün adedi geçerli değil!!!')</script>");
            
        }
    }
}