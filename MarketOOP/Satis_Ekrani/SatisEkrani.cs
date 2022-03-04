using Mimari.Entity;
using Mimari.ORM;
using Mimari.ORM.Facade;
using System;
using System.Windows.Forms;
using Microsoft.VisualBasic;

namespace MarketOOP
{
    public partial class SatisEkrani : Form
    {
        public SatisEkrani()
        {
            InitializeComponent();
        }
       
        SatisORM satisOrm = new SatisORM();
     
        Satis satis = new Satis();
        SatisDetayORM sdOrm = new SatisDetayORM();
        string tiklanan;
        double sum;

        void Tiklanan(Control p)
        {
            foreach (Control c in p.Controls)
            {
                if (c.Focused)
                {
                    tiklanan = (c).Name;
                }
            }
        }

        private void flowLayoutPanel1_MouseEnter(object sender, EventArgs e)
        {
            Tiklanan(panel2);
        }
        void Klavye(string number)
        {
            foreach (Control c in panel2.Controls)
            {
                if(c.Name==tiklanan&&number!=string.Empty)
                {
                    c.Text += number;
                }else if(c.Name == tiklanan && number == string.Empty&&c.Text!="")
                {
                    (c).Text = (c).Text.Remove((c).Text.Length - 1);
                }
            }        
        }
        
        private void button2_Click(object sender, EventArgs e)
        {
            Klavye("1");
           
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Klavye("2");
        }

        private void button10_Click(object sender, EventArgs e)
        {
            Klavye("3");
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Klavye("4");
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Klavye("5");
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Klavye("6");
        }

        private void button7_Click(object sender, EventArgs e)
        {
            Klavye("7");
        }

        private void button8_Click(object sender, EventArgs e)
        {
            Klavye("8");
        }

        private void button9_Click(object sender, EventArgs e)
        {
            Klavye("9");
        }
        private void button11_Click(object sender, EventArgs e)
        {
            Klavye("0");
        }
        private void button12_Click(object sender, EventArgs e)
        {
            Klavye(",");
        }
        private void sil_Click(object sender, EventArgs e)
        {
            Klavye(string.Empty);
        }

        private void SatisEkrani_Load(object sender, EventArgs e)
        {
            dataGridView1.AutoGenerateColumns = false;
            Tarih.Text = DateTime.Now.Day.ToString() + "/" + DateTime.Now.Month + "/" + DateTime.Now.Year.ToString ();
            dataGridView2.DataSource = UrunlerORM.UrunResmiSelect();
            if(PersonelORM.AktifKullanici!=null)
            {
                Kullanici.Text = PersonelORM.AktifKullanici.Adi +" "+ PersonelORM.AktifKullanici.Soyadi;
            }
            
            KasaORM kOrm = new KasaORM();
            comboBox1.DataSource = kOrm.Select();
            comboBox1.DisplayMember = "Adi";
            comboBox1.ValueMember = "id";
        }

        private void UrunBul_Click(object sender, EventArgs e)
        {
            if(aktif!=null)
            {
                UrunDetay urunDetay = new UrunDetay();
                urunDetay.barkod = Barkod.Text;
                urunDetay.Show();
            }
           
            
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            Saat.Text = DateTime.Now.Hour.ToString() + ":" + DateTime.Now.Minute.ToString() + ":" + DateTime.Now.Second.ToString();
        }
        public static int sId;
        Urunler aktif;
        
        private void Barkod_TextChanged(object sender, EventArgs e)
        {
            sum = 0;
            double topfiyat;
            if (Barkod.Text.Length == 13 )
            {

                UrunlerORM uOrm = new UrunlerORM();
                Urunler u = new Urunler();
                u.Barkod = Barkod.Text;
                 aktif=uOrm.UrunID(u);
                if (aktif == null)
                {
                    MessageBox.Show("Urun Barkodu Bulunamadı");
                }
                else
                {
                    topfiyat =((double)aktif.SatisFiyat + aktif.Kdv) *(int) adet.Value;

                    dataGridView1.Rows.Add(aktif.Barkod,aktif.UrunAdi, adet.Value, topfiyat, aktif.Kdv,aktif.Id);
                    foreach (DataGridViewRow dr in dataGridView1.Rows)
                    {
                        if (dr.Cells["Fiyat"] != null)
                        {
                            sum += Convert.ToDouble(dr.Cells["Fiyat"].Value);

                        }
                    }
                    ToplamFiyat.Text = "TOPLAM: " + Convert.ToString(sum) + " TL";
                    Fisno.Text = sId.ToString();

                }   
            }
        }

