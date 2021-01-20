using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        string yemekid ="";

        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];
            SqlCommand komut = new SqlCommand("select yemekad from tbl_yemekler where yemekid=@p1",bgl.Baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dataReader = komut.ExecuteReader();
            while (dataReader.Read())
            {
                Label3.Text = dataReader[0].ToString();
            }
            bgl.Baglanti().Close();
        }

    }
}