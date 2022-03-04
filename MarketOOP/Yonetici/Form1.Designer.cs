
namespace MarketOOP
{
    partial class Form1
    {
        /// <summary>
        ///Gerekli tasarımcı değişkeni.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///Kullanılan tüm kaynakları temizleyin.
        /// </summary>
        ///<param name="disposing">yönetilen kaynaklar dispose edilmeliyse doğru; aksi halde yanlış.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer üretilen kod

        /// <summary>
        /// Tasarımcı desteği için gerekli metot - bu metodun 
        ///içeriğini kod düzenleyici ile değiştirmeyin.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle9 = new System.Windows.Forms.DataGridViewCellStyle();
            this.panel2 = new System.Windows.Forms.Panel();
            this.KritikStokMiktar = new System.Windows.Forms.NumericUpDown();
            this.BedenNo = new System.Windows.Forms.NumericUpDown();
            this.OzelKod2 = new System.Windows.Forms.NumericUpDown();
            this.OzelKod1 = new System.Windows.Forms.NumericUpDown();
            this.Tedarikci = new System.Windows.Forms.ComboBox();
            this.BirimTip = new System.Windows.Forms.ComboBox();
            this.UrunKategorisi = new System.Windows.Forms.ComboBox();
            this.label12 = new System.Windows.Forms.Label();
            this.button7 = new System.Windows.Forms.Button();
            this.k_KartFiyat = new System.Windows.Forms.NumericUpDown();
            this.SatisFiyat3 = new System.Windows.Forms.NumericUpDown();
            this.Satis_Fiyat2 = new System.Windows.Forms.NumericUpDown();
            this.SonKullTarih = new System.Windows.Forms.DateTimePicker();
            this.Yuzde18 = new System.Windows.Forms.Button();
            this.Yuzde8 = new System.Windows.Forms.Button();
            this.yuzdebir = new System.Windows.Forms.Button();
            this.label21 = new System.Windows.Forms.Label();
            this.StokMiktar = new System.Windows.Forms.TextBox();
            this.KDVORAN = new System.Windows.Forms.TextBox();
            this.SatisFiyat = new System.Windows.Forms.TextBox();
            this.Barkod = new System.Windows.Forms.TextBox();
            this.urunlerBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.marketOOPDataSet = new MarketOOP.DataSets.MarketOOPDataSet();
            this.textBox8 = new System.Windows.Forms.TextBox();
            this.kdv = new System.Windows.Forms.TextBox();
            this.Birim_Alis_Fiyat = new System.Windows.Forms.TextBox();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.UrunAdi = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.Sınıfı = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.Cins = new System.Windows.Forms.TextBox();
            this.label18 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.Btn_Araclar = new System.Windows.Forms.ToolStripSplitButton();
            this.yeniÜrünEkleToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.yeniÜrünKategorisiEkleToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.yeniBirimTipToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.yeniTedarikçiToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.yeniKasaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripLabel5 = new System.Windows.Forms.ToolStripLabel();
            this.Btn_Ekle = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel4 = new System.Windows.Forms.ToolStripLabel();
            this.Btn_Sil = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel3 = new System.Windows.Forms.ToolStripLabel();
            this.Btn_Duzenle = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel2 = new System.Windows.Forms.ToolStripLabel();
            this.Btn_Kaydet = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel1 = new System.Windows.Forms.ToolStripLabel();
            this.Btn_iptal = new System.Windows.Forms.ToolStripButton();
            this.toolStripLabel6 = new System.Windows.Forms.ToolStripLabel();
            this.toolStripTextBox1 = new System.Windows.Forms.ToolStripTextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.StokCikis = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.StokGirisi = new System.Windows.Forms.Button();
            this.marketOOPDataSet1 = new MarketOOP.DataSets.MarketOOPDataSet();
            this.urunlerTableAdapter = new MarketOOP.DataSets.MarketOOPDataSetTableAdapters.UrunlerTableAdapter();
            this.urunlerTableAdapter1 = new MarketOOP.DataSets.MarketOOPDataSetTableAdapters.UrunlerTableAdapter();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.errorProvider1 = new System.Windows.Forms.ErrorProvider(this.components);
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.KritikStokMiktar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BedenNo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.OzelKod2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.OzelKod1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.k_KartFiyat)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.SatisFiyat3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Satis_Fiyat2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.urunlerBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.marketOOPDataSet)).BeginInit();
            this.toolStrip1.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.marketOOPDataSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.panel2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.panel2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel2.Controls.Add(this.KritikStokMiktar);
            this.panel2.Controls.Add(this.BedenNo);
            this.panel2.Controls.Add(this.OzelKod2);
            this.panel2.Controls.Add(this.OzelKod1);
            this.panel2.Controls.Add(this.Tedarikci);
            this.panel2.Controls.Add(this.BirimTip);
            this.panel2.Controls.Add(this.UrunKategorisi);
            this.panel2.Controls.Add(this.label12);
            this.panel2.Controls.Add(this.button7);
            this.panel2.Controls.Add(this.k_KartFiyat);
            this.panel2.Controls.Add(this.SatisFiyat3);
            this.panel2.Controls.Add(this.Satis_Fiyat2);
            this.panel2.Controls.Add(this.SonKullTarih);
            this.panel2.Controls.Add(this.Yuzde18);
            this.panel2.Controls.Add(this.Yuzde8);
            this.panel2.Controls.Add(this.yuzdebir);
            this.panel2.Controls.Add(this.label21);
            this.panel2.Controls.Add(this.StokMiktar);
            this.panel2.Controls.Add(this.KDVORAN);
            this.panel2.Controls.Add(this.SatisFiyat);
            this.panel2.Controls.Add(this.Barkod);
            this.panel2.Controls.Add(this.textBox8);
            this.panel2.Controls.Add(this.kdv);
            this.panel2.Controls.Add(this.Birim_Alis_Fiyat);
            this.panel2.Controls.Add(this.textBox4);
            this.panel2.Controls.Add(this.UrunAdi);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.label11);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.label13);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Controls.Add(this.label9);
            this.panel2.Controls.Add(this.label14);
            this.panel2.Controls.Add(this.label10);
            this.panel2.Controls.Add(this.Sınıfı);
            this.panel2.Controls.Add(this.label7);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.label16);
            this.panel2.Controls.Add(this.label17);
            this.panel2.Controls.Add(this.Cins);
            this.panel2.Controls.Add(this.label18);
            this.panel2.Controls.Add(this.label19);
            this.panel2.Controls.Add(this.label20);
            this.panel2.Enabled = false;
            this.panel2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.panel2.ForeColor = System.Drawing.SystemColors.ControlText;
            this.panel2.Location = new System.Drawing.Point(12, 34);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(916, 332);
            this.panel2.TabIndex = 76;
            // 
            // KritikStokMiktar
            // 
            this.KritikStokMiktar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.KritikStokMiktar.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.KritikStokMiktar.ForeColor = System.Drawing.SystemColors.Info;
            this.KritikStokMiktar.Location = new System.Drawing.Point(434, 201);
            this.KritikStokMiktar.Name = "KritikStokMiktar";
            this.KritikStokMiktar.Size = new System.Drawing.Size(167, 22);
            this.KritikStokMiktar.TabIndex = 94;
            // 
            // BedenNo
            // 
            this.BedenNo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.BedenNo.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.BedenNo.ForeColor = System.Drawing.SystemColors.Info;
            this.BedenNo.Location = new System.Drawing.Point(755, 94);
            this.BedenNo.Name = "BedenNo";
            this.BedenNo.Size = new System.Drawing.Size(132, 22);
            this.BedenNo.TabIndex = 93;
            // 
            // OzelKod2
            // 
            this.OzelKod2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.OzelKod2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.OzelKod2.ForeColor = System.Drawing.SystemColors.Info;
            this.OzelKod2.Location = new System.Drawing.Point(755, 209);
            this.OzelKod2.Name = "OzelKod2";
            this.OzelKod2.Size = new System.Drawing.Size(132, 22);
            this.OzelKod2.TabIndex = 92;
            // 
            // OzelKod1
            // 
            this.OzelKod1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.OzelKod1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.OzelKod1.ForeColor = System.Drawing.SystemColors.Info;
            this.OzelKod1.Location = new System.Drawing.Point(755, 177);
            this.OzelKod1.Name = "OzelKod1";
            this.OzelKod1.Size = new System.Drawing.Size(132, 22);
            this.OzelKod1.TabIndex = 91;
            // 
            // Tedarikci
            // 
            this.Tedarikci.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.Tedarikci.ForeColor = System.Drawing.SystemColors.Info;
            this.Tedarikci.FormattingEnabled = true;
            this.Tedarikci.Location = new System.Drawing.Point(663, 20);
            this.Tedarikci.Name = "Tedarikci";
            this.Tedarikci.Size = new System.Drawing.Size(224, 24);
            this.Tedarikci.TabIndex = 90;
            // 
            // BirimTip
            // 
            this.BirimTip.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.BirimTip.ForeColor = System.Drawing.SystemColors.Info;
            this.BirimTip.FormattingEnabled = true;
            this.BirimTip.Location = new System.Drawing.Point(434, 165);
            this.BirimTip.Name = "BirimTip";
            this.BirimTip.Size = new System.Drawing.Size(167, 24);
            this.BirimTip.TabIndex = 89;
            this.BirimTip.Validating += new System.ComponentModel.CancelEventHandler(this.BirimTip_Validating);
            // 
            // UrunKategorisi
            // 
            this.UrunKategorisi.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.UrunKategorisi.ForeColor = System.Drawing.SystemColors.Info;
            this.UrunKategorisi.FormattingEnabled = true;
            this.UrunKategorisi.Location = new System.Drawing.Point(381, 257);
            this.UrunKategorisi.Name = "UrunKategorisi";
            this.UrunKategorisi.Size = new System.Drawing.Size(230, 24);
            this.UrunKategorisi.TabIndex = 88;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label12.ForeColor = System.Drawing.SystemColors.Menu;
            this.label12.Location = new System.Drawing.Point(431, 234);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(180, 13);
            this.label12.TabIndex = 87;
            this.label12.Text = "ÜRÜN KATEGORİSİ / GRUBU";
            // 
            // button7
            // 
            this.button7.BackColor = System.Drawing.Color.CornflowerBlue;
            this.button7.FlatAppearance.BorderSize = 0;
            this.button7.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button7.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.button7.Location = new System.Drawing.Point(381, 287);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(230, 27);
            this.button7.TabIndex = 86;
            this.button7.Text = "Resim Seç";
            this.button7.UseVisualStyleBackColor = false;
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // k_KartFiyat
            // 
            this.k_KartFiyat.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.k_KartFiyat.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.k_KartFiyat.ForeColor = System.Drawing.SystemColors.Info;
            this.k_KartFiyat.Location = new System.Drawing.Point(126, 261);
            this.k_KartFiyat.Name = "k_KartFiyat";
            this.k_KartFiyat.Size = new System.Drawing.Size(161, 22);
            this.k_KartFiyat.TabIndex = 84;
            // 
            // SatisFiyat3
            // 
            this.SatisFiyat3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.SatisFiyat3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.SatisFiyat3.ForeColor = System.Drawing.SystemColors.Info;
            this.SatisFiyat3.Location = new System.Drawing.Point(126, 198);
            this.SatisFiyat3.Name = "SatisFiyat3";
            this.SatisFiyat3.Size = new System.Drawing.Size(161, 22);
            this.SatisFiyat3.TabIndex = 83;
            // 
            // Satis_Fiyat2
            // 
            this.Satis_Fiyat2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.Satis_Fiyat2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Satis_Fiyat2.ForeColor = System.Drawing.SystemColors.Info;
            this.Satis_Fiyat2.Location = new System.Drawing.Point(126, 229);
            this.Satis_Fiyat2.Maximum = new decimal(new int[] {
            10000,
            0,
            0,
            0});
            this.Satis_Fiyat2.Name = "Satis_Fiyat2";
            this.Satis_Fiyat2.Size = new System.Drawing.Size(161, 22);
            this.Satis_Fiyat2.TabIndex = 82;
            // 
            // SonKullTarih
            // 
            this.SonKullTarih.CalendarForeColor = System.Drawing.SystemColors.ControlLight;
            this.SonKullTarih.CalendarMonthBackground = System.Drawing.SystemColors.ScrollBar;
            this.SonKullTarih.CalendarTitleBackColor = System.Drawing.SystemColors.ButtonFace;
            this.SonKullTarih.CalendarTitleForeColor = System.Drawing.SystemColors.ControlDark;
            this.SonKullTarih.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.SonKullTarih.Location = new System.Drawing.Point(755, 241);
            this.SonKullTarih.Name = "SonKullTarih";
            this.SonKullTarih.Size = new System.Drawing.Size(131, 22);
            this.SonKullTarih.TabIndex = 81;
            this.SonKullTarih.Value = new System.DateTime(2021, 4, 2, 17, 17, 0, 0);
            // 
            // Yuzde18
            // 
            this.Yuzde18.BackColor = System.Drawing.Color.RoyalBlue;
            this.Yuzde18.FlatAppearance.BorderColor = System.Drawing.Color.Gray;
            this.Yuzde18.FlatAppearance.BorderSize = 0;
            this.Yuzde18.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Yuzde18.ForeColor = System.Drawing.SystemColors.Info;
            this.Yuzde18.Location = new System.Drawing.Point(515, 94);
            this.Yuzde18.Name = "Yuzde18";
            this.Yuzde18.Size = new System.Drawing.Size(47, 23);
            this.Yuzde18.TabIndex = 80;
            this.Yuzde18.Text = "%18";
            this.Yuzde18.UseVisualStyleBackColor = false;
            this.Yuzde18.Click += new System.EventHandler(this.Yuzde18_Click);
            // 
            // Yuzde8
            // 
            this.Yuzde8.BackColor = System.Drawing.Color.CornflowerBlue;
            this.Yuzde8.FlatAppearance.BorderColor = System.Drawing.Color.Gray;
            this.Yuzde8.FlatAppearance.BorderSize = 0;
            this.Yuzde8.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Yuzde8.ForeColor = System.Drawing.SystemColors.Info;
            this.Yuzde8.Location = new System.Drawing.Point(471, 94);
            this.Yuzde8.Name = "Yuzde8";
            this.Yuzde8.Size = new System.Drawing.Size(44, 23);
            this.Yuzde8.TabIndex = 79;
            this.Yuzde8.Text = "%8";
            this.Yuzde8.UseVisualStyleBackColor = false;
            this.Yuzde8.Click += new System.EventHandler(this.Yuzde8_Click);
            // 
            // yuzdebir
            // 
            this.yuzdebir.BackColor = System.Drawing.Color.LightSteelBlue;
            this.yuzdebir.FlatAppearance.BorderColor = System.Drawing.Color.Gray;
            this.yuzdebir.FlatAppearance.BorderSize = 0;
            this.yuzdebir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.yuzdebir.ForeColor = System.Drawing.SystemColors.Info;
            this.yuzdebir.Location = new System.Drawing.Point(434, 94);
            this.yuzdebir.Name = "yuzdebir";
            this.yuzdebir.Size = new System.Drawing.Size(39, 23);
            this.yuzdebir.TabIndex = 78;
            this.yuzdebir.Text = "%1";
            this.yuzdebir.UseVisualStyleBackColor = false;
            this.yuzdebir.Click += new System.EventHandler(this.yuzdebir_Click);
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.BackColor = System.Drawing.Color.Transparent;
            this.label21.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label21.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label21.ForeColor = System.Drawing.SystemColors.Menu;
            this.label21.Location = new System.Drawing.Point(21, 232);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(89, 14);
            this.label21.TabIndex = 74;
            this.label21.Text = "Satış Fiyatı 3:";
            // 
            // StokMiktar
            // 
            this.StokMiktar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.StokMiktar.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.StokMiktar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.StokMiktar.Location = new System.Drawing.Point(434, 134);
            this.StokMiktar.Name = "StokMiktar";
            this.StokMiktar.Size = new System.Drawing.Size(100, 21);
            this.StokMiktar.TabIndex = 76;
            this.StokMiktar.Validating += new System.ComponentModel.CancelEventHandler(this.StokMiktar_Validating);
            // 
            // KDVORAN
            // 
            this.KDVORAN.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.KDVORAN.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.KDVORAN.Enabled = false;
            this.KDVORAN.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.KDVORAN.ForeColor = System.Drawing.SystemColors.Info;
            this.KDVORAN.Location = new System.Drawing.Point(562, 95);
            this.KDVORAN.Name = "KDVORAN";
            this.KDVORAN.Size = new System.Drawing.Size(39, 21);
            this.KDVORAN.TabIndex = 75;
            // 
            // SatisFiyat
            // 
            this.SatisFiyat.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.SatisFiyat.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.SatisFiyat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.SatisFiyat.ForeColor = System.Drawing.SystemColors.Info;
            this.SatisFiyat.Location = new System.Drawing.Point(126, 166);
            this.SatisFiyat.Name = "SatisFiyat";
            this.SatisFiyat.Size = new System.Drawing.Size(103, 21);
            this.SatisFiyat.TabIndex = 74;
            this.SatisFiyat.Validating += new System.ComponentModel.CancelEventHandler(this.SatisFiyat_Validating);
            // 
            // Barkod
            // 
            this.Barkod.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.Barkod.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Barkod.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.urunlerBindingSource, "Barkod", true));
            this.Barkod.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Barkod.ForeColor = System.Drawing.SystemColors.Info;
            this.errorProvider1.SetIconAlignment(this.Barkod, System.Windows.Forms.ErrorIconAlignment.TopLeft);
            this.Barkod.Location = new System.Drawing.Point(126, 21);
            this.Barkod.MaxLength = 13;
            this.Barkod.Name = "Barkod";
            this.Barkod.Size = new System.Drawing.Size(436, 21);
            this.Barkod.TabIndex = 3;
            this.Barkod.Validating += new System.ComponentModel.CancelEventHandler(this.Barkod_Validating);
            // 
            // urunlerBindingSource
            // 
            this.urunlerBindingSource.DataMember = "Urunler";
            this.urunlerBindingSource.DataSource = this.marketOOPDataSet;
            // 
            // marketOOPDataSet
            // 
            this.marketOOPDataSet.DataSetName = "MarketOOPDataSet";
            this.marketOOPDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // textBox8
            // 
            this.textBox8.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.textBox8.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox8.Enabled = false;
            this.textBox8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textBox8.ForeColor = System.Drawing.SystemColors.Info;
            this.textBox8.Location = new System.Drawing.Point(226, 166);
            this.textBox8.Name = "textBox8";
            this.textBox8.Size = new System.Drawing.Size(61, 21);
            this.textBox8.TabIndex = 21;
            // 
            // kdv
            // 
            this.kdv.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.kdv.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.kdv.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.urunlerBindingSource, "Kdv", true));
            this.kdv.Enabled = false;
            this.kdv.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.kdv.ForeColor = System.Drawing.SystemColors.Info;
            this.kdv.Location = new System.Drawing.Point(126, 94);
            this.kdv.Name = "kdv";
            this.kdv.Size = new System.Drawing.Size(161, 21);
            this.kdv.TabIndex = 26;
            // 
            // Birim_Alis_Fiyat
            // 
            this.Birim_Alis_Fiyat.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.Birim_Alis_Fiyat.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Birim_Alis_Fiyat.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.urunlerBindingSource, "BirimAlisFiyati", true, System.Windows.Forms.DataSourceUpdateMode.OnValidation, null, "C2"));
            this.Birim_Alis_Fiyat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Birim_Alis_Fiyat.ForeColor = System.Drawing.SystemColors.Info;
            this.Birim_Alis_Fiyat.Location = new System.Drawing.Point(126, 129);
            this.Birim_Alis_Fiyat.Name = "Birim_Alis_Fiyat";
            this.Birim_Alis_Fiyat.Size = new System.Drawing.Size(103, 21);
            this.Birim_Alis_Fiyat.TabIndex = 17;
            this.Birim_Alis_Fiyat.Validating += new System.ComponentModel.CancelEventHandler(this.Birim_Alis_Fiyat_Validating);
            // 
            // textBox4
            // 
            this.textBox4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.textBox4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textBox4.Enabled = false;
            this.textBox4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.textBox4.ForeColor = System.Drawing.SystemColors.Info;
            this.textBox4.Location = new System.Drawing.Point(226, 129);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(61, 21);
            this.textBox4.TabIndex = 25;
            // 
            // UrunAdi
            // 
            this.UrunAdi.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.UrunAdi.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.UrunAdi.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.urunlerBindingSource, "UrunAdi", true));
            this.UrunAdi.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.UrunAdi.ForeColor = System.Drawing.SystemColors.Info;
            this.errorProvider1.SetIconAlignment(this.UrunAdi, System.Windows.Forms.ErrorIconAlignment.MiddleLeft);
            this.UrunAdi.Location = new System.Drawing.Point(126, 59);
            this.UrunAdi.Name = "UrunAdi";
            this.UrunAdi.Size = new System.Drawing.Size(436, 21);
            this.UrunAdi.TabIndex = 15;
            this.UrunAdi.Validating += new System.ComponentModel.CancelEventHandler(this.UrunAdi_Validating);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.ForeColor = System.Drawing.SystemColors.Menu;
            this.label3.Location = new System.Drawing.Point(355, 95);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(71, 13);
            this.label3.TabIndex = 28;
            this.label3.Text = "Kdv Oranı :";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label4.ForeColor = System.Drawing.SystemColors.Menu;
            this.label4.Location = new System.Drawing.Point(343, 133);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(83, 13);
            this.label4.TabIndex = 32;
            this.label4.Text = "Stok Miktarı :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label5.ForeColor = System.Drawing.SystemColors.Menu;
            this.label5.Location = new System.Drawing.Point(351, 169);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(75, 13);
            this.label5.TabIndex = 35;
            this.label5.Text = "Ölçü Birimi :";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label11.ForeColor = System.Drawing.SystemColors.Menu;
            this.label11.Location = new System.Drawing.Point(298, 203);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(128, 15);
            this.label11.TabIndex = 36;
            this.label11.Text = "Kritik Stok Miktarı :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label2.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.ForeColor = System.Drawing.SystemColors.Menu;
            this.label2.Location = new System.Drawing.Point(21, 262);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(92, 14);
            this.label2.TabIndex = 22;
            this.label2.Text = "K.Kartı Fiyatı :";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label13.ForeColor = System.Drawing.SystemColors.Menu;
            this.label13.Location = new System.Drawing.Point(568, 25);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(94, 13);
            this.label13.TabIndex = 39;
            this.label13.Text = "Tedarikçi Adı  :";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.BackColor = System.Drawing.Color.Transparent;
            this.label8.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label8.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label8.ForeColor = System.Drawing.SystemColors.Menu;
            this.label8.Location = new System.Drawing.Point(21, 167);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(81, 14);
            this.label8.TabIndex = 20;
            this.label8.Text = "Satış Fiyatı :";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.BackColor = System.Drawing.Color.Transparent;
            this.label9.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label9.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label9.ForeColor = System.Drawing.SystemColors.Menu;
            this.label9.Location = new System.Drawing.Point(21, 201);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(93, 14);
            this.label9.TabIndex = 18;
            this.label9.Text = "Satış Fiyatı 2 :";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label14.ForeColor = System.Drawing.SystemColors.Menu;
            this.label14.Location = new System.Drawing.Point(695, 60);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(45, 14);
            this.label14.TabIndex = 41;
            this.label14.Text = "Sınıfı :";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.BackColor = System.Drawing.Color.Transparent;
            this.label10.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label10.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label10.ForeColor = System.Drawing.SystemColors.Menu;
            this.label10.Location = new System.Drawing.Point(21, 130);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(106, 14);
            this.label10.TabIndex = 16;
            this.label10.Text = "Birim Alış Fiyatı :";
            // 
            // Sınıfı
            // 
            this.Sınıfı.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.Sınıfı.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Sınıfı.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Sınıfı.ForeColor = System.Drawing.SystemColors.Info;
            this.Sınıfı.Location = new System.Drawing.Point(755, 59);
            this.Sınıfı.Name = "Sınıfı";
            this.Sınıfı.Size = new System.Drawing.Size(133, 21);
            this.Sınıfı.TabIndex = 42;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.SystemColors.ControlDarkDark;
            this.label7.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label7.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label7.ForeColor = System.Drawing.SystemColors.Menu;
            this.label7.Location = new System.Drawing.Point(21, 60);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(68, 14);
            this.label7.TabIndex = 14;
            this.label7.Text = "Ürün Adı :";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.SystemColors.ControlDarkDark;
            this.label6.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label6.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label6.ForeColor = System.Drawing.SystemColors.Menu;
            this.label6.Location = new System.Drawing.Point(21, 96);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(38, 14);
            this.label6.TabIndex = 12;
            this.label6.Text = "Kdv :";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.ControlDarkDark;
            this.label1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.label1.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.ForeColor = System.Drawing.SystemColors.Menu;
            this.label1.Location = new System.Drawing.Point(21, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(99, 14);
            this.label1.TabIndex = 2;
            this.label1.Text = "Ürün Barkodu :";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label16.ForeColor = System.Drawing.SystemColors.Menu;
            this.label16.Location = new System.Drawing.Point(667, 102);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(73, 14);
            this.label16.TabIndex = 45;
            this.label16.Text = "Beden No :";
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label17.ForeColor = System.Drawing.SystemColors.Menu;
            this.label17.Location = new System.Drawing.Point(695, 138);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(43, 14);
            this.label17.TabIndex = 47;
            this.label17.Text = "Cinsi :";
            // 
            // Cins
            // 
            this.Cins.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.Cins.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Cins.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Cins.ForeColor = System.Drawing.SystemColors.Info;
            this.Cins.Location = new System.Drawing.Point(754, 135);
            this.Cins.Name = "Cins";
            this.Cins.Size = new System.Drawing.Size(133, 21);
            this.Cins.TabIndex = 48;
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label18.ForeColor = System.Drawing.SystemColors.Menu;
            this.label18.Location = new System.Drawing.Point(660, 177);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(79, 14);
            this.label18.TabIndex = 49;
            this.label18.Text = "Özel kod 1 :";
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label19.ForeColor = System.Drawing.SystemColors.Menu;
            this.label19.Location = new System.Drawing.Point(659, 212);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(80, 14);
            this.label19.TabIndex = 51;
            this.label19.Text = "Özel Kod 2 :";
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label20.ForeColor = System.Drawing.SystemColors.Menu;
            this.label20.Location = new System.Drawing.Point(637, 247);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(103, 14);
            this.label20.TabIndex = 54;
            this.label20.Text = "Son Kul. Tarihi :";
            // 
            // toolStrip1
            // 
            this.toolStrip1.BackColor = System.Drawing.Color.Gray;
            this.toolStrip1.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Btn_Araclar,
            this.toolStripSeparator1,
            this.toolStripLabel5,
            this.Btn_Ekle,
            this.toolStripLabel4,
            this.Btn_Sil,
            this.toolStripLabel3,
            this.Btn_Duzenle,
            this.toolStripLabel2,
            this.Btn_Kaydet,
            this.toolStripLabel1,
            this.Btn_iptal,
            this.toolStripLabel6,
            this.toolStripTextBox1});
            this.toolStrip1.LayoutStyle = System.Windows.Forms.ToolStripLayoutStyle.HorizontalStackWithOverflow;
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional;
            this.toolStrip1.Size = new System.Drawing.Size(1164, 25);
            this.toolStrip1.TabIndex = 78;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // Btn_Araclar
            // 
            this.Btn_Araclar.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.Btn_Araclar.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.yeniÜrünEkleToolStripMenuItem,
            this.yeniÜrünKategorisiEkleToolStripMenuItem,
            this.yeniBirimTipToolStripMenuItem,
            this.yeniTedarikçiToolStripMenuItem,
            this.yeniKasaToolStripMenuItem});
            this.Btn_Araclar.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Btn_Araclar.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.Btn_Araclar.Image = ((System.Drawing.Image)(resources.GetObject("Btn_Araclar.Image")));
            this.Btn_Araclar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Btn_Araclar.Name = "Btn_Araclar";
            this.Btn_Araclar.Size = new System.Drawing.Size(66, 22);
            this.Btn_Araclar.Text = "Araçlar";
            // 
            // yeniÜrünEkleToolStripMenuItem
            // 
            this.yeniÜrünEkleToolStripMenuItem.Name = "yeniÜrünEkleToolStripMenuItem";
            this.yeniÜrünEkleToolStripMenuItem.Size = new System.Drawing.Size(199, 22);
            this.yeniÜrünEkleToolStripMenuItem.Text = "Kritik Stok Raporları";
            this.yeniÜrünEkleToolStripMenuItem.Click += new System.EventHandler(this.yeniÜrünEkleToolStripMenuItem_Click);
            // 
            // yeniÜrünKategorisiEkleToolStripMenuItem
            // 
            this.yeniÜrünKategorisiEkleToolStripMenuItem.Name = "yeniÜrünKategorisiEkleToolStripMenuItem";
            this.yeniÜrünKategorisiEkleToolStripMenuItem.Size = new System.Drawing.Size(199, 22);
            this.yeniÜrünKategorisiEkleToolStripMenuItem.Text = "Yeni Ürün Kategorisi";
            this.yeniÜrünKategorisiEkleToolStripMenuItem.Click += new System.EventHandler(this.yeniÜrünKategorisiEkleToolStripMenuItem_Click);
            // 
            // yeniBirimTipToolStripMenuItem
            // 
            this.yeniBirimTipToolStripMenuItem.Name = "yeniBirimTipToolStripMenuItem";
            this.yeniBirimTipToolStripMenuItem.Size = new System.Drawing.Size(199, 22);
            this.yeniBirimTipToolStripMenuItem.Text = "Yeni Birim Tip";
            this.yeniBirimTipToolStripMenuItem.Click += new System.EventHandler(this.yeniBirimTipToolStripMenuItem_Click);
            // 
            // yeniTedarikçiToolStripMenuItem
            // 
            this.yeniTedarikçiToolStripMenuItem.Name = "yeniTedarikçiToolStripMenuItem";
            this.yeniTedarikçiToolStripMenuItem.Size = new System.Drawing.Size(199, 22);
            this.yeniTedarikçiToolStripMenuItem.Text = "Yeni Tedarikçi";
            this.yeniTedarikçiToolStripMenuItem.Click += new System.EventHandler(this.yeniTedarikçiToolStripMenuItem_Click);
            // 
            // yeniKasaToolStripMenuItem
            // 
            this.yeniKasaToolStripMenuItem.Name = "yeniKasaToolStripMenuItem";
            this.yeniKasaToolStripMenuItem.Size = new System.Drawing.Size(199, 22);
            this.yeniKasaToolStripMenuItem.Text = "Yeni Kasa";
            this.yeniKasaToolStripMenuItem.Click += new System.EventHandler(this.yeniKasaToolStripMenuItem_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.BackColor = System.Drawing.Color.Black;
            this.toolStripSeparator1.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripLabel5
            // 
            this.toolStripLabel5.Name = "toolStripLabel5";
            this.toolStripLabel5.Size = new System.Drawing.Size(10, 22);
            this.toolStripLabel5.Text = " ";
            // 
            // Btn_Ekle
            // 
            this.Btn_Ekle.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Btn_Ekle.ForeColor = System.Drawing.Color.WhiteSmoke;
            this.Btn_Ekle.Image = ((System.Drawing.Image)(resources.GetObject("Btn_Ekle.Image")));
            this.Btn_Ekle.ImageTransparentColor = System.Drawing.Color.Indigo;
            this.Btn_Ekle.Name = "Btn_Ekle";
            this.Btn_Ekle.Size = new System.Drawing.Size(52, 22);
            this.Btn_Ekle.Tag = "Ekle";
            this.Btn_Ekle.Text = "EKLE";
            this.Btn_Ekle.Click += new System.EventHandler(this.Btn_Ekle_Click);
            // 
            // toolStripLabel4
            // 
            this.toolStripLabel4.Name = "toolStripLabel4";
            this.toolStripLabel4.Size = new System.Drawing.Size(10, 22);
            this.toolStripLabel4.Text = " ";
            // 
            // Btn_Sil
            // 
            this.Btn_Sil.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Btn_Sil.ForeColor = System.Drawing.Color.WhiteSmoke;
            this.Btn_Sil.Image = ((System.Drawing.Image)(resources.GetObject("Btn_Sil.Image")));
            this.Btn_Sil.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Btn_Sil.Name = "Btn_Sil";
            this.Btn_Sil.Size = new System.Drawing.Size(44, 22);
            this.Btn_Sil.Text = "SİL";
            this.Btn_Sil.Click += new System.EventHandler(this.Btn_Sil_Click);
            // 
            // toolStripLabel3
            // 
            this.toolStripLabel3.Name = "toolStripLabel3";
            this.toolStripLabel3.Size = new System.Drawing.Size(10, 22);
            this.toolStripLabel3.Text = " ";
            // 
            // Btn_Duzenle
            // 
            this.Btn_Duzenle.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Btn_Duzenle.ForeColor = System.Drawing.Color.WhiteSmoke;
            this.Btn_Duzenle.Image = ((System.Drawing.Image)(resources.GetObject("Btn_Duzenle.Image")));
            this.Btn_Duzenle.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Btn_Duzenle.Name = "Btn_Duzenle";
            this.Btn_Duzenle.Size = new System.Drawing.Size(78, 22);
            this.Btn_Duzenle.Tag = "Düzenle";
            this.Btn_Duzenle.Text = "DÜZENLE";
            this.Btn_Duzenle.Click += new System.EventHandler(this.Btn_Duzenle_Click);
            // 
            // toolStripLabel2
            // 
            this.toolStripLabel2.Name = "toolStripLabel2";
            this.toolStripLabel2.Size = new System.Drawing.Size(10, 22);
            this.toolStripLabel2.Text = " ";
            // 
            // Btn_Kaydet
            // 
            this.Btn_Kaydet.Enabled = false;
            this.Btn_Kaydet.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Btn_Kaydet.ForeColor = System.Drawing.Color.WhiteSmoke;
            this.Btn_Kaydet.Image = ((System.Drawing.Image)(resources.GetObject("Btn_Kaydet.Image")));
            this.Btn_Kaydet.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Btn_Kaydet.Name = "Btn_Kaydet";
            this.Btn_Kaydet.Size = new System.Drawing.Size(70, 22);
            this.Btn_Kaydet.Text = "KAYDET";
            this.Btn_Kaydet.Click += new System.EventHandler(this.Btn_Kaydet_Click);
            // 
            // toolStripLabel1
            // 
            this.toolStripLabel1.Name = "toolStripLabel1";
            this.toolStripLabel1.Size = new System.Drawing.Size(10, 22);
            this.toolStripLabel1.Text = " ";
            // 
            // Btn_iptal
            // 
            this.Btn_iptal.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.Btn_iptal.ForeColor = System.Drawing.Color.WhiteSmoke;
            this.Btn_iptal.Image = ((System.Drawing.Image)(resources.GetObject("Btn_iptal.Image")));
            this.Btn_iptal.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Btn_iptal.Name = "Btn_iptal";
            this.Btn_iptal.Size = new System.Drawing.Size(58, 22);
            this.Btn_iptal.Text = "İPTAL";
            this.Btn_iptal.Click += new System.EventHandler(this.toolStripButton5_Click);
            // 
            // toolStripLabel6
            // 
            this.toolStripLabel6.Name = "toolStripLabel6";
            this.toolStripLabel6.Size = new System.Drawing.Size(64, 22);
            this.toolStripLabel6.Text = "                   ";
            // 
            // toolStripTextBox1
            // 
            this.toolStripTextBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.toolStripTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.toolStripTextBox1.Enabled = false;
            this.toolStripTextBox1.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.toolStripTextBox1.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.toolStripTextBox1.Name = "toolStripTextBox1";
            this.toolStripTextBox1.Size = new System.Drawing.Size(420, 25);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.StokCikis);
            this.panel1.Controls.Add(this.button3);
            this.panel1.Controls.Add(this.button2);
            this.panel1.Controls.Add(this.StokGirisi);
            this.panel1.Location = new System.Drawing.Point(934, 34);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(220, 332);
            this.panel1.TabIndex = 79;
            // 
            // StokCikis
            // 
            this.StokCikis.BackColor = System.Drawing.Color.LightSteelBlue;
            this.StokCikis.FlatAppearance.BorderSize = 0;
            this.StokCikis.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.StokCikis.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.StokCikis.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.StokCikis.Location = new System.Drawing.Point(14, 87);
            this.StokCikis.Name = "StokCikis";
            this.StokCikis.Size = new System.Drawing.Size(180, 57);
            this.StokCikis.TabIndex = 92;
            this.StokCikis.Text = "Stok Çıkışı Yap";
            this.StokCikis.UseVisualStyleBackColor = false;
            this.StokCikis.Click += new System.EventHandler(this.StokCikis_Click);
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.RoyalBlue;
            this.button3.FlatAppearance.BorderSize = 0;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.button3.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.button3.Location = new System.Drawing.Point(14, 232);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(180, 69);
            this.button3.TabIndex = 91;
            this.button3.Text = "Seçili Ürüne Barkod Bas";
            this.button3.UseVisualStyleBackColor = false;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.Color.CornflowerBlue;
            this.button2.FlatAppearance.BorderSize = 0;
            this.button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button2.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.button2.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.button2.Location = new System.Drawing.Point(14, 158);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(180, 63);
            this.button2.TabIndex = 90;
            this.button2.Text = "Tüm Ürünleri Yazdır";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // StokGirisi
            // 
            this.StokGirisi.BackColor = System.Drawing.Color.Lavender;
            this.StokGirisi.FlatAppearance.BorderSize = 0;
            this.StokGirisi.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.StokGirisi.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.StokGirisi.ForeColor = System.Drawing.Color.White;
            this.StokGirisi.Location = new System.Drawing.Point(14, 15);
            this.StokGirisi.Name = "StokGirisi";
            this.StokGirisi.Size = new System.Drawing.Size(180, 57);
            this.StokGirisi.TabIndex = 89;
            this.StokGirisi.Text = "Stok Girişi Yap";
            this.StokGirisi.UseVisualStyleBackColor = false;
            this.StokGirisi.Click += new System.EventHandler(this.StokGirisi_Click);
            // 
            // marketOOPDataSet1
            // 
            this.marketOOPDataSet1.DataSetName = "MarketOOPDataSet";
            this.marketOOPDataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // urunlerTableAdapter
            // 
            this.urunlerTableAdapter.ClearBeforeFill = true;
            // 
            // urunlerTableAdapter1
            // 
            this.urunlerTableAdapter1.ClearBeforeFill = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.WindowFrame;
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle7.BackColor = System.Drawing.SystemColors.WindowFrame;
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            dataGridViewCellStyle7.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle7.SelectionBackColor = System.Drawing.SystemColors.ControlDark;
            dataGridViewCellStyle7.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView1.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle7;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle8.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle8.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            dataGridViewCellStyle8.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle8.SelectionBackColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle8.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle8.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridView1.DefaultCellStyle = dataGridViewCellStyle8;
            this.dataGridView1.Location = new System.Drawing.Point(13, 372);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            dataGridViewCellStyle9.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle9.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            dataGridViewCellStyle9.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle9.SelectionBackColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle9.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle9.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView1.RowHeadersDefaultCellStyle = dataGridViewCellStyle9;
            this.dataGridView1.RowTemplate.DefaultCellStyle.BackColor = System.Drawing.Color.Teal;
            this.dataGridView1.RowTemplate.DefaultCellStyle.ForeColor = System.Drawing.Color.White;
            this.dataGridView1.RowTemplate.DefaultCellStyle.SelectionBackColor = System.Drawing.Color.LightSeaGreen;
            this.dataGridView1.RowTemplate.DefaultCellStyle.SelectionForeColor = System.Drawing.Color.White;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(1139, 295);
            this.dataGridView1.TabIndex = 80;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellClick);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // errorProvider1
            // 
            this.errorProvider1.ContainerControl = this;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.ClientSize = new System.Drawing.Size(1164, 679);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.panel2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.KritikStokMiktar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BedenNo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.OzelKod2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.OzelKod1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.k_KartFiyat)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.SatisFiyat3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Satis_Fiyat2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.urunlerBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.marketOOPDataSet)).EndInit();
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.marketOOPDataSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.NumericUpDown k_KartFiyat;
        private System.Windows.Forms.NumericUpDown SatisFiyat3;
        private System.Windows.Forms.NumericUpDown Satis_Fiyat2;
        private System.Windows.Forms.DateTimePicker SonKullTarih;
        private System.Windows.Forms.Button Yuzde18;
        private System.Windows.Forms.Button Yuzde8;
        private System.Windows.Forms.Button yuzdebir;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.TextBox StokMiktar;
        private System.Windows.Forms.TextBox KDVORAN;
        private System.Windows.Forms.TextBox SatisFiyat;
        public System.Windows.Forms.TextBox Barkod;
        private System.Windows.Forms.TextBox textBox8;
        public System.Windows.Forms.TextBox kdv;
        public System.Windows.Forms.TextBox Birim_Alis_Fiyat;
        private System.Windows.Forms.TextBox textBox4;
        public System.Windows.Forms.TextBox UrunAdi;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label10;
        public System.Windows.Forms.TextBox Sınıfı;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.TextBox Cins;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripSplitButton Btn_Araclar;
        private System.Windows.Forms.ToolStripMenuItem yeniÜrünEkleToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripLabel toolStripLabel5;
        private System.Windows.Forms.ToolStripButton Btn_Ekle;
        private System.Windows.Forms.ToolStripLabel toolStripLabel4;
        private System.Windows.Forms.ToolStripButton Btn_Sil;
        private System.Windows.Forms.ToolStripLabel toolStripLabel3;
        private System.Windows.Forms.ToolStripButton Btn_Duzenle;
        private System.Windows.Forms.ToolStripLabel toolStripLabel2;
        private System.Windows.Forms.ToolStripButton Btn_Kaydet;
        private System.Windows.Forms.ToolStripLabel toolStripLabel1;
        private System.Windows.Forms.ToolStripButton Btn_iptal;
        private System.Windows.Forms.ToolStripLabel toolStripLabel6;
        private System.Windows.Forms.ToolStripTextBox toolStripTextBox1;
        private System.Windows.Forms.Panel panel1;
       
        private System.Windows.Forms.Button StokCikis;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button StokGirisi;
        private DataSets.MarketOOPDataSet marketOOPDataSet;
        private System.Windows.Forms.BindingSource urunlerBindingSource;
        private DataSets.MarketOOPDataSetTableAdapters.UrunlerTableAdapter urunlerTableAdapter;
        private DataSets.MarketOOPDataSet marketOOPDataSet1;
        
       
        private DataSets.MarketOOPDataSetTableAdapters.UrunlerTableAdapter urunlerTableAdapter1;
        private System.Windows.Forms.ComboBox UrunKategorisi;
        private System.Windows.Forms.ComboBox BirimTip;
        private System.Windows.Forms.ComboBox Tedarikci;
        private System.Windows.Forms.DataGridView dataGridView1;
        //private System.Windows.Forms.DataGridViewTextBoxColumn satisFiyati3DataGridViewTextBoxColumn;
       // private System.Windows.Forms.DataGridViewTextBoxColumn kritikStokMiktariDataGridViewTextBoxColumn;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.NumericUpDown BedenNo;
        private System.Windows.Forms.NumericUpDown OzelKod2;
        private System.Windows.Forms.NumericUpDown OzelKod1;
        private System.Windows.Forms.NumericUpDown KritikStokMiktar;
        private System.Windows.Forms.ErrorProvider errorProvider1;
        private System.Windows.Forms.ToolStripMenuItem yeniÜrünKategorisiEkleToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem yeniBirimTipToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem yeniTedarikçiToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem yeniKasaToolStripMenuItem;
    }
}

