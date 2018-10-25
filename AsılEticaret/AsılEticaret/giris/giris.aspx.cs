using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace AsılEticaret
{
    public partial class giris : System.Web.UI.Page
    {

        SqlConnection baglan = new SqlConnection("Data Source=PıÇAAAK;Initial Catalog=pc;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uyeGiris_Click(object sender, EventArgs e)
        {
            try
            {
                baglan.Open();

                SqlCommand komut = new SqlCommand("select * from kullanici_tablo where kullaniciadi=@kullaniciadi and kullanicisifre=@kullanicisifre", baglan);
                komut.Parameters.Add("@kullaniciadi", textkul.Text.ToString().Trim());
                komut.Parameters.Add("@kullanicisifre", textsif.Text.ToString().Trim());

                SqlDataReader oku = komut.ExecuteReader();                

                if (oku.Read())
                {
                    string adi = oku["adi"].ToString();
                    string soyadi = oku["soyadi"].ToString();
                    Session.Add("kullanici_id",oku["kullanici_id"].ToString());
                    Session.Add("kullanici", adi+""+soyadi);
                    Response.Redirect("/kullanici/kullaniciSayfa.aspx");
                }

                baglan.Close();
                baglan.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
            }
        }

        protected void yoneticigiris_Click(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand komut = new SqlCommand("select * from admin where admin_kadi=@admin_kadi and admin_sifre=@admin_sifre", baglan);
            komut.Parameters.Add("@admin_kadi", textkul.Text.ToString().Trim());
            komut.Parameters.Add("@admin_sifre", textsif.Text.ToString().Trim());

            SqlDataReader oku = komut.ExecuteReader();

            if (oku.Read())
            {
                string adi = oku["admin_kadi"].ToString();

                Session.Add("admin_kadi", adi);
                Response.Redirect("/admin/araListele.aspx");
            }

            baglan.Close();

        }
    }
}