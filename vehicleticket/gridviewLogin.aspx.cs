using PT.DATAACCES;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vehicleticket
{
    public partial class gridviewLogin : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            //con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            //cmd.Connection = con;
            //cmd.CommandText = "select * from adminlogin";
            //con.Open();
            //RepeatInformation.DataSource = cmd.ExecuteReader();
            //RepeatInformation.DataBind();
            //con.Close();

            admin objad = new admin();
            

            RepeatInformation.DataSource = objad.GetUser();
            RepeatInformation.DataBind();

        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void RepeatInformation_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}