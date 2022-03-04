using Mimari.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Mimari.ORM.Facade
{
    public class SatisDetayORM:ORMBase<SatisDetay>
    {

        public static DataTable SelectSonSatis()
        {
            SqlDataAdapter adp = new SqlDataAdapter("prc_SatisDetay_SonSatis",Tools.Connection);
            adp.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            adp.Fill(dt);
            return dt;

        }
        
    }
}
