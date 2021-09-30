using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Hakkimizda", bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtHakkimizda.Text = dr[0].ToString();
                }
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

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Hakkimizda set Metin=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtHakkimizda.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}