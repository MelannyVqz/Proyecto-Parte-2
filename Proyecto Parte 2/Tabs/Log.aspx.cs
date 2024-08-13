using Proyecto_Parte_2.Datos;
using Proyecto_Parte_2.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Parte_2.Tabs
{
    public partial class Log : System.Web.UI.Page
    {
        Manejo_de_datos manejo_de_datos = new Manejo_de_datos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ingresar_click(object sender, EventArgs e)
        {
            Session["Cedula"] = cedulalog.Text;
            Dictionary<string,string> dic = new Dictionary<string,string>();
            dic.Add("Cedula",cedulalog.Text);
            dic.Add("Password",contralog.Text);
            manejo_de_datos.InsertarDato("log", dic);
            respuesta_log.Text = "Accion Exitosa";
            Response.Redirect("inicio.aspx");


        }

    }
}