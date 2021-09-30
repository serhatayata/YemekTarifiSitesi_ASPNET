using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriID"];
            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler where KategoriID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtKategoriAd.Text = dr[1].ToString();
                    txtKategoriAdetDuzenle.Text = dr[2].ToString();
                }
                bgl.baglanti().Close();
            }

        }
        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@p1,kategoriAdet=@p2 where KategoriID=@p3",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtKategoriAd.Text);
            komut.Parameters.AddWithValue("@p2", txtKategoriAdetDuzenle.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}