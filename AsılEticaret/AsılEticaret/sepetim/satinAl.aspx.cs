using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;

namespace AsılEticaret.sepetim
{
    public partial class satinAl : System.Web.UI.Page
    {

        SqlConnection baglan = new SqlConnection("Data Source=PıÇAAAK;Initial Catalog=pc;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage eposta = new MailMessage();
                eposta.From = new MailAddress("musabguneri@gmail.com");
                eposta.To.Add(txtMail.Text);
                eposta.Subject = "Kargo";
                eposta.Body = "Merhaba " + txtAdi.Text.ToString() + " " + txtSoyadi.Text.ToString() + "\n" + "Urununuz Kargolanmistir. En kisa surede teslim edilecektir.";

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);

                smtp.Credentials = new NetworkCredential("musabguneri@gmail.com", "137768141");

                smtp.EnableSsl = true;

                smtp.Send(eposta);

                

                baglan.Open();
                SqlCommand sepetim = baglan.CreateCommand();
                sepetim.CommandType = CommandType.Text;
                sepetim.CommandText = "delete from sepet from sepet inner join pc on sepet.pc_urun_id=pc.pc_id inner join kullanici_tablo on sepet.kullanici_id=" + Session["kullanici_id"];
                sepetim.ExecuteNonQuery();

                Response.Redirect("/kullanici/kullaniciSayfa.aspx");
               
                
                
                baglan.Close();
                Response.Write("<script>alert('Satın alma işlemi tamamlamıştır. Anasayfaya yönlendiriliyorsunuz.')</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
            }


           
        }

        
    }
}