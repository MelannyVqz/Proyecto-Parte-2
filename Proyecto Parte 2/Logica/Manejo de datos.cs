using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Proyecto_Parte_2.Logica
{
    public class Manejo_de_datos
    {
        public void InsertarDato(string tabla, Dictionary<string, string> datos)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection conexion = new SqlConnection(connectionString))
            {
                conexion.Open();

                string columnas = string.Join(", ", datos.Keys);
                string valores = string.Join(", ", datos.Keys.Select(k => "@" + k));

                string query = $"INSERT INTO {tabla} ({columnas}) VALUES ({valores})";

                using (SqlCommand comando = new SqlCommand(query, conexion))
                {
                    foreach (var dato in datos)
                    {
                        comando.Parameters.AddWithValue("@" + dato.Key, dato.Value);
                    }

                    comando.ExecuteNonQuery();
                }
            }
        }

        public void BorrarDato(string tabla, string columna, string dato)
        {
            if (dato != "")
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand($"DELETE {tabla} where {columna} = '{dato}'", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();

            }
        }

        public void LlenarGrid(string query, GridView grid)
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            grid.DataSource = dt;
                            grid.DataBind();
                        }
                    }
                }
            }
        }
        public void LlenarGridDesdeSP(string cedula, GridView grid)
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("ObtenerCedulas", con)) // Nombre del SP
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@cedula", cedula);

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            grid.DataSource = dt;
                            grid.DataBind();
                        }
                    }
                }
            }
        }

        public void LlenarDropDown(string query, DropDownList dropdown, string columna)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    dropdown.DataSource = reader;
                    dropdown.DataTextField = columna; 
                    dropdown.DataBind();
                }
            }
            dropdown.Items.Insert(0, new ListItem("Seleccione una opción", "0")); 
        }

       
    }
}