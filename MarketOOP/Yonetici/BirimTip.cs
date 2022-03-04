using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Mimari.Entity;
using Mimari.ORM;
using Mimari.ORM.Facade;

namespace MarketOOP
{
    public partial class BirimTip : Form
    {
        public BirimTip()
        {
            InitializeComponent();
        }
        BirimTipleriORM bOrm = new BirimTipleriORM();
        BirimTipleri bt = new BirimTipleri();
        int id;
        private void button1_Click(object sender, EventArgs e)
        {
            
            bt.Adi = textBox1.Text;
            bt.Aktif = true;
            bool ısEmpty = Tools.FormTools.IsEmpty(panel1); //TextBoxların boş olup olmadığını kontrol eder
            if (ısEmpty == false)
            {
                bool sonuc = bOrm.Insert(bt);
                if (sonuc)
                {
                   
                    dataGridView1.DataSource = bOrm.Select();
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if(id<1)
            {
                MessageBox.Show("Listeden Silinecek Birimi Seciniz");
            }
            else
            {
                bt.Id = id;
                bool sonuc = bOrm.Delete(bt);
                if (sonuc)
                {
                    dataGridView1.DataSource = bOrm.Select();
                }
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            id = (int)dataGridView1.Rows[e.RowIndex].Cells["id"].Value;

        }

        private void BirimTip_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = bOrm.Select();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            bt.Adi = textBox1.Text;
            bt.Aktif = true;
            bt.Id = id;
            bool sonuc=bOrm.Update(bt);
            if(sonuc)
            {
                dataGridView1.DataSource = bOrm.Select();
                MessageBox.Show("Kayıt Güncellendi");
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
