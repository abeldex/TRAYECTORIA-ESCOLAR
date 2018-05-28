using DAC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Negocio
{
    public class cn_reportes
    {
        DataClassesTrayectoriaDataContext contexto = null;
        //Listar todos los alumnos
        public List<IngresoGrupoSexo> GetIngresoGrupoSexo()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoGrupoSexo
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }
        public List<RezagadosGrupoSexo> GetRezagadoGrupoSexo()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.RezagadosGrupoSexo
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }
        public List<RezagadosGrupoCohorte> GetRezagadoGrupoCohorte()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.RezagadosGrupoCohorte
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }
        public List<DesercionGrupoSexo> GetDesercionGrupoSexo()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.DesercionGrupoSexo
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        public List<DesercionGrupoCohorte> GetDesercionCohorte()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.DesercionGrupoCohorte
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        public List<IngresoCarrera> GetIngresoCarreras()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoCarrera
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        public List<IngresoCenevalGrupo1> GetIngresoCenevalGpo1()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoCenevalGrupo1
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        public List<IngresoCenevalGrupo2> GetIngresoCenevalGpo2()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoCenevalGrupo2
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        public List<IngresoCenevalGrupo3> GetIngresoCenevalGpo3()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoCenevalGrupo3
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        public List<IngresoPromedioGrupo1> GetIngresoPromedioGpo1()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoPromedioGrupo1
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }
        public List<IngresoPromedioGrupo2> GetIngresoPromedioGpo2()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoPromedioGrupo2
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }
        public List<IngresoPromedioGrupo3> GetIngresoPromedioGpo3()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoPromedioGrupo3
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        public List<IngresoEdadGrupo1> GetIngresoEdadGpo1()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoEdadGrupo1
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }
        public List<IngresoEdadGrupo2> GetIngresoEdadGpo2()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoEdadGrupo2
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }
        public List<IngresoEdadGrupo3> GetIngresoEdadGpo3()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoEdadGrupo3
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        public List<IngresoLugarProcedenciaGrupo1> GetIngresoProcedenciaGpo1()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoLugarProcedenciaGrupo1
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }


        public List<IngresoLugarProcedenciaGrupo2> GetIngresoProcedenciaGpo2()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoLugarProcedenciaGrupo2
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }


        public List<IngresoLugarProcedenciaGrupo3> GetIngresoProcedenciaGpo3()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoLugarProcedenciaGrupo3
                            select m;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }


        public List<IngresoInstitucionEducativa> GetIngresoInstitucionEducativa()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from m in this.contexto.IngresoInstitucionEducativa
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
