using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajID"];
            SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar where MesajID=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtMesajGonderen.Text = dr[1].ToString();
                txtMesajBaslik.Text = dr[2].ToString();
                txtMesajMail.Text = dr[3].ToString();
                txtMesajIcerik.Text = dr[4].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}