using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mimari.ORM.Entity
{
    public class Odeme
    {
        public int Id { get; set; }
        public int BorcluID { get; set; }
        public DateTime Tarih { get; set; }
    }
}
