using System;
using DAC;
using Entidades;

namespace Negocio
{
    public class cn_calificaciones
    {
        DataClassesTrayectoriaDataContext contexto = null;

        //metodo para insertar un folio en la base de datos
        public int Insertar(e_calificaciones cal)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    return contexto.ins_calificacion(cal.folio, cal.cuenta, cal.nombre, cal.calificacion);
                }
            }
            catch (Exception error)
            {

                throw error;
            }
        }
    }
}
