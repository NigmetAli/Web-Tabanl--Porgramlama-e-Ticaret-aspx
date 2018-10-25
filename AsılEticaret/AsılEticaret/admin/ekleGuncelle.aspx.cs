using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Drawing;


namespace AsılEticaret.admin
{
    public partial class ekleGuncelle : System.Web.UI.Page
    {

        SqlConnection baglan = new SqlConnection("Data Source=PıÇAAAK;Initial Catalog=pc;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Clear();
                baglan.Open();
                SqlCommand komut = new SqlCommand("select * from pc", baglan);
                SqlDataReader oku = komut.ExecuteReader();


                while (oku.Read())
                {
                    DropDownList1.Items.Add(oku["pc_id"].ToString());
                }

                baglan.Close();
            }
        }

        string resimadi = "";
        string uzanti = "";

        protected void Ekle_Click(object sender, EventArgs e)
        {

            try
            {

                if (fuResim.HasFile)
                {
                    uzanti = Path.GetExtension(fuResim.PostedFile.FileName);
                    resimadi = (textMarka.Text) + "_urunresim_" + DateTime.Now.Day + uzanti;
                    fuResim.SaveAs(Server.MapPath("/Resimler/sahte" + uzanti));

                    int Donusturme = 640;

                    Bitmap bmp = new Bitmap(Server.MapPath("/Resimler/sahte" + uzanti));
                    using (Bitmap OrjinalResim = bmp)
                    {
                        double ResYukseklik = OrjinalResim.Height;
                        double ResGenislik = OrjinalResim.Width;
                        double oran = 0;

                        if (ResGenislik >= Donusturme)
                        {
                            oran = ResGenislik / ResYukseklik;
                            ResGenislik = Donusturme;
                            ResYukseklik = Donusturme / oran;

                            Size yenidegerler = new Size(Convert.ToInt32(ResGenislik), Convert.ToInt32(ResYukseklik));
                            Bitmap yeniresim = new Bitmap(OrjinalResim, yenidegerler);
                            yeniresim.Save(Server.MapPath("/Resimler/" + resimadi));

                            yeniresim.Dispose();
                            OrjinalResim.Dispose();
                            bmp.Dispose();
                        }

                        else
                        {
                            fuResim.SaveAs(Server.MapPath("/Resimler/" + resimadi));
                        }
                    }
                    FileInfo figecici = new FileInfo(Server.MapPath("~/Resimler/sahte" + uzanti));
                    figecici.Delete();
                }

                baglan.Open();

                SqlCommand komut = new SqlCommand("insert into pc(marka,model,islemci,islemci_hizi,ram,onbellek,e_karti,e_k_boyutu,hdd,ekran_boyutu,fiyati,goruntu)values(@marka,@model,@islemci,@islemci_hizi,@ram,@onbellek,@e_karti,@e_k_boyutu,@hdd,@ekran_boyutu,@fiyati,@goruntu)", baglan);
                komut.Parameters.AddWithValue("@marka", textMarka.Text.ToString().Trim());
                komut.Parameters.AddWithValue("@model", textModel.Text.ToString().Trim());
                komut.Parameters.AddWithValue("@islemci", textİslemci.Text.ToString().Trim());
                komut.Parameters.AddWithValue("@islemci_hizi", textİslemcihizi.Text.ToString().Trim());
                komut.Parameters.AddWithValue("@ram", textRam.Text.ToString().Trim());
                komut.Parameters.AddWithValue("@onbellek", textcache.Text.ToString().Trim());
                komut.Parameters.AddWithValue("@e_karti", textE_karti.Text.ToString().Trim());
                komut.Parameters.AddWithValue("@e_k_boyutu", textE_karti_kapasitesi.Text.ToString().Trim());
                komut.Parameters.AddWithValue("@hdd", textHdd.Text.ToString().Trim());
                komut.Parameters.AddWithValue("@ekran_boyutu", textEkran_boyutu.Text.ToString().Trim());
                komut.Parameters.AddWithValue("@fiyati", textFiyati.Text.ToString().Trim());
                komut.Parameters.AddWithValue("@goruntu", resimadi);


                komut.ExecuteNonQuery();
                baglan.Close();



            }
            catch (Exception hata)
            {
                Response.Write(hata.Message.ToString());
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Write(DropDownList1.SelectedItem.Text);
            baglan.Open();
            SqlCommand komut = new SqlCommand("select * from pc where pc_id='" + DropDownList1.SelectedItem.Text + "'", baglan);
            SqlDataReader oku = komut.ExecuteReader();

            while (oku.Read())
            {
                textMarka.Text = oku["marka"].ToString();
                textModel.Text = oku["model"].ToString();
                textİslemci.Text = oku["islemci"].ToString();
                textİslemcihizi.Text = oku["islemci_hizi"].ToString();
                textRam.Text = oku["ram"].ToString();
                textcache.Text = oku["onbellek"].ToString();
                textE_karti.Text = oku["e_karti"].ToString();
                textE_karti_kapasitesi.Text = oku["e_k_boyutu"].ToString();
                textHdd.Text = oku["hdd"].ToString();
                textEkran_boyutu.Text = oku["ekran_boyutu"].ToString();
                textFiyati.Text = oku["fiyati"].ToString();
                Image1.ImageUrl = "/Resimler/" + oku["goruntu"].ToString();
            }

            baglan.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (fuResim.HasFile)
            {
                uzanti = Path.GetExtension(fuResim.PostedFile.FileName);
                resimadi = (textMarka.Text) + "_urunresim_" + DateTime.Now.Day + uzanti;
                fuResim.SaveAs(Server.MapPath("/Resimler/sahte" + uzanti));

                int Donusturme = 640;

                Bitmap bmp = new Bitmap(Server.MapPath("/Resimler/sahte" + uzanti));
                using (Bitmap OrjinalResim = bmp)
                {
                    double ResYukseklik = OrjinalResim.Height;
                    double ResGenislik = OrjinalResim.Width;
                    double oran = 0;

                    if (ResGenislik >= Donusturme)
                    {
                        oran = ResGenislik / ResYukseklik;
                        ResGenislik = Donusturme;
                        ResYukseklik = Donusturme / oran;

                        Size yenidegerler = new Size(Convert.ToInt32(ResGenislik), Convert.ToInt32(ResYukseklik));
                        Bitmap yeniresim = new Bitmap(OrjinalResim, yenidegerler);
                        yeniresim.Save(Server.MapPath("/Resimler/" + resimadi));

                        yeniresim.Dispose();
                        OrjinalResim.Dispose();
                        bmp.Dispose();
                    }

                    else
                    {
                        fuResim.SaveAs(Server.MapPath("/Resimler/" + resimadi));
                    }
                }
                FileInfo figecici = new FileInfo(Server.MapPath("~/Resimler/sahte" + uzanti));
                figecici.Delete();
            }

            baglan.Open();
            SqlCommand komut = new SqlCommand("Update pc set marka = @marka, model = @model , islemci = @islemci , islemci_hizi = @islemci_hizi, ram = @ram , onbellek = @onbellek , e_karti = @e_karti , e_k_boyutu = @e_k_boyutu , hdd = @hdd , ekran_boyutu = @ekran_boyutu , fiyati = @fiyati , goruntu = @goruntu  where pc_id = '" + DropDownList1.Text.ToString().Trim() + "'", baglan);

            komut.Parameters.AddWithValue("@marka", textMarka.Text.ToString().Trim());
            komut.Parameters.AddWithValue("@model", textModel.Text.ToString().Trim());
            komut.Parameters.AddWithValue("@islemci", textİslemci.Text.ToString().Trim());
            komut.Parameters.AddWithValue("@islemci_hizi", textİslemcihizi.Text.ToString().Trim());
            komut.Parameters.AddWithValue("@ram", textRam.Text.ToString().Trim());
            komut.Parameters.AddWithValue("@onbellek", textcache.Text.ToString().Trim());
            komut.Parameters.AddWithValue("@e_karti", textE_karti.Text.ToString().Trim());
            komut.Parameters.AddWithValue("@e_k_boyutu", textE_karti_kapasitesi.Text.ToString().Trim());
            komut.Parameters.AddWithValue("@hdd", textHdd.Text.ToString().Trim());
            komut.Parameters.AddWithValue("@ekran_boyutu", textEkran_boyutu.Text.ToString().Trim());
            komut.Parameters.AddWithValue("@fiyati", textFiyati.Text.ToString().Trim());
            komut.Parameters.AddWithValue("@goruntu", resimadi);

            komut.ExecuteNonQuery();
            baglan.Close();
        }
    }
}