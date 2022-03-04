
namespace MarketOOP
{
    partial class PersonelGirisEkrani
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
            this.Btn_Ad = new System.Windows.Forms.TextBox();
            this.Btn_Sifre = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // Btn_Ad
            // 
            this.Btn_Ad.BackColor = System.Drawing.SystemColors.GrayText;
            this.Btn_Ad.ForeColor = System.Drawing.SystemColors.Info;
            this.Btn_Ad.Location = new System.Drawing.Point(87, 28);
            this.Btn_Ad.Name = "Btn_Ad";
            this.Btn_Ad.Size = new System.Drawing.Size(226, 20);
            this.Btn_Ad.TabIndex = 0;
            // 
            // Btn_Sifre
            // 
            this.Btn_Sifre.BackColor = System.Drawing.SystemColors.GrayText;
            this.Btn_Sifre.ForeColor = System.Drawing.SystemColors.Info;
            this.Btn_Sifre.Location = new System.Drawing.Point(87, 61);
            this.Btn_Sifre.MaxLength = 15;
            this.Btn_Sifre.Name = "Btn_Sifre";
            this.Btn_Sifre.PasswordChar = '*';
            this.Btn_Sifre.Size = new System.Drawing.Size(226, 20);
            this.Btn_Sifre.TabIndex = 1;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.SystemColors.ControlDarkDark;
            this.button1.Location = new System.Drawing.Point(128, 100);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(131, 29);
            this.button1.TabIndex = 2;
            this.button1.Text = "Giriş Yap";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(43, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(31, 15);
            this.label1.TabIndex = 4;
            this.label1.Text = "Ad :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.Location = new System.Drawing.Point(29, 64);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 15);
            this.label2.TabIndex = 5;
            this.label2.Text = "Sifre :";
            // 
            // PersonelGirisEkrani
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.ClientSize = new System.Drawing.Size(367, 175);
            this.Controls.Add(this.Btn_Ad);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.Btn_Sifre);
            this.Controls.Add(this.button1);
            this.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.Name = "PersonelGirisEkrani";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PersonelGirisEkrani";
            this.Load += new System.EventHandler(this.PersonelGirisEkrani_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox Btn_Ad;
        private System.Windows.Forms.TextBox Btn_Sifre;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}