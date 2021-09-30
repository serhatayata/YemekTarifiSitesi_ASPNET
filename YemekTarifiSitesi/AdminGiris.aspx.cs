using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class AdminGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblYanlisGiris.Visible = false;
        }
        SQLBaglanti bgl = new SQLBaglanti();
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            try
            {
                string girilenName = txtAdminName.Text;
                string girilenSifre = txtAdminSifre.Text;
                SqlCommand komut = new SqlCommand("Select * from Tbl_Yoneticiler where YoneticiAd=@p1 and YoneticiSifre=@p2", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", girilenName);
                komut.Parameters.AddWithValue("@p2", girilenSifre);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    if (dr[1].ToString() == girilenName && dr[2].ToString() == girilenSifre)
                    {
                        Response.Redirect("Admin.aspx");
                        lblYanlisGiris.Visible = false;
                    }
                }
            }
            catch
            {
                lblYanlisGiris.Visible = true;
                lblYanlisGiris.Text = "HATALI GİRİŞ !";
            }
            lblYanlisGiris.Visible = true;
            lblYanlisGiris.Text = "HATALI GİRİŞ !";
            bgl.baglanti().Close();
        }
    }
}