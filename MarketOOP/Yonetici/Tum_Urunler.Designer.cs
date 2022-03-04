
namespace MarketOOP
{
    partial class Tum_Urunler
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
            this.prc_Urunler_SelectBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.MarketOOPDataSet1 = new MarketOOP.DataSets.MarketOOPDataSet1();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.prc_Urunler_SelectTableAdapter = new MarketOOP.DataSets.MarketOOPDataSet1TableAdapters.prc_Urunler_SelectTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.prc_Urunler_SelectBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.MarketOOPDataSet1)).BeginInit();
            this.SuspendLayout();
            // 
            // prc_Urunler_SelectBindingSource
            // 
            this.prc_Urunler_SelectBindingSource.DataMember = "prc_Urunler_Select";
            this.prc_Urunler_SelectBindingSource.DataSource = this.MarketOOPDataSet1;
            // 
            // MarketOOPDataSet1
            // 
            this.MarketOOPDataSet1.DataSetName = "MarketOOPDataSet1";
            this.MarketOOPDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.prc_Urunler_SelectBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "MarketOOP.Raporlar.Rapor-TumUrunler.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(800, 450);
            this.reportViewer1.TabIndex = 0;
            // 
            // prc_Urunler_SelectTableAdapter
            // 
            this.prc_Urunler_SelectTableAdapter.ClearBeforeFill = true;
            // 
            // Tum_Urunler
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.reportViewer1);
            this.Name = "Tum_Urunler";
            this.Text = "Tum_Urunler";
            this.Load += new System.EventHandler(this.Tum_Urunler_Load);
            ((System.ComponentModel.ISupportInitialize)(this.prc_Urunler_SelectBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.MarketOOPDataSet1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource prc_Urunler_SelectBindingSource;
        private DataSets.MarketOOPDataSet1 MarketOOPDataSet1;
        private DataSets.MarketOOPDataSet1TableAdapters.prc_Urunler_SelectTableAdapter prc_Urunler_SelectTableAdapter;
    }
}