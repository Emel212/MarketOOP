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
    public partial class KritikStokMiktari : Form
    {
        public KritikStokMiktari()
        {
            InitializeComponent();
        }

        private void KritikStokMiktari_Load(object sender, EventArgs e)
        {
            // TODO: Bu kod satırı 'MarketOOPDataSet4.prc_Urunler_KritikStokRaporu' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.prc_Urunler_KritikStokRaporuTableAdapter.Fill(this.MarketOOPDataSet4.prc_Urunler_KritikStokRaporu);

            this.reportViewer1.RefreshReport();
           
        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {

        }
    }
}
