<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarTarjetas.aspx.cs" Inherits="BilleteraVirtual.View.MostrarTarjetas" %>

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
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="MostrarTarjetas.aspx">Billetera Virtual</a>
            <a class="navbar-brand" href="AgregarTarjeta.aspx">+ Agregar Tarjeta</a>
            <form class="d-flex" role="search">

              
                

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </form>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div>

            <asp:Repeater ID="repTarjetas" runat="server">
                <HeaderTemplate>
                    <div class="container">
                        <div class="row">
                </HeaderTemplate>
                <ItemTemplate>
                    <div id="cardTarjetas" class="card">
                        <h5 id="lblDueno" class="card-title">Dueño:<%# Eval("Dueno")%> Entidad:<%# Eval("Banco")%></h5>
                        <h5 id="lblTitulo" class="card-title">N° de Tarjeta: <%# "************" + ((string)Eval("NTarjeta")).Substring(((string)Eval("NTarjeta")).Length - 4, 4) %></h5>

                        <img src="<%# Eval("Foto")%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">Fecha de Expiración <%#((DateTime) Eval("FechaExp")).ToString("MM/yyyy")%></p>
                           <%-- <p class="card-text">Costo: ₡<%# Eval("Entidad")%></p>--%>
                            <%--<a href="libro.aspx?ISBN=<%# Eval("ISBN")%>" id="btnComprar" class="btn btn-primary">Detalle! </a>--%>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                    </div>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>


    </form>
    <footer>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand" href="MostarTarjetas.aspx">Billetera Virtual</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>
    </footer>
</body>
</html>