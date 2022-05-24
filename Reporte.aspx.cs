using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Proyecto1
{
    public partial class Reporte : System.Web.UI.Page
    {
        public String Conexion = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\USERS\\ZAIRA DAMAS\\SOURCE\\REPOS\\PROYECTO1\\PROYECTO1\\APP_DATA\\BASEREGISTROS.MDF;Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(Conexion))
            {
                DataTable dt = new DataTable();
                string query = "SELECT * FROM Registros";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataAdapter adap = new SqlDataAdapter(cmd);
                adap.Fill(dt);
                gv_all.DataSource = dt;
                gv_all.DataBind();
            }
        }
    }
        

    }