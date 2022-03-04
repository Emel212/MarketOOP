using Mimari.Entity;
using Mimari.ORM.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mimari.ORM.Facade
{
    public class BorclularORM:ORMBase<Borclular>
    {

        public static DataTable BorcluSatisDetay(SatisDetay s)
        {
            SqlDataAdapter adp = new SqlDataAdapter("prc_Borclular_SatisDetay", Tools.Connection);
            adp.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.AddWithValue("@SatisID", s.SatisID);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            return dt;
        }


    }
}
