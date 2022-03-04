using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mimari.Entity
{
   public class Urunler
   {
        public int Id { get; set; }
        
        public string Barkod { get; set; }
        public string UrunAdi { get; set; }
        public decimal SatisFiyat { get; set; }
        public decimal BirimAlisFiyati { get; set; }
        public int BirimTipID { get; set; }
        public decimal SatisFiyati_2 { get; set; }
        public decimal SatisFiyati_3 { get; set; }
        public double Kdv { get; set; }
        public double KdvOrani { get; set; }
        public int KategoriID { get; set; }
        public int StokMiktari { get; set; }
        public int KritikStokMiktari { get; set; }
        public int TedarikciID { get; set; }
        public int Ozel_Kod1 { get; set; }
        public int Ozel_Kod2 { get; set; }
        public byte[] UrunResmi { get; set; } 
        public DateTime SonKullanmaTarihi { get; set; }
        public string Cinsi { get; set; }
        public string Sinifi { get; set; }
        public int BedenNo { get; set; }
        public bool Sonlandi { get; set; }
        public bool Aktif { get; set; }
       
    }
  










}
