using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SQLBaglanti bgl = new SQLBaglanti();
        protected void btnMesajGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (MesajGonderen,MesajBaslik,MesajMail,MesajIcerik) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtMesajAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", txtMesajKonu.Text);
            komut.Parameters.AddWithValue("@p3", txtMailAdresi.Text);
            komut.Parameters.AddWithValue("@p4", txtMesajIcerik.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            lblGonderildiMesaj.Text = "Mesajınız Gönderildi.";
            temizle();
        }
        void temizle()
        {
            txtMesajAdSoyad.Text = "";
            txtMailAdresi.Text = "";
            txtMesajKonu.Text = "";
            txtMesajIcerik.Text = "";
        }
    }
}