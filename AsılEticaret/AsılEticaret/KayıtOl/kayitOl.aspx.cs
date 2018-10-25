using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AsılEticaret.KayıtOl
{
    public partial class kayitOl : System.Web.UI.Page
    {

        SqlConnection baglan = new SqlConnection("Data Source=PıÇAAAK;Initial Catalog=pc;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Kaydet_Click(object sender, EventArgs e)
        {
            baglan.Open();            
            SqlCommand sorgula = new SqlCommand("select * from kullanici_tablo", baglan);
            sorgula.ExecuteNonQuery();
            SqlDataReader oku = sorgula.ExecuteReader();
            int dogru = 0;
             
            while(oku.Read())
            {
                if (TextMail.Text == oku["mail"].ToString().Trim() || TextK_adi.Text == oku["kullaniciadi"].ToString().Trim())
                {
                    dogru = 1;
                    Label1.Text = TextMail.Text;
                    Response.Write("<script>alert('Kullanıcı adı veya sifre zaten var.')</script>");
                    //baglan.Close();                    
                }                
            }
            baglan.Close();

            if (dogru == 0)
            {
                baglan.Open();
                SqlCommand komut = new SqlCommand("insert into kullanici_tablo(kullaniciadi,kullanicisifre,adi,soyadi,mail,telno,adres)values(@kullaniciadi,@kullanicisifre,@adi,@soyadi,@mail,@telno,@adres) ", baglan);
                komut.Parameters.Add("@kullaniciadi", TextK_adi.Text.ToString());
                komut.Parameters.Add("@kullanicisifre", TextK_sifre.Text.ToString());
                komut.Parameters.Add("@adi", TextAdi.Text.ToString());
                komut.Parameters.Add("@mail", TextMail.Text.ToString());
                komut.Parameters.Add("@soyadi", TextSoyadi.Text.ToString());
                komut.Parameters.Add("@telno", TextTelno.Text.ToString());
                komut.Parameters.Add("@adres", TextAdres.Text.ToString());
                komut.ExecuteNonQuery();
                baglan.Close();



            }

            baglan.Close();

        }

        protected void giriseDon_Click(object sender, EventArgs e)
        {
            Response.Redirect("/giris/giris.aspx");
        }
    }
}