using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Reflection;
using System.Data;

using System.Windows.Forms;

namespace Mimari.ORM
{
    public class Tools
    {
        private static SqlConnection connection;

        public static SqlConnection Connection
        {
            get
            {
                if (connection == null)

                    connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);

                return connection;
            }
        }

        public static void CreateParameter<T>(SqlCommand cmd, CommandName ct, T ent)
        {
            PropertyInfo[] properties = typeof(T).GetProperties();
            foreach (PropertyInfo property in properties)
            {
                string name = property.Name;
                if (name.ToLower() == "id" || name.ToLower() == "ıd" && ct == CommandName.Insert)
                {
                    continue;
                }
                else if (name != "Id" && ct == CommandName.Delete)
                {
                    continue;
                }
                object value = property.GetValue(ent);

                cmd.Parameters.AddWithValue("@" + name, value);
            }
        }
        public static bool Exec(SqlCommand cmd)
        {
            try
            {
                if (cmd.Connection.State != ConnectionState.Open)
                    cmd.Connection.Open();
                int etk = cmd.ExecuteNonQuery();
                return etk > 0 ? true : false;
            }
            catch (Exception z)
            {
                MessageBox.Show(z.ToString());
                return false;
            }
            finally
            {
                if(cmd.Connection.State!=ConnectionState.Closed)
                connection.Close();
            }
        }

        public static object ExecScalar(SqlCommand cmd)
        {
            try
            {
                if (cmd.Connection.State != ConnectionState.Open)
                    cmd.Connection.Open();
                return cmd.ExecuteScalar();
            }
            catch (Exception x)
            {
                MessageBox.Show(x.ToString());
                return 0;
            }
            finally
            {
                if(cmd.Connection.State!=ConnectionState.Closed)
                {
                    cmd.Connection.Close();
                }
            }
        }
        public static void ExecuteReader(SqlCommand cmd)
        {
            
            int etk = 0;
            try
            {
                if (cmd.Connection.State == ConnectionState.Closed)
                {
                    cmd.Connection.Open();
                }
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    etk++;
                }
            }
            catch (Exception x)
            {
                MessageBox.Show("Bir hata oluştu!" + x.ToString());
            }
            finally
            {
                if (etk > 0)
                {
                    MessageBox.Show("Kayıt Güncellendi!");
                }
                if (cmd.Connection.State == ConnectionState.Open)
                    cmd.Connection.Close();
            }
        }
    }
}
