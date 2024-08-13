using Proyecto_Parte_2.Logica;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Parte_2.Tabs
{
    public partial class Resumen_Matricula : System.Web.UI.Page
    {
 


        Manejo_de_datos manejodatos = new Manejo_de_datos();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cedula = Session["Cedula"] as string;
            string query = $"select * from Respuesta where Cedula = '{cedula}'";
            manejodatos.LlenarGrid(query, GridViewresumen);


        }
        protected void Finale(object sender, EventArgs e)
        {
            Response.Redirect("Log.aspx");

        }
        //BOTON QUE LLAMA A LA ACCION DE ELIMINAR 
        protected void BBORRAR_Click(object sender, EventArgs e)
        {
            manejodatos.BorrarDato("Respuesta", "Cedula", TCEDULA.Text);
            Response.Redirect("Resumen Matricula.aspx");
        }
    }
        
    
    
}