using BilleteraVirtual.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using c = BilleteraVirtual.Controller;

namespace BilleteraVirtual.View
{
    public partial class MostrarTarjetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            c.TarjetasController TarjetasController = new c.TarjetasController();

            repTarjetas.DataSource = TarjetasController.GetTarjetas();
            repTarjetas.DataBind();

        }
    }
}