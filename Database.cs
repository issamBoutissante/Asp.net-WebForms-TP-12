using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Asp.net_WevForms_TP12
{
    internal class Database
    {
        internal static string conString = ConfigurationManager.ConnectionStrings["MonConnection"].ConnectionString;
        //internal static SqlConnection Connection = new SqlConnection(conString);
        internal static void Execute(Action<SqlConnection> instrunctions,Action Success=null,Action Error=null)
        {
            SqlConnection Connection = new SqlConnection(conString);
            Connection.Open();
            try
            {
                instrunctions(Connection);
                Success?.Invoke();
            }catch(Exception e)
            {
                Error();
            }
            finally
            {
                Connection.Close();
            }
        }
    }
}