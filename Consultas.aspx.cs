using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avance_del_proyecto
{
    public partial class Consultas : System.Web.UI.Page
    {

        public String Conexion = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\USERS\\ZAIRA DAMAS\\SOURCE\\REPOS\\PROYECTO1\\PROYECTO1\\APP_DATA\\BASEREGISTROS.MDF;Integrated Security = True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection cnx = new SqlConnection(Conexion))
            {
                cnx.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Registros WHERE Id_Usuario = '" + txt_usuario.Text + "'", cnx);
               
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    txt_usuario.Text = "" + dr["Id_Usuario"];
                    txt_nombre.Text = "" + dr["Nom_Usuario"];
                    txt_apellido.Text = "" + dr["Ap_Usuario"];
                    txt_password.Text = "" + dr["Ps_Usuario"];
                    txt_fecha.Text = "" + dr["Fh_Usuario"];
                    txt_correo.Text = "" + dr["Co_Usuario"];
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext","alert_error_idusuario();", true);

                }

                cnx.Close();
            }
        }

        protected void btn_password_Click(object sender, EventArgs e)
        {

        }
        protected void lnkRedireccion1_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:55369/Reporte.aspx");
        }
        protected void lnkRedireccion2_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:55369/Modificar.aspx");
        }
    }
}               