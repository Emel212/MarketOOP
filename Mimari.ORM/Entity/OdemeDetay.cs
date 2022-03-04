using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mimari.ORM.Entity
{
   public  class OdemeDetay
    {
       
        public int SatisID { get; set; }
        public decimal OdenenTutar { get; set; }
        public int OdemeID { get; set; }
        public bool Odendi { get; set; }

        //public Nullable<decimal> OdenenTutar = null;



        //decimal? odenen=null;

        //use ?? operator to assign a nullable value to a non-nullable type
        //int ?k=null;
        //int k=i ?? 0;




    }
}
