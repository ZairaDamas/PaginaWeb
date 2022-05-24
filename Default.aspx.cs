using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Transitions;

namespace Proyecto1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Transition t = new Transition(new TransitionType_EaseInEaseOut(500));
            //t.add(Image1, "Left", 300);
            //t.add(Image2, "Left", 300);

            //t.run();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        protected void lnkRedireccion_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:55369/estilodevida");
        }
        protected void lnkRedireccion1_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:55369/Nutricion.aspx");
        }
        protected void lnkRedireccion2_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:55369/Belleza.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}