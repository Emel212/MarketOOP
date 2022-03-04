using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing.Imaging;
using System.Drawing.Printing;

namespace MarketOOP
{
    public partial class BarkodEtiket : Form
    {
        public BarkodEtiket()
        {
            InitializeComponent();
        }

        private void flowLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }
        Bitmap bp;
        private void BarkodEtiket_Load(object sender, EventArgs e)
        {
           


           /* foreach (Control c in flowLayoutPanel1.Controls)
            {
                if(c is Panel)
                {
                    Panel panel = c as Panel;
                    
                    continue;
                }
            }
            foreach (Control ctrl in this.Controls)
            {
                if (ctrl is Button)
                {
                    Button btn = ctrl as Button;
                    if (btn.Text == "kaydet")
                    {
                        continue;
                    }
                    else
                    {
                        this.Controls.Remove(ctrl);
                        goto yavaslat;
                    }
                }
            }*/
        }

        private void printDocument1_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
           
        }

        private void button1_Click(object sender, EventArgs e)
        {

            Graphics graphics = panel1.CreateGraphics();
            bp = new Bitmap(panel1.Size.Width, panel1.Size.Height, graphics);
            Graphics mg = Graphics.FromImage(bp);
            mg.CopyFromScreen(this.Location.X, this.Location.Y, 0, 0, this.Size);
            printPreviewDialog1.ShowDialog();


            
        }

        private void Doc_PrintPage(object sender, PrintPageEventArgs e)
        {
            throw new NotImplementedException();
        }

        private void printPreviewDialog1_Load(object sender, EventArgs e)
        {

        }
    }
}
