using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.net_WevForms_TP12
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            var IdStg = GridView1.Rows[e.RowIndex].Cells[0].Text;
            var IdMat = GridView1.Rows[e.RowIndex].Cells[1].Text;
            Database.Execute(connection =>
            {
                new SqlCommand("update Note set Note=@note",connection)
                {
                    Parameters ={
                        new SqlParameter("@note",IdStg)
                    }
                }.ExecuteNonQuery();
            });

         


        }
    }
}