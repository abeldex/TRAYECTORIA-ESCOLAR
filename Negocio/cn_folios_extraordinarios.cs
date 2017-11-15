using System;
using DAC;
using Entidades;
using System.Collections.Generic;
using System.Linq;

namespace Negocio
{
    public class cn_folios_extraordinarios
    {
        DataClassesTrayectoriaDataContext contexto = null;

        //metodo para insertar un folio en la base de datos
        public int Insertar(e_folios_extraordinarios folio)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    return contexto.ins_folios_ext(folio.folio, folio.cohorte, folio.periodo, folio.grupo, folio.fecha, folio.carrera, folio.materia, folio.maestro, folio.tipo);
                }
            }
            catch (Exception error)
            {

                throw error;
            }
        }

        //metodo para listar los alumnos de los folios extraordinarios
        public List<ReprobadosFoliosOrdinarios> ListarFolios(int periodo, int grupo, int materia)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from fr in this.contexto.ReprobadosFoliosOrdinarios
                            where fr.periodo.Equals(periodo) && fr.grupo.Equals(grupo) && fr.materia.Equals(materia)
                            orderby fr.nombre
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
