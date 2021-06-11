using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.net_WevForms_TP12
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Database.Execute(connection =>
            {
                int? result =new SqlCommand("select count(*) from loginInfo where [login]=@login;", connection)
                {
                    Parameters = {
                        new SqlParameter("@login",LoginText.Text)
                    }
                }.ExecuteScalar() as int?;
                if (result != 1)
                {
                    ErrorMessage.Text = "Login ou mot pass in inccorect";
                    return;
                }
                Response.Redirect("AjoutStagiare.aspx");
            });
        }
    }
}