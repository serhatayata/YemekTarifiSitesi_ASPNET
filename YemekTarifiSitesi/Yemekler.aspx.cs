using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class YemeklerDuzenle : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        string islem = "";
        string id = ""; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YemekID"];
                islem = Request.QueryString["islem"];

                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                dropDownKategoriler.DataTextField = "KategoriAd";
                dropDownKategoriler.DataValueField = "KategoriID";
                dropDownKategoriler.DataSource = dr2;
                dropDownKategoriler.DataBind();
            }
            Panel2.Visible = false;
            Panel4.Visible = false;
            //Yemek Listesi
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komut3 = new SqlCommand("Delete From Tbl_Yemekler where YemekID=@k1",bgl.baglanti());
                komut3.Parameters.AddWithValue("@k1",id);
                komut3.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
        }
        protected void btnEkle_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void btnCikar_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void btnEkle0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void btnCikar0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnYemekEkle_Click(object sender, EventArgs e)
        {
                SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriID) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", txtYemekAdEkle.Text);
                komut.Parameters.AddWithValue("@p2", txtYemekMalzemeler.Text);
                komut.Parameters.AddWithValue("@p3", txtTarif.Text);
                komut.Parameters.AddWithValue("@p4", dropDownKategoriler.SelectedValue);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();
              

            //Kategori Sayısını arttırma

            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriID=@k1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@k1", dropDownKategoriler.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            txtYemekAdEkle.Text = "";
            txtYemekMalzemeler.Text = "";
            txtTarif.Text = "";
        }
        }
    }
