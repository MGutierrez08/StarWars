using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaModelo
{
    public class Maestro
    {
        public CapaModelo.OrdenJedi OrdenJedi { get; set; }
        public CapaModelo.SistemaAmenazado SistemaAmenazado { get; set; }
        public bool Rango { get; set; }
        public List<object> Maestros { get; set; }
        public string NombreCaballero { get; set; }
        public string Combate { get; set; }
    }
}
