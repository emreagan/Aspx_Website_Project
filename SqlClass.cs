using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    public class SqlClass 
    {
        public SqlConnection Baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"server=(localdb)\mssqllocaldb;initial catalog=Dbo_yemektarifi;integrated security=true");
            baglan.Open();
            return baglan;
        }
        
    }
}