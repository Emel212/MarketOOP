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
    public partial class Kasalar : Form
    {
        public Kasalar()
        {
            InitializeComponent();
        }
        KasaORM kOrm = new KasaORM();
        Kasa k = new Kasa();
        int id;
        private void button1_Click(object sender, EventArgs e)
        {
            panel1.Enabled = true;
            k.Adi = textBox1.Text;
            k.Aciklama = textBox2.Text;
            k.Aktif = true;
            bool ısEmpty = Tools.FormTools.IsEmpty(panel1); //TextBoxların boş olup olmadığını kontrol eder
            if (ısEmpty == false)
            {
                bool sonuc = kOrm.Insert(k);
                if (sonuc)
                {
                    MessageBox.Show("Bilgiler Kaydedildi");
                    dataGridView1.DataSource = kOrm.Select();
                }
            }
           
        }

        private void Sil_Click(object sender, EventArgs e)
        {
            try
            {
                k.Id =id;
                bool sonuc = kOrm.Delete(k);
                
                if (sonuc)
                {
                    MessageBox.Show("kayıt silindi");
                    dataGridView1.DataSource = kOrm.Select();

                }
            }
             
            catch (Exception x)
            {
                if (id<1)
                {
                    MessageBox.Show("Listeden silinecek urunu secınız");
                }
                MessageBox.Show(x.ToString());
            }
        }

        private void Kasalar_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = kOrm.Select();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            id = (int)dataGridView1.Rows[e.RowIndex].Cells["id"].Value;
           textBox1.Text=dataGridView1.Rows[e.RowIndex].Cells["Adi"].Value.ToString();
            textBox2.Text= dataGridView1.Rows[e.RowIndex].Cells["Aciklama"].Value.ToString();
        }

        private void Guncelle_Click(object sender, EventArgs e)
        {
            panel1.Enabled = true;
            if (textBox1.Text==string.Empty)
            {

                MessageBox.Show("Listeden Bir Ürün Seçiniz");

            }
            else
            {
                try
                {
                    k.Adi = textBox1.Text;
                    k.Aciklama = textBox2.Text;
                    k.Id = id;
                    k.Aktif = true;
                    bool sonuc = kOrm.Update(k);
                    if (sonuc)
                    {
                        MessageBox.Show("KAYIT GUNCELLENDİ");
                        dataGridView1.DataSource = kOrm.Select();

                    }
                }
                catch (Exception x)
                {

                    MessageBox.Show(x.ToString());
                }
                finally
                {
                    Tools.FormTools.ClearAllText(panel1);
                }

               
            }
           
        }
    }
}
