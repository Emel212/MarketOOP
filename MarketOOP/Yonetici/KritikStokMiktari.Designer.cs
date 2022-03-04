
namespace MarketOOP
{
    partial class KritikStokMiktari
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.prc_Urunler_KritikStokRaporuBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.MarketOOPDataSet4 = new MarketOOP.DataSets.MarketOOPDataSet4();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.prc_Urunler_KritikStokRaporuTableAdapter = new MarketOOP.DataSets.MarketOOPDataSet4TableAdapters.prc_Urunler_KritikStokRaporuTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.prc_Urunler_KritikStokRaporuBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.MarketOOPDataSet4)).BeginInit();
            this.SuspendLayout();
            // 
            // prc_Urunler_KritikStokRaporuBindingSource
            // 
            this.prc_Urunler_KritikStokRaporuBindingSource.DataMember = "prc_Urunler_KritikStokRaporu";
            this.prc_Urunler_KritikStokRaporuBindingSource.DataSource = this.MarketOOPDataSet4;
            // 
            // MarketOOPDataSet4
            // 
            this.MarketOOPDataSet4.DataSetName = "MarketOOPDataSet4";
            this.MarketOOPDataSet4.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.prc_Urunler_KritikStokRaporuBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "MarketOOP.Raporlar.Rapor-KritikStokMiktarlari.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(879, 451);
            this.reportViewer1.TabIndex = 0;
            this.reportViewer1.Load += new System.EventHandler(this.reportViewer1_Load);
            // 
            // prc_Urunler_KritikStokRaporuTableAdapter
            // 
            this.prc_Urunler_KritikStokRaporuTableAdapter.ClearBeforeFill = true;
            // 
            // KritikStokMiktari
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(879, 451);
            this.Controls.Add(this.reportViewer1);
            this.Name = "KritikStokMiktari";
            this.Text = "KritikStokMiktari";
            this.Load += new System.EventHandler(this.KritikStokMiktari_Load);
            ((System.ComponentModel.ISupportInitialize)(this.prc_Urunler_KritikStokRaporuBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.MarketOOPDataSet4)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource prc_Urunler_KritikStokRaporuBindingSource;
        private DataSets.MarketOOPDataSet4 MarketOOPDataSet4;
        private DataSets.MarketOOPDataSet4TableAdapters.prc_Urunler_KritikStokRaporuTableAdapter prc_Urunler_KritikStokRaporuTableAdapter;
    }
}