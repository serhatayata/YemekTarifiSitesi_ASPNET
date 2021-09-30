using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSitesi
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
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
    }
}