using Mimari.Entity;
using Mimari.ORM;
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
    public partial class UrunDetay : Form
    {
        public UrunDetay()
        {
            InitializeComponent();
        }
        public string barkod;
        Urunler aktif;
        UrunlerORM urunlerORM = new UrunlerORM();
        private void UrunDetay_Load(object sender, EventArgs e)
        {
            Urunler u = new Urunler();
            u.Barkod = barkod;
           aktif=urunlerORM.UrunID(u);
            if (aktif == null)
            {
                MessageBox.Show("Barkoda Ait Ürün Bulunamadı!");
            }
            else
                textBox1.Text = aktif.Barkod;
            textBox2.Text = aktif.UrunAdi;
            textBox3.Text =((double)aktif.SatisFiyat).ToString();
            textBox4.Text = aktif.Kdv.ToString();
            textBox5.Text = aktif.StokMiktari.ToString();

        }
    }
}
