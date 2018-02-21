using DAC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio
{
    public class cn_materias
    {
        DataClassesTrayectoriaDataContext contexto = null;
        //Listar todos los alumnos
        public List<Materias> ListarMAterias()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.Materias
                            orderby m.idSemestre
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        public List<Materias> ListarMAteriasxCarrera(int carrera)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.Materias
                            orderby m.idSemestre
                            where m.idCarrera.Equals(carrera)
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
