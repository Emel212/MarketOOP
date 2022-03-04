using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MarketOOP
{
    public partial class Tum_Urunler : Form
    {
        public Tum_Urunler()
        {
            InitializeComponent();
        }

        private void Tum_Urunler_Load(object sender, EventArgs e)
        {
            // TODO: Bu kod satırı 'MarketOOPDataSet1.prc_Urunler_Select' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.prc_Urunler_SelectTableAdapter.Fill(this.MarketOOPDataSet1.prc_Urunler_Select);

            this.reportViewer1.RefreshReport();
            this.reportViewer1.RefreshReport();
        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {

        }
    }
}
