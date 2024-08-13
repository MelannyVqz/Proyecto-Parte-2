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
    public partial class Matricula : System.Web.UI.Page
    {
        Manejo_de_datos manejo_de_datos = new Manejo_de_datos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            string queryidiomas = "select distinct Idioma from Matricu";
            manejo_de_datos.LlenarDropDown(queryidiomas, idiomasdrop,"Idioma");
            string querycurso = "select distinct Curso from Matricu";
            manejo_de_datos.LlenarDropDown(querycurso, cursodrop, "Curso");
            }
        }
        protected void matricular_click(object sender, EventArgs e)
        {
            string cedula = Session["Cedula"] as string;
            string idioma_escogido = idiomasdrop.SelectedItem.Text;
            respuesta_log.Text = "<br/><strong style='color:black;'>Acción Exitosa</strong>";
            Dictionary<string, string> dic = new Dictionary<string, string>();
            dic.Add("Cedula", cedula);
            dic.Add("Idioma", idiomasdrop.Text);
            dic.Add("Curso", cursodrop.Text);
            manejo_de_datos.InsertarDato("Respuesta", dic);

            respuesta_log.Text = "Accion Exitosa";
            Response.Redirect("Pagos.aspx");

            Response.AddHeader("REFRESH", "3;URL=pagos.aspx");

        }
    }
    
}