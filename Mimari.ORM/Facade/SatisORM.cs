using Mimari.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Mimari.ORM.Facade
{
    public class SatisORM:ORMBase<Satis>
    {
        public static void GunlukSatisMiktari(out string sonuc)
        {
            
            SqlCommand cmd = new SqlCommand("prc_SatisDetay_GunlukSatisMiktari", Tools.Connection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Sonuc", SqlDbType.Int);
            cmd.Parameters["@Sonuc"].Direction = ParameterDirection.Output;
            Tools.Exec(cmd);
            sonuc = Convert.ToString(cmd.Parameters["@Sonuc"].Value);
        }
    }
}
