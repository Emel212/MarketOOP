using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mimari.ORM.Entity
{
    public class UrunStok
    {
        public string Barkod { get; set; }
        public int StokMiktari { get; set; }
        public string IslemTuru { get; set; }
    }
}
