using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;

namespace AsılEticaret.sepetim
{
    public partial class sepetim : System.Web.UI.Page
    {

        SqlConnection baglan = new SqlConnection("Data Source=PıÇAAAK;Initial Catalog=pc;Integrated Security=True");

        string sil = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            sil=Request.QueryString["sil"];
            islem=Request.QueryString["islem"];
            



            if (islem == "sil")
            {                
                baglan.Open();
                SqlCommand sepetsil = baglan.CreateCommand();
                sepetsil.CommandType = CommandType.Text;
                sepetsil.CommandText = "delete from sepet where sepet_id='"+Int32.Parse(sil)+"'";

                sepetsil.ExecuteNonQuery();

                baglan.Close();
            }

            baglan.Open();
            SqlCommand sepetim = baglan.CreateCommand();
            sepetim.CommandType = CommandType.Text;
            sepetim.CommandText = "select * from pc,sepet where pc.pc_id = sepet.pc_urun_id and sepet.kullanici_id ='"+Session["kullanici_id"] +"'";
            DataTable dataTablosu = new DataTable();
            
            SqlDataAdapter da = new SqlDataAdapter(sepetim);
            da.Fill(dataTablosu);

            if (dataTablosu.Rows.Count == 0)
            {
                lblurunadet.Visible = false;
                lblurunfiyat.Visible = false;
                lblurunoz.Visible = false;
                Button1.Visible = false;
                Label3.Visible = true;
                Label3.Text = "Henüz sepetinizde ürün bulunmamaktadır...";
                Label1.Visible = false;
                lblToplamFiyat.Visible = false;
                Label2.Visible = false;
            }
            else
            {
                lblurunadet.Visible = true;
                lblurunfiyat.Visible = true;
                lblurunoz.Visible = true;
                Label1.Visible = true;
                lblToplamFiyat.Visible = true;
                Label2.Visible = true;

                sepettekiler.DataSource = dataTablosu;
                sepettekiler.DataBind();

                SqlDataReader oku = sepetim.ExecuteReader();
                double toplamFiyat = 0;
                while (oku.Read())
                {
                    toplamFiyat += Double.Parse(oku["adet"].ToString()) * Double.Parse(oku["fiyati"].ToString());
                }
                lblToplamFiyat.Text = toplamFiyat.ToString();
               
            }
            baglan.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/sepetim/satinAl.aspx");
        }
    }
}