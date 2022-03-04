using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mimari.Entity
{
   public class Personeller
    {
        public int Id { get; set; }
        public string Adi { get; set; }
        public string Soyadi { get; set; }
        public string Unvan { get; set; }
        public string Adres { get; set; }
        public string Telefon { get; set; }
        public string Aciklama { get; set; }
        public string Sifre { get; set; }
        public byte[] Fotograf { get; set; }

    }
}
