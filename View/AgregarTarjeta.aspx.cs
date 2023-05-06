using m = BilleteraVirtual.Modelo;
using c = BilleteraVirtual.Controller;
using d = BilleteraVirtual.DataBaseHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BilleteraVirtual.View
{
    public partial class AgregarTarjeta : System.Web.UI.Page
    {
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            m.TarjetaModelo  nuevaTarjeta = new m.TarjetaModelo();

            
            nuevaTarjeta.Banco = SelectBanco.Value;
            nuevaTarjeta.Emisor = SelectEntidad.Value;
            if (nuevaTarjeta.Emisor == "Visa")
                nuevaTarjeta.Foto = "https://w7.pngwing.com/pngs/49/82/png-transparent-credit-card-visa-logo-mastercard-bank-mastercard-blue-text-rectangle.png\r\n";
            if (nuevaTarjeta.Emisor == "Master Card")
                nuevaTarjeta.Foto = "https://w7.pngwing.com/pngs/962/794/png-transparent-mastercard-credit-card-mastercard-logo-mastercard-logo-love-text-heart-thumbnail.png\r\n";
            if (nuevaTarjeta.Emisor == "American Express")
                nuevaTarjeta.Foto = "data:image/png;base64,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\r\n";

            nuevaTarjeta.Dueno = inputDueno.Value;
            nuevaTarjeta.NTarjeta = inputNTarjeta.Value;
            nuevaTarjeta.CVV = inputCVV.Value;
            nuevaTarjeta.FechaExp = DateTime.Parse(inputExp.Value);

            List<m.TarjetaModelo> tarjeta = (List<m.TarjetaModelo>)Session["Tarjeta"];
            if (tarjeta == null)
            {
                tarjeta = new List<m.TarjetaModelo>();
            }

          
            tarjeta.Add(nuevaTarjeta);

         
            Session["Tarjeta"] = tarjeta;

            d.dataBase BaseGuardar = new d.dataBase();

            BaseGuardar.GuardarTarjeta(nuevaTarjeta);


           
            lblMensaje.Text = "La tarjeta ha sido guardada exitosamente.";

            Response.Redirect("MostrarTarjetas.aspx");



        }

    }
}