using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avance_del_proyecto
{
    public partial class Login : System.Web.UI.Page
    {
        public String Conexion = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\USERS\\ZAIRA DAMAS\\SOURCE\\REPOS\\PROYECTO1\\PROYECTO1\\APP_DATA\\BASEREGISTROS.MDF;Integrated Security = True";

        public void Limpiar()
        {
            txt_nombre.Text = "";
            txt_apellido.Text = "";
            txt_fecha.Text = "";
            txt_correo.Text = "";
            txt_usuario.Text = "";
            txt_password.Text = "";
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt_nombre.Text.Equals(""))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_error_idnombre();", true);
            }
            else
            {
                if (txt_apellido.Text.Equals(""))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_error_idapellido();", true);
                }
                else
                {
                    if (txt_fecha.Text.Equals(""))
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_error_idfecha();", true);
                    }
                    else
                    {
                        if (txt_correo.Text.Equals(""))
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_error_idcorreo();", true);
                        }
                        else
                        {
                            if (txt_usuario.Text.Equals(""))
                            {
                                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_error_idusuario();", true);
                            }
                            else
                            {
                                if (txt_password.Text.Equals(""))
                                {
                                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_error_idpassword();", true);
                                }
                                else
                                {
                                    System.Data.SqlClient.SqlConnection cnx = new System.Data.SqlClient.SqlConnection(Conexion);
                                    System.Data.SqlClient.SqlCommand cmd = cnx.CreateCommand();
                                    cmd.CommandType = System.Data.CommandType.Text;
                                    cmd.CommandText = "INSERT INTO Registros (Id_Usuario,Nom_Usuario,Ap_Usuario,Fh_Usuario,Co_Usuario,Ps_Usuario) VALUES ('" + txt_usuario.Text + "', '" + txt_nombre.Text + "','" + txt_apellido.Text + "','" + txt_fecha.Text + "','" + txt_correo.Text + "','" + txt_password.Text + "')";
									cnx.Open();
                                    cmd.ExecuteNonQuery();
                                    cnx.Close();

                                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alert_registrar();", true);
                                    Limpiar();
                                }
                            }
                        }
                    }
                }
            }
        }

        protected void txt_fecha_TextChanged(object sender, EventArgs e)
        {

        }
    }
}