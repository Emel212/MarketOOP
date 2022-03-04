using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mimari.Entity
{
   public class Kullanici
    {
        public int id { get; set; }
        public int PersonelID { get; set; }
        public int KasaID { get; set; }
        public DateTime Tarih { get; set; }

    }
}
