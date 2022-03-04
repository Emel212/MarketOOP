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
    public class PersonelORM : ORMBase<Personeller>
    {
        public static Personeller AktifKullanici;
        public Personeller GirisYap(Personeller p)
        {
            SqlDataAdapter adp = new SqlDataAdapter("prc_Personeller_Giris",Tools.Connection);
            adp.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;

            adp.SelectCommand.Parameters.AddWithValue("@Adi", p.Adi);
            adp.SelectCommand.Parameters.AddWithValue("@Sifre", p.Sifre);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
                return null;
            Personeller aktif = new Personeller();
            foreach (DataRow dr in dt.Rows)
            {
                aktif.Id = (int)dr["id"];
                aktif.Adi = dr["Adi"].ToString();
                aktif.Soyadi = dr["Soyadi"].ToString();
                aktif.Sifre = dr["Sifre"].ToString();
                aktif.Unvan = dr["Unvan"].ToString();
            }
            return aktif;


        }
    }
}
