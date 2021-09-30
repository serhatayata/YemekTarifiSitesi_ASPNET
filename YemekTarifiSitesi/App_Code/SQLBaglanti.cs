using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public class SQLBaglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-34G34T7\SQLEXPRESS01;Initial Catalog=YemekTarifiDB;Integrated Security=True");
            baglan.Open();
            return baglan;
        } 
    }
}