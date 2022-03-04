using Mimari.Entity;
using Mimari.ORM;
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
    public partial class PersonelGirisEkrani : Form
    {
        public PersonelGirisEkrani()
        {
            InitializeComponent();
        }
        Personeller personel = new Personeller();
        PersonelORM pOrm = new PersonelORM();

        enum Unvan
        {
            Kasiyer,
            Mudur
        }
        private void button1_Click(object sender, EventArgs e)
        {
            personel.Adi = Btn_Ad.Text;
            personel.Sifre = Btn_Sifre.Text;
            Tools.FormTools.ClearAllText(this);
            Personeller aktif=pOrm.GirisYap(personel);
            if(aktif==null)
            {
                MessageBox.Show("Kullanıcı Adı Veya Şifre Hatalı");
            }
            else
            {
                PersonelORM.AktifKullanici = aktif;
                if (aktif.Unvan == Unvan.Kasiyer.ToString())
                {
                    SatisEkrani form = new SatisEkrani();

                    form.ShowDialog();
                    Tools.FormTools.ClearAllText(this);

                }
                else if (PersonelORM.AktifKullanici.Unvan == Unvan.Mudur.ToString())
                {
                    YoneticiPaneli yp = new YoneticiPaneli();
                 
                    yp.ShowDialog();
                    Tools.FormTools.ClearAllText(this);
                    
                }
            }
            
        }

        private void PersonelGirisEkrani_Load(object sender, EventArgs e)
        {
            // Controls.OfType<MdiClient>().FirstOrDefault().BackColor = Color.DarkViolet;
        }
    }
}
