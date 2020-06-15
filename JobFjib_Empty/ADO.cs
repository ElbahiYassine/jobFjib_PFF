using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace JobFjib_Empty
{
    public class ADO
    {
        public SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=dbjob;Integrated Security=True");
        public SqlCommand cmd;
        public SqlDataReader dr;
        public SqlDataAdapter da;
        public DataSet ds = new DataSet();


        public void Connecter()
        {
            if (con.State == ConnectionState.Closed || con.State == ConnectionState.Broken)
            {
                con.Open();
            }
        }

        public void Deconnecter()
        {
            if (con.State == ConnectionState.Open || con.State == ConnectionState.Broken)
            {
                con.Close();
            }
        }
    }
}