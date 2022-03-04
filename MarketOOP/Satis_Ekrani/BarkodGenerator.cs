using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Printing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace MarketOOP
{
    public partial class BarkodGenerator : Form
    {
        public BarkodGenerator()
        {
            InitializeComponent();
        }
        public string Barkod,urunadi,fiyat;
        public string ImageTobase64(Image ımage, System.Drawing.Imaging.ImageFormat format)
        {
            using (MemoryStream ms = new MemoryStream())
            {
                ımage.Save(ms, format);
                byte[] imageBytes = ms.ToArray();
                string base64String = Convert.ToBase64String(imageBytes);
                return base64String;
            }
        }

        Bitmap bp;
    
    

        private void BarkodGenerator_Load(object sender, EventArgs e)
        {
            BarkodNo.Text = Barkod;
            Fiyat.Text = fiyat;
            UrunAdi.Text = urunadi;
            Zen.Barcode.Code128BarcodeDraw barcode = Zen.Barcode.BarcodeDrawFactory.Code128WithChecksum;
            pictureBox1.Image = barcode.Draw(BarkodNo.Text, 60); 
        }

        private void printDocument1_PrintPage(object sender, PrintPageEventArgs e)
        {
            
                e.Graphics.DrawImage(bp, 0, 0);
            
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    

      
        private void button2_Click(object sender, EventArgs e)
        {
                Graphics graphics = this.CreateGraphics();
                bp = new Bitmap(this.Size.Width, this.Size.Height, graphics);
                Graphics mg = Graphics.FromImage(bp);
            
                mg.CopyFromScreen(this.Location.X, this.Location.Y, 0, 0, panel2.Size);


            printPreviewDialog1.ShowDialog();
        }
    }
}
                                                                 