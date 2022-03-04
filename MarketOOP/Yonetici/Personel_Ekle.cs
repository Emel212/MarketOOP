using Mimari.Entity;
using Mimari.ORM;
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
    public partial class Personel_Ekle : Form
    {
        public Personel_Ekle()
        {
            InitializeComponent();
        }
        string tiklanan;

        int id;
        Personeller p = new Personeller();
        PersonelORM pOrm = new PersonelORM();
        void SendParameters(string Tiklanan)
        {
            p.Adi = Adi.Text;
            p.Soyadi = Soyadi.Text;
            p.Adres = Adres.Text;
            p.Unvan = Unvan.Text;
            p.Telefon = Telefon.Text;
            p.Aciklama = Aciklama.Text;
            p.Fotograf = null;
            p.Sifre = textBox1.Text;
           
            if (Tiklanan=="Ekle")
            {
                bool sonuc = pOrm.Insert(p);
                if (sonuc)
                {
                    dataGridView1.DataSource = pOrm.Select();
                    MessageBox.Show("Kayıt Eklendi");
                }

            }else if(Tiklanan=="Düzenle")
            {
                p.Id = id;
                bool sonuc = pOrm.Update(p);
                if(sonuc)
                {
                    dataGridView1.DataSource = pOrm.Select();
                    MessageBox.Show("Kayıt Güncellendi");
                }
            }
        }

            
        private void Personel_Ekle_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = pOrm.Select();
        }

        private void toolStripButton4_Click(object sender, EventArgs e)
        {
            DialogResult Soru = MessageBox.Show("DEĞİŞİKLİKLER KAYDEDİLSİN Mİ?", "UYARI", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (Soru == DialogResult.Yes)
            {
                SendParameters(tiklanan);
            }
        }

        private void toolStripButton3_Click(object sender, EventArgs e)
        {
            if (Adi.Text == "")
            {
                MessageBox.Show("Ürün bilgilerini düzenlemek için listeden bir ürün seçiniz", "UYARI", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                tiklanan = "Düzenle";
                panel1.Enabled = true;
                toolStripButton1.Enabled = false;
                toolStripButton2.Enabled = false;
                toolStripButton4.Enabled = true;
            }

        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            panel1.Enabled = true;
            tiklanan = "Ekle";
            Tools.FormTools.ClearAllText(panel1);
            toolStripButton2.Enabled = false;
            toolStripButton3.Enabled = false;
            toolStripButton4.Enabled = true;
        }

        private void toolStripButton5_Click(object sender, EventArgs e)
        {
            toolStripButton1.Enabled = true;
            toolStripButton2.Enabled = true;
            toolStripButton3.Enabled = true;
            toolStripButton4.Enabled = false;
            Tools.FormTools.ClearAllText(panel1);
            panel1.Enabled = false;
        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            try
            {
                tiklanan = "Sil";
                if (Adi.Text == "")
                {
                    MessageBox.Show("Listeden silinecek ürünü seçiniz", "UYARI", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                if (Adi.Text != "")
                {

                    panel1.Enabled = false;

                    toolStripButton1.Enabled = true;
                    toolStripButton3.Enabled = true;


                    DialogResult Soru = MessageBox.Show("BU ÜRÜN SİLİNSİN Mİ?", "UYARI", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (Soru == DialogResult.Yes)
                    {
                        
                        p.Id =id;
                        bool sonuc = pOrm.Delete(p);
                        if (sonuc)
                        {
                            dataGridView1.DataSource = pOrm.Select();
                            MessageBox.Show("Kişi Silindi");
                            Tools.FormTools.ClearAllText(panel1);
                        }
                    }
                }
            }
            catch (Exception x)
            {
                MessageBox.Show(x.ToString());
            }

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            id = (int)dataGridView1.Rows[e.RowIndex].Cells["id"].Value;
            Adi.Text= dataGridView1.Rows[e.RowIndex].Cells["Adi"].Value.ToString();
            Soyadi.Text = dataGridView1.Rows[e.RowIndex].Cells["Soyadi"].Value.ToString();
            Unvan.Text = dataGridView1.Rows[e.RowIndex].Cells["Unvan"].Value.ToString();
            Telefon.Text = dataGridView1.Rows[e.RowIndex].Cells["Telefon"].Value.ToString();
            Adres.Text = dataGridView1.Rows[e.RowIndex].Cells["Adres"].Value.ToString();
            Aciklama.Text = dataGridView1.Rows[e.RowIndex].Cells["Aciklama"].Value.ToString();
            //IseBaslamaTarihi.Text = dataGridView1.Rows[e.RowIndex].Cells["IseBaslamaTarihi"].Value.ToString();
            //DogumTarihi.Text = dataGridView1.Rows[e.RowIndex].Cells["DogumTarihi"].Value.ToString();
         

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
