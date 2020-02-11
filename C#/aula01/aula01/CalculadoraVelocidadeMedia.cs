using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace aula01
{
    public partial class CalculadoraVelocidadeMédia : Form
    {
        public CalculadoraVelocidadeMédia()
        {
            InitializeComponent();
        }

        private void Label1_Click(object sender, EventArgs e)
        {
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            lbldist.Parent = picback; 
            lbldist.BackColor = Color.Transparent;
            
            lbltemp.Parent = picback;
            lbltemp.BackColor = Color.Transparent;

            lblvel.Parent = picback;
            lblvel.BackColor = Color.Transparent; 
        }

        private void Btcalc_Click(object sender, EventArgs e)
        {
            double v, d, t;

            d = Convert.ToDouble(txtdist.Text);
            t = Convert.ToDouble(txttemp.Text);

            v = d / t;

            txtvel.Text = Convert.ToString(v);
        }

        private void Btlimp_Click(object sender, EventArgs e)
        {
            txtdist.Text = ("");
            txtvel.Text = ("");
            txttemp.Text = ("");
        }

        private void Txtvel_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
