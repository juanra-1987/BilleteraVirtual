<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarTarjeta.aspx.cs" Inherits="BilleteraVirtual.View.AgregarTarjeta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <link rel="stylesheet"
        id="theme_link"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.1.2/lux/bootstrap.min.css" />
    <link href="../css/Tarjetas.css" rel="stylesheet" />
    <script src="../js/site.js"></script>

    <title>Billetera Virtual</title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="card text-white bg-primary mb-3 mx-auto" style="max-width: 80rem;">
            <div class="card-header">Billetera Virtual</div>
            <div class="card-body">
                <h4 class="card-title">Ingrese su nuevo medio de Pago</h4>

                <fieldset>


                    <div id="Banco" class="form-group">
                        <label for="Banco" class="form-label mt-4">Seleccione su entidad Bancaria</label>
                        <select class="form-select" id="SelectBanco" runat="server">
                            <option>Banco Nacional</option>
                            <option>BCR</option>
                            <option>Banco Popular</option>
                            <option>Promerica</option>
                            <option>BAC</option>
                        </select>
                    </div>
                    <div id="Emisor" class="form-group">
                        <label for="exampleSelect1" class="form-label mt-4">Seleccione la entidad emisora</label>
                        <select class="form-select" id="SelectEntidad" runat="server">
                            <option>Master Card</option>
                            <option>Visa</option>
                            <option>American Express</option>

                        </select>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1" class="form-label mt-4">Password</label>
                        <input runat="server" type="password" class="form-control" id="inputCVV" placeholder="CVV" maxlength="3" pattern="[0-9]{3}" title="Debe ingresar solo 3 números sin espacios" required>
                    </div>


                    <div class="form-group">
                        <label class="col-form-label mt-4" for="inputDefault">Dueño de la Tarjeta:</label>
                        <input runat="server" type="text" class="form-control" placeholder="Juan Perez" id="inputDueno">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label mt-4" for="inputDefault">N° de la tarjeta:</label>
                        <input runat="server" type="text" class="form-control" placeholder="**** **** **** 1234" id="inputNTarjeta" pattern="[0-9]{16}" title="Debe ingresar solo 16 números" maxlength="16" required>
                    </div>



                    <div class="form-group">
                        <label class="col-form-label mt-4" for="inputDefault">Fecha de Expiración:</label>
                        <input runat="server" type="date" class="form-control" placeholder="22/05/2027" id="inputExp">
                    </div>


                 

                    <div class="text-center">
                        <asp:Button runat="server" Text="Guardar" CssClass="btn btn-info" OnClick="btnGuardar_Click" />
                        <asp:Label runat="server" ID="lblMensaje" CssClass="text-success"></asp:Label>
                    </div>

                </fieldset>
            </div>
        </div>


    </form>
</body>
</html>
