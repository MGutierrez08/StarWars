using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaModelo
{
    public class SistemaAmenazado
    {
        public int IdSistemasAmenazados { get; set; }
        public CapaModelo.Sistema Sistema { get; set; }
        public bool Amenazado { get; set; }
    }
}
