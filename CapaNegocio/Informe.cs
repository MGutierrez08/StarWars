using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class Informe
    {
        public static CapaModelo.Result GetAll()
        {
            CapaModelo.Result result = new CapaModelo.Result();

            try
            {
                using (CapaDatos.RepublicaGalacticaEntities context = new CapaDatos.RepublicaGalacticaEntities())
                {

                    var query = context.Informe().ToList();

                    result.Objects = new List<object>();

                    if (query != null)
                    {
                        foreach (var obj in query)
                        {
                            CapaModelo.Maestro maestro = new CapaModelo.Maestro();
                            maestro.OrdenJedi = new CapaModelo.OrdenJedi();
                            maestro.OrdenJedi.Nombre = obj.NombreCaballero;
                            maestro.Rango = Convert.ToBoolean(obj.Rango);
                            
                            maestro.SistemaAmenazado = new CapaModelo.SistemaAmenazado();
                            maestro.SistemaAmenazado.Sistema = new CapaModelo.Sistema();
                            maestro.SistemaAmenazado.Sistema.Nombre = obj.NombreCombate;

                            result.Objects.Add(maestro);
                        }

                        result.Correct = true;
                    }
                    else
                    {
                        result.Correct = false;
                        result.ErrorMessage = "No se encontraron registros.";
                    }
                }
            }
            catch (Exception ex)
            {
                result.Correct = false;
                result.ErrorMessage = ex.Message;
            }

            return result;
        }
    }
}
