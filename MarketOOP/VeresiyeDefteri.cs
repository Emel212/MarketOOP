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
        OdemeORM oOrm = new OdemeORM();
        OdemeDetayORM odOrm = new OdemeDetayORM();
        Odeme o = new Odeme();
        OdemeDetay od = new OdemeDetay();
        Borclular b = new Borclular();
        BorclularORM bOrm = new BorclularORM();
        SatisDetay sd = new SatisDetay();
        int id;

        private void VeresiyeDefteri_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource=odOrm.Select();
            
        }
        private void odemeYapToolStripMenuItem_Click(object sender, EventArgs e)
        {

            var result = Interaction.InputBox("Ödeme Yapılacak Miktarı Giriniz","ODEME YAP");

            od.SatisID = id;
            od.OdenenTutar = Convert.ToDecimal(result);
            bool sonuc = odOrm.Update(od);
            if (sonuc)
            {
                MessageBox.Show("Ödeme İşlemi Gerçekleştirldi");
                dataGridView1.DataSource = odOrm.Select();
            }
        }

      

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            //id=Convert.ToInt32( dataGridView1.CurrentRow.Cells["FisNo"].Value);
            id = (int)dataGridView1.Rows[e.RowIndex].Cells["FisNo"].Value;
            sd.SatisID = id;
            dataGridView2.DataSource = BorclularORM.BorcluSatisDetay(sd);
        }
    }
}
