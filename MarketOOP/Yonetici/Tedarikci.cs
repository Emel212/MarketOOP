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
    public partial class Tedarikci : Form
    {
        public Tedarikci()
        {
            InitializeComponent();
        }
        int id;
        TedarikciORM tOrm = new TedarikciORM();
        Tedarikciler ted = new Tedarikciler();

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                panel1.Enabled = true;
                ted.Adi = textBox1.Text;
                ted.Soyadi = textBox2.Text;
                ted.SirketAdi = textBox3.Text;
                ted.Telefon = textBox4.Text;
                ted.Adres = textBox5.Text;
                ted.Mail = textBox6.Text;
                ted.Aktif = true;
                bool ısEmpty=Tools.FormTools.IsEmpty(panel1); //TextBoxların boş olup olmadığını kontrol eder
                if(!ısEmpty)
                {
                    bool sonuc = tOrm.Insert(ted);
                    if (sonuc)
                    {
                        MessageBox.Show("Kayıt Islemi Yapıldı!");
                        dataGridView1.DataSource = tOrm.Select();

                    }
                }
            }
            catch (Exception)
            {

                throw;
            }
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            ted.Id = id;
            if(textBox1.Text==string.Empty || id<1)
            {
                MessageBox.Show("Listeden Bir Urun Seciniz");
            }
            else if(id>0)
            {
                bool sonuc = tOrm.Delete(ted);
                if (sonuc)
                {
                    dataGridView1.DataSource = tOrm.Select();

                }
            }
           

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            id = (int)dataGridView1.Rows[e.RowIndex].Cells["id"].Value;
            textBox1.Text = dataGridView1.Rows[e.RowIndex].Cells["Adi"].Value.ToString();
            textBox2.Text = dataGridView1.Rows[e.RowIndex].Cells["Soyadi"].Value.ToString();
            textBox3.Text = dataGridView1.Rows[e.RowIndex].Cells["SirketAdi"].Value.ToString();
            textBox6.Text = dataGridView1.Rows[e.RowIndex].Cells["Telefon"].Value.ToString();
            textBox4.Text = dataGridView1.Rows[e.RowIndex].Cells["Adres"].Value.ToString();
            textBox5.Text = dataGridView1.Rows[e.RowIndex].Cells["Mail"].Value.ToString();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            panel1.Enabled = true;
            ted.Adi = textBox1.Text;
            ted.Soyadi = textBox2.Text;
            ted.SirketAdi = textBox3.Text;
            ted.Telefon = textBox4.Text;
            ted.Adres = textBox5.Text;
            ted.Mail = textBox6.Text;
            ted.Aktif = true;
            ted.Id = id;

            bool sonuc = tOrm.Update(ted);
            if (sonuc)
            {
                MessageBox.Show("Güncelleme işlemi tamamlandı");
                dataGridView1.DataSource = tOrm.Select();

            }
        }

        private void Tedarikci_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = tOrm.Select();
        }
    }
}