        private void toolStripButton10_Click(object sender, EventArgs e)
        {
            IslemiOnayla.Enabled = false;
            toolStripButton7.Enabled = true;
            toolStripButton8.Enabled = false;
            toolStripButton11.Enabled = false;
           
        
            try
            {

                toolStripButton1.Enabled = true;
                KullaniciORM kuOrm = new KullaniciORM();
                Kullanici user = new Kullanici();
                user.KasaID = (int)comboBox1.SelectedValue;
                user.PersonelID = PersonelORM.AktifKullanici.Id;
                user.Tarih = DateTime.Now;
                int uId = Convert.ToInt32(kuOrm.InsertScalar(user));
                if (uId > 0)
                {
                    UrunlerORM.UrunId = aktif;
                    satis.KullaniciID = uId;
                    satis.SatisTarihi = DateTime.Now;

                    sId = Convert.ToInt32(satisOrm.InsertScalar(satis));


                }
                if (sId > 0)
                {
                    foreach (DataGridViewRow dr in dataGridView1.Rows)
                    {
                        try
                        {
                            SatisDetay satisDetay = new SatisDetay();
                            satisDetay.SatisID = sId;
                            satisDetay.UrunID = Convert.ToInt32(dr.Cells["UrunID"].Value);
                            satisDetay.Adet = Convert.ToInt32(dr.Cells["Miktar"].Value);              satisDetay.Fiyat = Convert.ToInt32(dr.Cells["Fiyat"].Value);
                            sdOrm.Insert(satisDetay);
                            string sonuc;
                            SatisORM.GunlukSatisMiktari(out sonuc);
                            toolStripTextBox1.Text = "    bugun " + sonuc + " kez satis islemi yapildi ";
                        }
                        catch(Exception x)
                        {
                            MessageBox.Show(x.ToString()) ;
                        }
                        finally
                        {
                            label6.Text = sId.ToString();
                            toolStripButton3.Enabled = true;
                          

                        }
                
                    }

                }
            }
            catch(Exception)
            {
                if(dataGridView1.Rows.Count<1)
                {
                    return;
                }
            }
        }

        private void toolStripButton9_Click(object sender, EventArgs e)
        {
           
            dataGridView1.DataSource = SatisDetayORM.SelectSonSatis();

        }

        private void dataGridView2_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            Barkod.Text = dataGridView2.Rows[e.RowIndex].Cells["UrunBarkod"].Value.ToString();
        }

        private void Barkod_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.Handled = !char.IsNumber(e.KeyChar) && !char.IsControl(e.KeyChar))
            
                Barkod.Text = "";
            
        }
        int row;
        private void toolStripButton11_Click(object sender, EventArgs e)
        {
            try
            {
                if (dataGridView1.SelectedRows == null)
                    MessageBox.Show("Lütfen iptal edilecek ürünü seçiniz");
                dataGridView1.Rows.RemoveAt(row);

            }
            catch (Exception)
            {

                return;
            }
          
        }
      
        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            row = dataGridView1.Rows[e.RowIndex].Index;
        }

        private void toolStripButton13_Click(object sender, EventArgs e)
        {
            IslemiOnayla.Enabled = true;
            toolStripButton7.Enabled = true;
            toolStripButton8.Enabled = true;
            toolStripButton11.Enabled = true;
            dataGridView1.DataSource =null;
            label6.Text="0";
                //dataGridView1.Columns["UrunID"].Visible = false;
                for (int i = 0; i <= dataGridView1.Rows.Count; i++)
                {
                    if(dataGridView1.Rows.Count>-1)
                    {
                         foreach (DataGridViewRow rows in this.dataGridView1.Rows)
                         {
                             dataGridView1.Rows.Remove(rows);
                         }
                    }
                   
                }
        }

        private void toolStrip2_MouseEnter(object sender, EventArgs e)
        {
            Tiklanan(panel2);
        }
       fis fis = new fis();
        public string Nakit;
        private void toolStripButton7_Click(object sender, EventArgs e)
        {
            fis.SatisTuru = "Peşin";
            Nakit = Interaction.InputBox("Nakit Ücretini giriniz", "Peşin Ödeme");
            fis.Nakit = Nakit;
        }

        private void toolStripButton8_Click(object sender, EventArgs e)
        {
            fis.SatisTuru = "Pos";
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
           if (fis.SatisTuru != "")
            {
                fis.ShowDialog();
            }
            //else MessageBox.Show("Satış türü(Nakit/Pos) bilgisini giriniz");
           
        }

        private void toolStripButton3_Click(object sender, EventArgs e)
        {
         
            VeresiyeEkle ekle = new VeresiyeEkle();
            ekle.Show();
        }

        private void toolStripButton4_Click(object sender, EventArgs e)
        {
            VeresiyeDefteri vd = new VeresiyeDefteri();
            vd.Show();
        }

        private void SatisEkrani_Activated(object sender, EventArgs e)
        {
            PersonelGirisEkrani pg = new PersonelGirisEkrani();
            pg.Close();
        }
    }
    
}
