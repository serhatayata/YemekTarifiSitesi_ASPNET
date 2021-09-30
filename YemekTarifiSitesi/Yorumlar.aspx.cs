using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Onaylı Yorumlar
            Panel2.Visible = false;
            Panel4.Visible = false;
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=1",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            //Onaysız Yorumlar
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=0",bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }
        protected void btnOnaylananEkle_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;

        }
        protected void btnOnaylananCikart_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;

        }
        protected void btnOnaylanmayanEkle_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }
        protected void btnOnaylanmayanCikart_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;

        }
    }
}