using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BilleteraVirtual.Modelo
{
    public class TarjetaModelo
    {

        public string Id { get; set; }

        public string Foto { get; set; }

        public string Banco { get; set; }

        public string Emisor { get; set; }

        public string Dueno { get; set; }

        public string NTarjeta { get; set; }

        public string CVV { get; set; }

       public DateTime FechaExp { get; set; }
    }


}
   
