using DAC;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio
{
    public class cn_preparatorias
    {
        DataClassesTrayectoriaDataContext contexto = null;
        public int Insertar(e_preparatoria prep)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    return contexto.insPreparatoria(prep.nombre, prep.regimen, prep.uas);
                }
            }
            catch (Exception error)
            {

                throw error;
            }
        }
        //listar todas las preparatorias que son de la UAS
        public List<Preparatorias> ListarUAS()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from c in this.contexto.Preparatorias
                            where c.UAS.Equals('S')
                            select c;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        //listar todas las preparatorias que son de la UAS
        public List<Preparatorias> ListarNoUAS()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from c in this.contexto.Preparatorias
                            where c.UAS.Equals('N')
                            select c;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        //listar el id de una preparatoria por su nombre
        public List<Preparatorias> GetPrepaID(string nombre)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from c in this.contexto.Preparatorias
                            where c.NombrePreparatoria.Equals(nombre)
                            select c;
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
