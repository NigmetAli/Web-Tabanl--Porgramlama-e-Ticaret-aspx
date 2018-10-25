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
using System.Globalization;

namespace AsılEticaret.admin
{
    public partial class araListele : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection("Data Source=PıÇAAAK;Initial Catalog=pc;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {            
            try
            {
                baglan.Open();
                SqlCommand komut = new SqlCommand("select * from pc ", baglan);
                SqlDataAdapter da = new SqlDataAdapter(komut);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                baglan.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void ara_Click(object sender, EventArgs e)
        {
            baglan.Open();
            if (aratext.Text == "")
            {
                try
                {
                    SqlCommand komut = new SqlCommand("select * from pc ", baglan);
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                try
                {
                    SqlCommand komut = new SqlCommand("select * from pc where pc_id='" + aratext.Text.ToString() + "'", baglan);
                    SqlDataAdapter da = new SqlDataAdapter(komut);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count == 0)
                    {
                        Label1.Visible = true;
                        Label1.Text = "Aradığınız ürün bulunamadı...";
                    }
                    else
                        Label1.Visible = false;
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            baglan.Close();
        }
    }
}