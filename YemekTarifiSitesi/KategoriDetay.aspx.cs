using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        string kategoriID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriID = Request.QueryString["KategoriID"];
            SqlCommand komut = new SqlCommand($"Select * from Tbl_Yemekler where KategoriID = {kategoriID}",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}