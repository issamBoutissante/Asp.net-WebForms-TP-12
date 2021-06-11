using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.net_WevForms_TP12
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ajouter_Click(object sender, EventArgs e)
        {
            Database.Execute(connection =>
            {
                new SqlCommand("insert into Stagiare values(@nom)", connection)
                {
                    Parameters =
                    {
                        new SqlParameter("@nom",NomStagiare.Text)
                    }
                }.ExecuteNonQuery();
            }, () =>
            {
                Message.Text = "Ajout Effectuee";
            });
        }
    }
}