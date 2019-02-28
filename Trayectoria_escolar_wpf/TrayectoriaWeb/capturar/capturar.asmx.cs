using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace TrayectoriaWeb.capturar
{
    /// <summary>
    /// Summary description for capturar
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class capturar : System.Web.Services.WebService
    {

        [WebMethod]
        public void InsertCal(string folio, string cuenta, string nombre, string calificacion, string tipo)
        {
            try
            {
                string tabla_cal = "";
                if (tipo == "OR" || tipo == "CO")
                {
                    tabla_cal = "calificaciones3";
                }
                else
                {
                    tabla_cal = "cal_extras";
                }

                string constr = ConfigurationManager.ConnectionStrings["TRAYECTORIA_ESCOLARConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO " + tabla_cal + " VALUES (@folio, @cuenta, @nombre, @calificacion)"))
                    {
                        cmd.Parameters.AddWithValue("@folio", folio);
                        cmd.Parameters.AddWithValue("@cuenta", cuenta);
                        cmd.Parameters.AddWithValue("@nombre", nombre);
                        cmd.Parameters.AddWithValue("@calificacion", calificacion);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }

            }
            catch 
            {

            }
        }

        [WebMethod]
        public void InsertFolio(string folio, string cohorte, string periodo, string grupo, string fecha, string carrera, string materia, string maestro, string tipo)
        {
            try
            {
                string tabla = "";
                if (tipo == "OR" || tipo == "CO")
                {
                    tabla = "folios_ordinarios";
                }
                else
                {
                    tabla = "folios_extras";
                }
                    

                 string constr = ConfigurationManager.ConnectionStrings["TRAYECTORIA_ESCOLARConnectionString"].ConnectionString;
                 using (SqlConnection con = new SqlConnection(constr))
                 {
                     using (SqlCommand cmd = new SqlCommand("INSERT INTO "+tabla+ " VALUES (@folio, @cohorte, @periodo, @grupo, @fecha, @carrera, @materia, @maestro, @tipo)"))
                     {
                         cmd.Parameters.AddWithValue("@folio", folio);
                         cmd.Parameters.AddWithValue("@cohorte", cohorte);
                         cmd.Parameters.AddWithValue("@periodo", periodo);
                         cmd.Parameters.AddWithValue("@grupo", grupo);
                         cmd.Parameters.AddWithValue("@fecha", fecha);
                         cmd.Parameters.AddWithValue("@carrera", carrera);
                         cmd.Parameters.AddWithValue("@materia", materia);
                         cmd.Parameters.AddWithValue("@maestro", maestro);
                         cmd.Parameters.AddWithValue("@tipo", tipo);
                         cmd.Connection = con;
                         con.Open();
                         cmd.ExecuteNonQuery();
                         con.Close();
                     }

                 }
                Console.Write("Folio Registrado");
            }
            catch
            {
                Console.Write("No se pudo registrar el Folio");
            }
            
        }
    }
}
