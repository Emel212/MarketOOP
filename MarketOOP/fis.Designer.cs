
namespace MarketOOP
{
    partial class fis
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
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.prc_SatisDetay_SonSatisTableAdapter1 = new MarketOOP.DataSets.MarketOOPDataSet2TableAdapters.prc_SatisDetay_SonSatisTableAdapter();
            this.marketOOPDataSet21 = new MarketOOP.DataSets.MarketOOPDataSet2();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.marketOOPDataSet21)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "MarketOOP.Rapor-Fis.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(800, 450);
            this.reportViewer1.TabIndex = 0;
            this.reportViewer1.Load += new System.EventHandler(this.reportViewer1_Load);
            // 
            // prc_SatisDetay_SonSatisTableAdapter1
            // 
            this.prc_SatisDetay_SonSatisTableAdapter1.ClearBeforeFill = true;
            // 
            // marketOOPDataSet21
            // 
            this.marketOOPDataSet21.DataSetName = "MarketOOPDataSet2";
            this.marketOOPDataSet21.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataMember = "prc_SatisDetay_SonSatis";
            this.bindingSource1.DataSource = this.marketOOPDataSet21;
            // 
            // fis
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.reportViewer1);
            this.Name = "fis";
            this.Text = "fis";
            this.Load += new System.EventHandler(this.fis_Load);
            ((System.ComponentModel.ISupportInitialize)(this.marketOOPDataSet21)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private DataSets.MarketOOPDataSet2TableAdapters.prc_SatisDetay_SonSatisTableAdapter prc_SatisDetay_SonSatisTableAdapter1;
        private DataSets.MarketOOPDataSet2 marketOOPDataSet21;
        private System.Windows.Forms.BindingSource bindingSource1;
    }
}