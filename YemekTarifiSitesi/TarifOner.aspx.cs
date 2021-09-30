using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class TarifOner1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SQLBaglanti bgl = new SQLBaglanti();
        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
                    SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@p1,@p2,@p3,@p4,@p5,@p6)", bgl.baglanti());
                    komut.Parameters.AddWithValue("@p1", txtTarifAd.Text);
                    komut.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
                    komut.Parameters.AddWithValue("@p3", txtYapilis.Text);
                    komut.Parameters.AddWithValue("@p4", fileUploadResim.FileName);
                    komut.Parameters.AddWithValue("@p5", txtTarifOneren.Text);
                    komut.Parameters.AddWithValue("@p6", txtMail.Text);
                    komut.ExecuteNonQuery();
                    bgl.baglanti().Close();

                    txtTarifAd.Text = "";
                    txtMalzemeler.Text = "";
                    txtMail.Text = "";
                    txtYapilis.Text = "";
                    txtTarifOneren.Text = "";
        }
    }
}