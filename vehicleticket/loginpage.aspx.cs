using PT.DATAACCES;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vehicleticket
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

                string adminuser = username.Text;
                string userpass = password.Text;

                admin dAusers = new admin();


                bool exist = dAusers.Authenticateuser(adminuser, userpass, out string validationmessage);
                if (exist)
                {
                    Session["usersname"] = username;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    errorlable.Text = validationmessage;
                }
            }

            protected void password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}