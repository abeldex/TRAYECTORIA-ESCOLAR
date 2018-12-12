using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace TrayectoriaWeb
{
    /// <summary>
    /// Summary description for InsertarCalificaciones
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class InsertarCalificaciones : System.Web.Services.WebService
    {

        [WebMethod]
        public void Insert(int folio, string cuenta, string nombre, float calificacion)
        {
            try
            {
                e_calificaciones cal = new e_calificaciones
                {
                    folio = folio,
                    cuenta = cuenta,
                    nombre = nombre,
                    calificacion = calificacion
                };
                new cn_calificaciones().Insertar(cal);
                Console.Write("Calificacion Registrada");
            }
            catch
            {
                Console.Write("No se pudo registrar la calificacion");
            }
            /*string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Customers (Name, Country) VALUES (@Name, @Country)"))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Country", country);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }*/
        }
    }
}
