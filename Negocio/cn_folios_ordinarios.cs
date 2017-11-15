using System;
using DAC;
using Entidades;
using System.Collections.Generic;
using System.Linq;

namespace Negocio
{
    public class cn_folios_ordinarios
    {
        DataClassesTrayectoriaDataContext contexto = null;

        //metodo para insertar un folio en la base de datos
        public int Insertar(e_folios_ordinarios folio)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    return contexto.ins_folios_ord(folio.folio, folio.cohorte, folio.periodo, folio.grupo, folio.fecha, folio.carrera, folio.materia, folio.maestro, folio.tipo);
                }
            }
            catch (Exception error)
            {

                throw error;
            }
        }

        //metodo para listar los alumnos de los folios extraordinarios
        public List<VFolios_ordinarios> ListarFolios(string cohorte)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from fr in this.contexto.VFolios_ordinarios
                            where fr.COHORTE.Equals(cohorte)
                            orderby fr.FOLIO
                            select fr;
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
