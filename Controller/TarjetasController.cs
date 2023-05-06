using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using m = BilleteraVirtual.Modelo;


namespace BilleteraVirtual.Controller
{
    public class TarjetasController
    {
        public List<m.TarjetaModelo> GetTarjetas()
        {
            DataBaseHelper.dataBase db = new DataBaseHelper.dataBase();

            DataTable ds = db.GetTarjetas();

            return ConvertDSToList(ds);
        }

        public List<m.TarjetaModelo> ConvertDSToList(DataTable ds)
        {
            List<m.TarjetaModelo> TarjetaList = new List<m.TarjetaModelo>();

            foreach (DataRow row in ds.Rows)
            {
                TarjetaList.Add(new m.TarjetaModelo
                {
                    Id = row["Id"].ToString(),
                    Foto = row["Foto"].ToString(),
                    Banco = row["Banco"].ToString(),
                    Emisor = row["Emisor"].ToString(),
                    Dueno = row["Dueno"].ToString(),
                    NTarjeta = row["NTarjeta"].ToString(),
                    CVV = row["CVV"].ToString(),
                    FechaExp = Convert.ToDateTime(row["FechaExp"])
                   

                });
            }

            return TarjetaList;
        }

        //public class GuardarTarjetas
        //{
        //    public void GuardarTarjeta(m.TarjetaModelo tarjeta)
        //    {
        //        DataBaseHelper.dataBase db = new DataBaseHelper.dataBase();

        //        db.GuardarTarjeta(tarjeta);


        //    }

        //}




    }
}