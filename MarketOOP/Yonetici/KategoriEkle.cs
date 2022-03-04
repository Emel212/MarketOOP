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
    public partial class KategoriEkle : Form
    {
        public KategoriEkle()
        {
            InitializeComponent();
        }
        KategoriORM kOrm = new KategoriORM();
        Kategoriler k = new Kategoriler();
        int id;
        private void button1_Click(object sender, EventArgs e)
        {
            
            k.Adi = textBox1.Text;
            k.Aktif = true;

            bool ısEmpty = Tools.FormTools.IsEmpty(panel1); //TextBoxların boş olup olmadığını kontrol eder
            if (ısEmpty == false)
            {
                bool sonuc = kOrm.Insert(k);
                if (sonuc)
                {
                    MessageBox.Show("Kayıt işlemi yapıldı ");
                    dataGridView1.DataSource = kOrm.Select();

                }
            }
          
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void KategoriEkle_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = kOrm.Select();

        }

        private void button2_Click(object sender, EventArgs e)
        {
            k.Id = id;
            bool sonuc=kOrm.Delete(k);
            if(sonuc)
            {
                dataGridView1.DataSource = kOrm.Select();
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if(textBox1.Text!="")
            {
                k.Adi = textBox1.Text;
                k.Aktif = true;
                k.Id = id;
                bool sonuc = kOrm.Update(k);
                if (sonuc)
                {
                    MessageBox.Show("Kayıt Güncellendi");
                    dataGridView1.DataSource = kOrm.Select();
                }
            }
            

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            id = (int)dataGridView1.Rows[e.RowIndex].Cells["id"].Value;
            textBox1.Text= dataGridView1.Rows[e.RowIndex].Cells["id"].Value.ToString();

        }
    }
}
