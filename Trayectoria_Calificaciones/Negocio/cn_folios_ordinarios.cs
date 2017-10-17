using System;
using DAC;
using Entidades;

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
    }
}
