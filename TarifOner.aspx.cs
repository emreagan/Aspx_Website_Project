using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Tarifler(TarifAd, TarifMalzeme, TarifYapilis,TarifResim, TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",bgl.Baglanti());
            komut.Parameters.AddWithValue("@t1", TxtAd.Text);
            komut.Parameters.AddWithValue("@t2", TxtMalzeme.Text);
            komut.Parameters.AddWithValue("@t3", TxtYapilis.Text);
            komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5", TxtGonderen.Text);
            komut.Parameters.AddWithValue("@t6", TxtMail.Text);
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
            Response.Write("Tarifiniz alındı.");
        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {

        }
    }
}