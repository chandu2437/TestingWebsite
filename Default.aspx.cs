using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using common;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["DemoDatabase"].ToString());
    }
    protected void rdgender_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rdgender.SelectedValue == "0")
            gentpginfo.Visible = true; ladiespginfo.Visible = false; LoadGentsInfo();
        if (rdgender.SelectedValue=="1")
            gentpginfo.Visible = false; ladiespginfo.Visible = true; LoadLadiesInfo();
    }

    private void LoadGentsInfo()
    {
        string query = "select count(*) from Tenantinfo where gender=0";
        int count = Utils.getIntValue(query, con, new object[] { }, new object[] { });
        numbervacngents.Text = Convert.ToString(55 - count);
    }
    private void LoadLadiesInfo()
    {
        string query = "select count(*) from Tenantinfo where gender=1";
        int count = Utils.getIntValue(query, con, new object[] { }, new object[] { });
        numbervacngents.Text = Convert.ToString(34 - count);
    }
}