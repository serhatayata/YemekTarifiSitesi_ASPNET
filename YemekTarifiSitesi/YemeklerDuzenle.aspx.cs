using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class YemeklerDuzenle1 : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where YemekID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtYemekAdDuzenle.Text = dr[1].ToString();
                    txtMalzemelerDuzenle.Text = dr[2].ToString();
                    txtTarifDuzenle.Text = dr[3].ToString();
                    dropDownKategoriler.SelectedIndex = (int)dr[7]-1;
                }
                bgl.baglanti().Close();
            }

            //DropdownList 
            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                dropDownKategoriler.DataTextField = "KategoriAd";
                dropDownKategoriler.DataValueField = "KategoriID";
                dropDownKategoriler.DataSource = dr2;
                dropDownKategoriler.DataBind();
            }
        }

        protected void btnYemekDuzenle_Click(object sender, EventArgs e)
        {
                FileUpload1.SaveAs(Server.MapPath("/img/"+FileUpload1.FileName));
                SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,KategoriID=@p4, YemekResim=@p5 where YemekID=@p6", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", txtYemekAdDuzenle.Text);
                komut.Parameters.AddWithValue("@p2", txtMalzemelerDuzenle.Text);
                komut.Parameters.AddWithValue("@p3", txtTarifDuzenle.Text);
                komut.Parameters.AddWithValue("@p4", dropDownKategoriler.SelectedValue);
                komut.Parameters.AddWithValue("@p5", "~/img/"+FileUpload1.FileName);
                komut.Parameters.AddWithValue("@p6", id);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();
        }
        protected void btnGununYemegiSec(object sender, EventArgs e)
        {
            //Tüm yemeklerin durumunu false yaparız.
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set Durum=0",bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            //Günün yemeği belirleme
            SqlCommand komut2 = new SqlCommand("Update Tbl_Yemekler set Durum=1 where YemekID=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}