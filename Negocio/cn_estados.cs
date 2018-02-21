using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAC;
namespace Negocio
{
    public class cn_estados
    {
        DataClassesTrayectoriaDataContext contexto = null;
        //Listar todos los alumnos
        public List<Estado> ListarEstados()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.Estado
                            orderby m.nombre
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }
      
    }
}
