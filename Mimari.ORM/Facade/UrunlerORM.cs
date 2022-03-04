
using Mimari.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Mimari.ORM
{
    public class UrunlerORM:ORMBase<Urunler>
    {
        //singleton pattern
        public static Urunler UrunId;
        
        public Urunler UrunID(Urunler u)
        {
            SqlDataAdapter adp = new SqlDataAdapter("prc_Urunler_UrunID", Tools.Connection);
            adp.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;

            adp.SelectCommand.Parameters.AddWithValue("@Barkod", u.Barkod);
          
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
                return null;
            Urunler aktif = new Urunler();
            foreach (DataRow dr in dt.Rows)
            {
                aktif.Id =(int) dr["id"];
                aktif.Barkod = dr["Barkod"].ToString();
                aktif.UrunAdi = dr["UrunAdi"].ToString();
                aktif.SatisFiyat =(decimal)dr["SatisFiyat"];
                aktif.Kdv =Convert.ToDouble(dr["Kdv"]);
                aktif.StokMiktari =(int)dr["StokMiktari"];
            
            }
            return aktif;
        }
        public static DataTable UrunResmiSelect()
        {
            SqlDataAdapter adp = new SqlDataAdapter("prc_Urunler_UrunResmi", Tools.Connection);
            adp.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            adp.Fill(dt);
            return dt;
        }
       
    }
}
