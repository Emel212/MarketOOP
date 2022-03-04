using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Mimari.ORM
{
    public interface IORM<T> where T : class
    {
        DataTable Select();
        bool Insert(T entity);
        bool Delete(T entity);
        bool Update(T entity);
        object InsertScalar(T entity);



    }
}
