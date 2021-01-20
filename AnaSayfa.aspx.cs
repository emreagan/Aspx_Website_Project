using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Yemek_Tarifi
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlClass bgl = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", bgl.Baglanti());
            SqlDataReader datareader = komut.ExecuteReader();
            DataList2.DataSource = datareader;
            DataList2.DataBind();
        }
    }
}