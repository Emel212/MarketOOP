using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mimari.Entity;
using System.Data.SqlClient;


namespace Mimari.ORM
{
    public class ORMBase<TT> : IORM<TT> where TT : class
    {
        private string ClassName
        {
            get
            {
                return typeof(TT).Name;
            }
        }

        public bool Delete(TT entity)
        { 
            SqlCommand cmd = new SqlCommand(string.Format("prc_{0}_Delete", ClassName),Tools.Connection);
            cmd.CommandType = CommandType.StoredProcedure;
            Tools.CreateParameter<TT>(cmd, CommandName.Delete, entity);
            return Tools.Exec(cmd);
        }
    

        public bool Insert(TT entity)
        {
            SqlCommand cmd = new SqlCommand(string.Format("prc_{0}_Insert", ClassName), Tools.Connection);
            cmd.CommandType = CommandType.StoredProcedure;
            Tools.CreateParameter<TT>(cmd, CommandName.Insert, entity);
            return Tools.Exec(cmd);
        }

        public object InsertScalar(TT entity)
        {
            SqlCommand cmd = new SqlCommand(string.Format("prc_{0}_Insert", ClassName), Tools.Connection);
            cmd.CommandType = CommandType.StoredProcedure;
            Tools.CreateParameter<TT>(cmd, CommandName.Insert, entity);
            return Tools.ExecScalar(cmd);
        }

        public DataTable Select()
        {
            SqlDataAdapter adp = new SqlDataAdapter(string.Format("prc_{0}_Select",ClassName),Tools.Connection);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            adp.Fill(dt);
            return dt;
        }
        public bool Update(TT entity)
        {
            SqlCommand cmd = new SqlCommand(string.Format("prc_{0}_Update", ClassName), Tools.Connection);
            cmd.CommandType = CommandType.StoredProcedure;
            Tools.CreateParameter<TT>(cmd, CommandName.Update, entity);
            return Tools.Exec(cmd);
        }


    }
}
