using Microsoft.Reporting.WinForms;
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
    public partial class fis : Form
    {
        public fis()
        {
            InitializeComponent();
        }
        PersonelORM pOrm = new PersonelORM();
        public string SatisTuru;
        public string Nakit;


        private void fis_Load(object sender, EventArgs e)
        {
            //system data constrait exception
            this.reportViewer1.RefreshReport();
            this.prc_SatisDetay_SonSatisTableAdapter1.Fill(this.marketOOPDataSet21.prc_SatisDetay_SonSatis);



            ReportParameterCollection prm = new ReportParameterCollection();
            prm.Add(new ReportParameter("Kasiyer", PersonelORM.AktifKullanici.Adi));
            prm.Add(new ReportParameter("OdemeTuru", SatisTuru));
            prm.Add(new ReportParameter("Nakit", Nakit));

            prm.Add(new ReportParameter("date", DateTime.Today.Day.ToString() + "." + DateTime.Today.Month.ToString() + "." + DateTime.Today.Year.ToString()));
            this.reportViewer1.LocalReport.SetParameters(prm);
            this.reportViewer1.RefreshReport();
            

            var dataTable = new DataSets.MarketOOPDataSet2.prc_SatisDetay_SonSatisDataTable();
            var TableAdapter = new DataSets.MarketOOPDataSet2TableAdapters.prc_SatisDetay_SonSatisTableAdapter();
            TableAdapter.Fill(dataTable);
            var rds = new ReportDataSource("DataSet1", dataTable as DataTable);
            reportViewer1.LocalReport.DataSources.Clear();
            reportViewer1.LocalReport.DataSources.Add(rds);
            reportViewer1.RefreshReport();

        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {

        }
    }
}
