using System;
using DAC;
using Entidades;
using System.Collections.Generic;
using System.Linq;

namespace Negocio
{
    public class cn_alumnos
    {
        DataClassesTrayectoriaDataContext contexto = null;
        //Listar todos los alumnos
        public List<ViewAlumnos> ListarAlumnos()
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from c in this.contexto.ViewAlumnos
                            orderby c.Cohorte
                            select c;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        //Buscar alumno en especifico ya sea por numero de cuenta
        public List<ViewAlumnos> BuscarAlumno(string @cuenta)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from c in this.contexto.ViewAlumnos
                            orderby c.Cohorte descending
                            where c.CUENTA.Equals(cuenta)
                            select c;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        //Buscar alumno en especifico ya sea por numero de cuenta
        public List<ViewAlumnos> BuscarAlumnoCohorteGrupo(string cohorte, int grupo)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from c in this.contexto.ViewAlumnos
                            orderby c.Cohorte descending
                            where c.Cohorte.Equals(cohorte) && c.GRUPO.Equals(grupo)
                            select c;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        //Buscar alumno en especifico ya sea por numero de nombre
        public List<ViewAlumnos> BuscarAlumnoxNombre(string nombre)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from c in this.contexto.ViewAlumnos
                            orderby c.Cohorte descending
                            where c.NOMBRE.Contains(nombre)
                            select c;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        //Buscar alumno por cohorte y grupo
        public List<ViewAlumnos> BuscarAlumno_cohorte_grupo(string cohorte, int grupo)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from c in this.contexto.ViewAlumnos
                            orderby c.NOMBRE ascending
                            where c.Cohorte.Equals(cohorte) && c.GRUPO.Equals(grupo) //&& c.desertor.Equals(0) && c.baja.Equals(0)
                            select c;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        //Buscar alumno por cohorte y grupo
        public List<ViewAlumnos> BuscarAlumno_cohorte_carrera(string cohorte, int carrera, string grupo)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from c in this.contexto.ViewAlumnos
                            orderby c.NOMBRE ascending
                            where c.Cohorte.Equals(cohorte) && c.CARRERA.Equals(carrera) && c.GrupoCarrera.Equals(grupo)
                            select c;
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }

        //Buscar alumno por cohorte y grupo
        public List<folios_ordinarios> Obtener_estado_alumno(string cuenta)
        {
            try
            {
                using (this.contexto = new DataClassesTrayectoriaDataContext())
                {
                    var t = from c in this.contexto.folios_ordinarios
                            join f in this.contexto.calificaciones3 on c.folio equals f.folio 
                            where f.cuenta.Equals(cuenta) orderby c.folio descending
                            select c;

                  
                    return t.ToList();
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Error al Listar\n " + ex.Message);
            }
        }


        //Metodo para actualizar (editar) un registro
        public void Actualizar(string cuenta, string cuentanew, string nombre, int grupo, string turno, int semestre, string cohorte, int carrera)
        {
            using (contexto = new DataClassesTrayectoriaDataContext())
            {
                try
                {
                    contexto.EditAlumnoBasico(cuenta, cuentanew, nombre, grupo, turno, semestre, cohorte, carrera);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        //metodo para dar de baja
        public void Baja(string cuenta)
        {
            using (contexto = new DataClassesTrayectoriaDataContext())
            {
                try
                {
                    contexto.Baja(cuenta);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        //metodo para dar de baja
        public void Desertor(string cuenta)
        {
            using (contexto = new DataClassesTrayectoriaDataContext())
            {
                try
                {
                    contexto.Desertor(cuenta);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public void Insertar(e_alumno a)
        {
            using (contexto = new DataClassesTrayectoriaDataContext())
            {
                
                try
                {
                    contexto.insAlumno(a.cuenta, a.nombre, a.id_grupo, a.id_carrera, a.sexo, a.promedio_prepa,
                        a.ceneval, a.fecha_ingreso, a.turno, a.id_prepa, a.fecha_nacimiento, a.telefono, a.celular, a.correo, a.rfc,
                        a.curp, a.seguro, a.tipo_seguro, a.lugar_origen, a.id_municipio, a.direccion, a.tutor, a.direccion_tutor,
                        a.telefono_tutor, a.id_semestre, 0, a.cohorte);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        //metodo para dar de rezago
        public void Rezagado(string cuenta)
        {
            using (contexto = new DataClassesTrayectoriaDataContext())
            {
                try
                {
                    contexto.Rezago(cuenta);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public void MarcarEgresado(string cuenta)
        {
            using (contexto = new DataClassesTrayectoriaDataContext())
            {
                try
                {
                    contexto.Egresado(cuenta);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public void FechaEgreso(string cuenta, string fecha)
        {
            using (contexto = new DataClassesTrayectoriaDataContext())
            {
                try
                {
                    contexto.ins_egreso(cuenta,fecha);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public void Marcartitulado(string cuenta)
        {
            using (contexto = new DataClassesTrayectoriaDataContext())
            {
                try
                {
                    contexto.Titulado(cuenta);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public void MarcarEficienciaT(string cuenta)
        {
            using (contexto = new DataClassesTrayectoriaDataContext())
            {
                try
                {
                    contexto.EficienciaTitulacion(cuenta);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public void MarcarServicio(string cuenta)
        {
            using (contexto = new DataClassesTrayectoriaDataContext())
            {
                try
                {
                    contexto.ServicioSocial(cuenta);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public void MarcarPracticas(string cuenta)
        {
            using (contexto = new DataClassesTrayectoriaDataContext())
            {
                try
                {
                    contexto.PracticasProfesionales(cuenta);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
    }

   
}
