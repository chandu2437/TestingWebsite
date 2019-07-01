using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using common;

public partial class CreateUser : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["DemoDatabase"].ToString());
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string qry = "Insert into tenantinfo(Surname,Firstname,lastname,Age,DateofJoining,Occupation,permanentAddress,identificationtype,identificationnumber,AmountPaid,AdvancePaid,Gender) values" +
            "(@Surname,@Firstname,@Lastname,@Age,@DateofJoining,@Occupation,@PermanentAddress,@identificationtype,@identificationnumber,@AmountPaid,@AdvancePaid,@gender)";
        Utils.executeQuery(qry, con, new object[] { "@Surname", "@Firstname", "@Lastname", "@Age", "@DateofJoining", "@Occupation", "@PermanentAddress", "@identificationtype", "@identificationnumber", "@AmountPaid", "@AdvancePaid", "@gender" }, new object[] {
        Surnametb.Text,Firstnametb.Text,Lastnametb.Text,Agetb.Text,Dateofjoiningtb.Text,Occupationtb.Text,ddlIdentificationtype.SelectedValue,idntcatnnbrtb.Text,Rentpaidtb.Text,Advpaidtb.Text,genderrd.SelectedValue});
    }

    protected void ddlIdentificationtype_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlIdentificationtype.SelectedValue == "1")
            idntcatnnbrtb.TextMode = TextBoxMode.Number;
    }
}