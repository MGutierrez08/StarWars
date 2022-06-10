using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaInterfaz
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Vista();
        }

        public void Vista()
        {
            CapaModelo.Maestro maestro = new CapaModelo.Maestro();
            CapaModelo.Result result = CapaNegocio.Informe.GetAll();
            maestro.Maestros = result.Objects;

            dataGridView1.Columns.Add("NombreCaballero", "NombreCaballero");
            dataGridView1.Columns.Add("Rango Maestro(SI/NO)", "Rango Maestro(SI/NO)");
            dataGridView1.Columns.Add("Sistema estelar de combate", "Sistema estelar de combate");
            int i = 0;

            foreach (CapaModelo.Maestro maestro1 in maestro.Maestros)
            {

                dataGridView1.Rows.Add();
                dataGridView1.Rows[i].Cells[0].Value = maestro1.OrdenJedi.Nombre;
                dataGridView1.Rows[i].Cells[1].Value = maestro1.Rango;
                dataGridView1.Rows[i].Cells[2].Value = maestro1.SistemaAmenazado.Sistema.Nombre;


                i++;
            }

        }
    }
}
