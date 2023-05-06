using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using m = BilleteraVirtual.Modelo;

namespace BilleteraVirtual.DataBaseHelper
{
    public class dataBase
    {
        const string database = "Billetera";
        const string server = "localhost";
        SqlConnection connection = new SqlConnection($"Data Source={server};Initial Catalog={database};Integrated Security=True");
        string cnn = $"Data Source={server};Initial Catalog={database};Integrated Security=True";

        public DataTable GetTarjetas()
        {
            return ExecuteQuery("[dbo].[GetTarjetas]", null);
        }



        public DataTable ExecuteQuery(string storedProcedure, List<SqlParameter> param)
        {
            try
            {
                DataTable ds = new DataTable();

                using (SqlConnection connection = new SqlConnection(cnn))
                {
                    connection.Open();
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storedProcedure;

                    if (param != null)
                    {
                        foreach (SqlParameter p in param)
                        {
                            cmd.Parameters.Add(p);
                        }
                    }

                    cmd.ExecuteNonQuery();

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(ds);
                }

                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public void GuardarTarjeta(m.TarjetaModelo tarjeta)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                
                new SqlParameter("@Foto", tarjeta.Foto),
                new SqlParameter("@Banco", tarjeta.Banco),
                new SqlParameter("@Emisor", tarjeta.Emisor),
                new SqlParameter("@Dueno", tarjeta.Dueno),
                new SqlParameter("@NTarjeta", tarjeta.NTarjeta),
                new SqlParameter("@CVV", tarjeta.CVV),
                new SqlParameter("@fechaExp", tarjeta.FechaExp),
                
            };

            ExecuteQuery("[dbo].[spGuardarTarjeta]", param);
        }

    }
}