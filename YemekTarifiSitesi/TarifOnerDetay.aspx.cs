using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where TarifID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtTarifAd.Text = dr[1].ToString();
                    txtTarifMalzemeler.Text = dr[2].ToString();
                    txtYapilis.Text = dr[3].ToString();
                    txtOneren.Text = dr[5].ToString();
                    txtOnerenMail.Text = dr[6].ToString();
                }
                bgl.baglanti().Close();
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            //Durum guncelleme
            SqlCommand komut = new SqlCommand("Update Tbl_Tarifler set TarifDurum=1 where TarifID=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği anasayfaya ekleme
            SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriID) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",txtTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2", txtTarifMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", txtYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori Adet arttırma.
            SqlCommand komut3 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet = KategoriAdet+1 where KategoriID=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
        }
    }
}