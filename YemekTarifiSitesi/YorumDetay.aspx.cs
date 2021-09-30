using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd from Tbl_Yorumlar yr inner join Tbl_Yemekler ym on yr.YemekID=ym.YemekID where yr.YorumID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtYorumAdSoyad.Text = dr[0].ToString();
                    txtYorumMail.Text = dr[1].ToString();
                    txtYorumIcerik.Text = dr[2].ToString();
                    txtYorumYemek.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }
        }
        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set YorumIcerik=@p1,YorumOnay=@p2 where YorumID=@p3",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtYorumIcerik.Text);
            komut.Parameters.AddWithValue("@p2","True");
            komut.Parameters.AddWithValue("@p3",id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}