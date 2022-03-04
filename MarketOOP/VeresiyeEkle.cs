using Mimari.ORM;
using Mimari.ORM.Entity;
using Mimari.ORM.Facade;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MarketOOP
{
    public partial class VeresiyeEkle : Form
    {
        public VeresiyeEkle()
        {
            InitializeComponent();
        }

        int oId;
        void SendParameters(string Tiklanan)
        {
            b.Adi = Adi.Text;
            b.Soyadi = Soyadi.Text;
            b.TelNo = Telefon.Text;
            b.Adres = Adres.Text;
            b.Aciklama = Aciklama.Text;

          
            if (Tiklanan == "Ekle")
            {
                try
                {
                    int bId = Convert.ToInt32(bOrm.InsertScalar(b));
                  
                    if (bId>0)
                    {
                        
                        
                        MessageBox.Show("Kayıt Oluşturuldu", "BİLGİLENDİRME", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        o.BorcluID = bId;
                        o.Tarih = DateTime.Now;
                        oId =Convert.ToInt32(oOrm.InsertScalar(o));
                        dataGridView1.DataSource = bOrm.Select();

                    }
                   
                    if (oId>0)
                    {
                        od.OdemeID = oId;
                       // od.OdenenTutar =null;
                        od.SatisID = Convert.ToInt32(SatisID.Text);
                        odOrm.Insert(od);
                        dataGridView1.DataSource = bOrm.Select();
                    }
                }
                catch (SqlException x)
                {

                    MessageBox.Show("VERESİYE KAYDI İÇİN ÖNCE SATIŞ İŞLEMİ YAPILMALI");
                }
               

            }
            else if (Tiklanan == "Düzenle")
            {
                  b.Id = id;
                bool sonuc = bOrm.Update(b);
                if (sonuc)
                {
                    dataGridView1.DataSource = bOrm.Select();
                    MessageBox.Show("Kayıt Güncellendi");
                }
            }
        }

        string tiklanan;
        BorclularORM bOrm = new BorclularORM();
        Borclular b = new Borclular();
        Odeme o = new Odeme();
        OdemeORM oOrm = new OdemeORM();
        OdemeDetay od = new OdemeDetay();
        OdemeDetayORM odOrm = new OdemeDetayORM();

        private void toolStripButton4_Click(object sender, EventArgs e)
        {
            DialogResult Soru = MessageBox.Show("DEĞİŞİKLİKLER KAYDEDİLSİN Mİ?", "UYARI", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (Soru == DialogResult.Yes)
            {
                SendParameters(tiklanan);
            }
        }

        private void VeresiyeEkle_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = bOrm.Select();
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

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            try
            {
                tiklanan = "Sil";
                if (Adi.Text == "")
                {
                    MessageBox.Show("Listeden silinecek Kişiyi seçiniz", "UYARI", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                if (Adi.Text != "")
                {

                    panel1.Enabled = false;

                    toolStripButton1.Enabled = true;
                    toolStripButton3.Enabled = true;


                    DialogResult Soru = MessageBox.Show("BU KİŞİ SİLİNSİN Mİ?", "UYARI", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (Soru == DialogResult.Yes)
                    {

                         b.Id = id;
                        bool sonuc = bOrm.Delete(b);
                        if (sonuc)
                        {
                            dataGridView1.DataSource = bOrm.Select();
                            MessageBox.Show("Kişi Silindi");
                            Tools.ClearAllText(panel1);
                        }
                    }
                }
            }
            catch (Exception x)
            {
                MessageBox.Show(x.ToString());
            }
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            panel1.Enabled = true;
            tiklanan = "Ekle";
            Tools.ClearAllText(panel1);
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
            Tools.ClearAllText(panel1);
            panel1.Enabled = false;
        }
        int id;
        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            id = (int)dataGridView1.Rows[e.RowIndex].Cells["id"].Value;
            Adi.Text = dataGridView1.Rows[e.RowIndex].Cells["Adi"].Value.ToString();
            Soyadi.Text = dataGridView1.Rows[e.RowIndex].Cells["Soyadi"].Value.ToString();
            SatisID.Text = dataGridView1.Rows[e.RowIndex].Cells["SatisID"].Value.ToString();
            Telefon.Text = dataGridView1.Rows[e.RowIndex].Cells["TelNo"].Value.ToString();
            Adres.Text = dataGridView1.Rows[e.RowIndex].Cells["Adres"].Value.ToString();
            Aciklama.Text = dataGridView1.Rows[e.RowIndex].Cells["Aciklama"].Value.ToString();
        }
    }
}
