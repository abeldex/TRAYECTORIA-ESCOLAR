using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAC;

namespace Negocio
{
    public class cn_municipio
    {


        DataClassesTrayectoriaDataContext contexto = null;
        public List<Municipio> ListarMunicipios(int id)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.Municipio
                            where m.estado.Equals(id)
                            orderby m.nombre_municipio
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
