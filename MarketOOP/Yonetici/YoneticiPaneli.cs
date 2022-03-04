using Mimari.ORM.Facade;
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
    public partial class YoneticiPaneli : Form
    {
        public YoneticiPaneli()
        {
            InitializeComponent();
        }

        private void YoneticiPaneli_Load(object sender, EventArgs e)
        {
            if(PersonelORM.AktifKullanici!=null)
                toolStripTextBox1.Text ="     " +(PersonelORM.AktifKullanici.Adi +" "+ PersonelORM.AktifKullanici.Soyadi).ToUpper();

        
            
        }
        //Form1 urunKart = new Form1();
        private void toolStripButton13_Click(object sender, EventArgs e)
        {
          
            Tools.FormTools.OpenForm<Form1>();
           
            /* if (urunKart.IsDisposed)
                  urunKart = new Form1();
                  urunKart.MdiParent = this;
                  urunKart.Show();
              urunKart.WindowState = FormWindowState.Maximized;*/



        }
       
        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            Tools.FormTools.OpenForm<Personel_Ekle>();
           
        }
       
        private void toolStripButton9_Click(object sender, EventArgs e)
        {
            Tools.FormTools.OpenForm<VeresiyeDefteri>();
           
        }

        private void kasaHareketleriToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void toolStripButton10_Click(object sender, EventArgs e)
        {
            
        }
    }
}
