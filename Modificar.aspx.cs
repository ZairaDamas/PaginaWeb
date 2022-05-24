using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1
{
    public partial class Modificar : System.Web.UI.Page
    {
        public String Conexion = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\USERS\\ZAIRA DAMAS\\SOURCE\\REPOS\\PROYECTO1\\PROYECTO1\\APP_DATA\\BASEREGISTROS.MDF;Integrated Security = True";

        protected void Page_Load(object sender, EventArgs e)
        {
            txt_usuario1.Focus();
        }

        protected void btn_consultar_Click(object sender, EventArgs e)
        {
            if (txt_usuario1.Text.Equals(""))
            {
                // Alerta
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_error_idusuario();", true);
            }
            else
            {
                using (SqlConnection cnx = new SqlConnection(Conexion))
                {
                    cnx.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Registros WHERE Id_Usuario = '" + txt_usuario1.Text + "'", cnx);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        txt_usuario1.Text = "" + dr["Id_Usuario"];
                        txt_nombre.Text = "" + dr["Nom_Usuario"];
                        txt_apellido.Text = "" + dr["Ap_Usuario"];
                        txt_fecha.Text = "" + dr["Fh_Usuario"];
                        txt_contraseña.Text = "" + dr["Ps_Usuario"];
                    }
                    else
                    {
                        // Alerta
                        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_registro_no_encontrado();", true);
                    }

                    cnx.Close();
                }
            }
        }

        protected void btn_editar_Click(object sender, EventArgs e)
        {
            if (txt_nombre.Text.Equals("") || txt_apellido.Text.Equals("") || txt_fecha.Text.Equals("") || txt_contraseña.Text.Equals(""))
            {

            }
            else
            {
                txt_usuario1.Enabled = false;
                txt_nombre.Enabled = true;
                txt_apellido.Enabled = true;
                txt_fecha.Enabled = true;
                txt_contraseña.Enabled = true;
            }
        }

        protected void btn_cancelar_Click(object sender, EventArgs e)
        {
            txt_usuario1.Enabled = true;
            txt_usuario1.Text = "";
            txt_nombre.Text = "";
            txt_apellido.Text = "";
            txt_fecha.Text = "";
            txt_nombre.Enabled = false;
            txt_apellido.Enabled = false;
            txt_fecha.Enabled = false;
            txt_contraseña.Enabled = true;
            txt_contraseña.Text = "";
            txt_usuario1.Focus();
        }

        protected void btn_actualizar_Click(object sender, EventArgs e)
        {
            SqlConnection sqlc1 = new SqlConnection(Conexion);
            SqlCommand cmd1 = sqlc1.CreateCommand();
            cmd1.CommandType = System.Data.CommandType.Text;
            cmd1.CommandText = "UPDATE Registros set Nom_Usuario = '" + txt_nombre.Text + "', Ap_Usuario = '" + txt_apellido.Text + "', Fh_Usuario = '"  + txt_fecha.Text + "', Ps_Usuario = '" + txt_contraseña.Text + "' WHERE Id_Usuario = '" + txt_usuario1.Text + "'";
            sqlc1.Open();
            cmd1.ExecuteNonQuery();
            sqlc1.Close();
            // Alerta
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_registro_actualizado();", true);
            txt_usuario1.Enabled = true;
            txt_usuario1.Text = "";
            txt_nombre.Text = "";
            txt_apellido.Text = "";
            txt_fecha.Text = "";
            txt_nombre.Enabled = false;
            txt_apellido.Enabled = false;
            txt_fecha.Enabled = false;
            txt_contraseña.Enabled = true;
            txt_contraseña.Text = "";
            txt_usuario1.Focus();
        }

        protected void txt_fecha_TextChanged(object sender, EventArgs e)
        {

        }
        protected void btn_eliminar_Click(object sender, EventArgs e)
        {
            SqlConnection sqlc1 = new SqlConnection(Conexion);
            sqlc1.Open();
            SqlCommand cmd1 = sqlc1.CreateCommand();
            cmd1.CommandType = System.Data.CommandType.Text;
            cmd1.CommandText = "DELETE FROM Registros WHERE Id_Usuario = '" + txt_usuario1.Text + "'";
            cmd1.ExecuteNonQuery();
            sqlc1.Close();
            //Alerta
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_registro_actualizado();", true);
            txt_usuario1.Enabled = true;
            txt_usuario1.Text = "";
            txt_nombre.Text = "";
            txt_apellido.Text = "";
            txt_fecha.Text = "";
            txt_nombre.Enabled = false;
            txt_apellido.Enabled = false;
            txt_fecha.Enabled = false;
            txt_contraseña.Text = "";
            txt_contraseña.Enabled = false;
            txt_usuario1.Focus();
        }
    }
}