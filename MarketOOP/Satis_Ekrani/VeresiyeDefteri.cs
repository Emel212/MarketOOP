using Mimari.Entity;
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
using Microsoft.VisualBasic;

namespace MarketOOP
{
    public partial class VeresiyeDefteri : Form
    {
        public VeresiyeDefteri()
        {
            InitializeComponent();
        }
     
        OdemeDetayORM detayORM = new OdemeDetayORM();
        OdemeDetay odemeDetay = new OdemeDetay();
        SatisDetay satisDetay = new SatisDetay();
        int id;

        private void VeresiyeDefteri_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource=detayORM.Select();
            
        }
        private void odemeYapToolStripMenuItem_Click(object sender, EventArgs e)
        {

            var result = Interaction.InputBox("Ödeme Yapılacak Miktarı Giriniz","ODEME YAP");

            odemeDetay.SatisID = id;
            odemeDetay.OdenenTutar = Convert.ToDecimal(result);
            bool sonuc = detayORM.Update(odemeDetay);
            if (sonuc)
            {
                MessageBox.Show("Ödeme İşlemi Gerçekleştirldi");
                dataGridView1.DataSource = detayORM.Select();
            }
        }

      

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            
            id = (int)dataGridView1.Rows[e.RowIndex].Cells["FisNo"].Value;
            satisDetay.SatisID = id;
            dataGridView2.DataSource = BorclularORM.BorcluSatisDetay(satisDetay);
            //system.outofRange exception
        }
    }
}
