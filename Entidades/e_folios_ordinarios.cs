using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class e_folios_ordinarios
    {
        //PROPIEDADES DE LECTURA Y ESCRITURA
        public int folio { get; set; }
        public string cohorte { get; set; }
        public int periodo { get; set; }
        public int grupo { get; set; }
        public DateTime fecha { get; set; }
        public int carrera { get; set; }
        public int materia { get; set; }
        public int maestro { get; set; }
        public string tipo { get; set; }
        //constructor para guardar el tipo de folio (Ordinario, Extraordinario, Especial, Regularizacion)
        public e_folios_ordinarios(string _tipo)
        {
            tipo = _tipo;
        }
    }
}
