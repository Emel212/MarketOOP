using Mimari.Entity;
using Mimari.ORM;
using Mimari.ORM.Entity;
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
using System.Data.SqlClient;
using System.Diagnostics;
using System.Data.Entity;

namespace MarketOOP
{
    public partial class Stok_Giris_Cikis : Form
    {
        public Stok_Giris_Cikis()
        {
            InitializeComponent();
        }
        UrunlerORM uorm = new UrunlerORM();
        UrunStokORM usOrm = new UrunStokORM();
        UrunStok us = new UrunStok();
        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                us.Barkod = textBox1.Text.Trim();
                us.StokMiktari =(int)numericUpDown1.Value;
                us.IslemTuru = "Giris";
                usOrm.Update(us);
               
            }
            catch (UpdateException x)
            {
               
                
                    MessageBox.Show(x.Message);

            }
           catch(Exception ex)
            {
                MessageBox.Show("DEĞERLERİ EKSİKSİZ GİRDİĞİNİZDEN EMİN OLUN" + ex.ToString());
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                us.Barkod = textBox1.Text.Trim();
                us.StokMiktari = (int)numericUpDown1.Value;
                us.IslemTuru = "Cikis";
                usOrm.Update(us);
                
            }
            catch (Exception)
            {

                MessageBox.Show("DEĞERLERİ EKSİKSİZ GİRDİĞİNİZDEN EMİN OLUN");
            }
        }

        private void Stok_Giris_Cikis_Load(object sender, EventArgs e)
        {
           
            
        }
    }
}