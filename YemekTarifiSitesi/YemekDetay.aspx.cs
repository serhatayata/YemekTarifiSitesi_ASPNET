using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];
            SqlCommand komut = new SqlCommand($"Select YemekAd From Tbl_Yemekler where YemekID={yemekid}",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                lblYemekAd.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            //Yorumları listeleme

            SqlCommand komut2 = new SqlCommand($"Select * from Tbl_Yorumlar where YemekID={yemekid}",bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void btnYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,YorumIcerik,YemekID) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2",txtMail.Text);
            komut.Parameters.AddWithValue("@p3",txtYorum.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            temizle();
            lblYorumEklendi.Text = "Yorumunuz eklendi.";
        }
        void temizle()
        {
            txtAdSoyad.Text = "";
            txtMail.Text = "";
            txtYorum.Text = "";
            lblYorumEklendi.Text = "";
        }
    }
}