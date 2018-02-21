using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class e_alumno
    {
        public string cuenta { get; set; }
        public string nombre { get; set; }
        public int id_grupo { get; set; }
        public int id_carrera { get; set; }
        public char sexo { get; set; }
        public byte[] imagen { get; set; }
        public DateTime fecha_ingreso { get; set; }
        public string turno { get; set; }
        public decimal promedio_prepa { get; set; }
        public decimal ceneval { get; set; }
        public int id_preparatoria { get; set; }
        public DateTime fecha_nacimiento { get; set; }
        public string telefono { get; set; }
        public string celular { get; set; }
        public string correo { get; set; }
        public string rfc { get; set; }
        public string curp { get; set; }
        public string seguro { get; set; }
        public string tipo_seguro { get; set; }
        public string lugar_origen { get; set; }
        public int id_municipio { get; set; }
        public string direccion { get; set; }
        public string tutor { get; set; }
        public string direccion_tutor { get; set; }
        public string telefono_tutor { get; set; }
        public int id_prepa { get; set; }
        public int id_semestre { get; set; }
        public float promedio { get; set; }
        public string cohorte { get; set; }
        public int desertor { get; set; }
        public int rezagado { get; set; }
        public int baja { get; set; }
        public string grupo_carrera { get; set; }
        public string titulado { get; set; }
        public string egresado { get; set; }
        public string eficiencia_titulacion { get; set; }
        public string servicio_social { get; set; }
        public string practicas { get; set; }
        public string msg { get; set; }
        //constructor
        public e_alumno()
        {
            this.msg = "";
        }
    }
    
}
