<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PeopleList.aspx.cs" Inherits="CRUD.Library.PeopleList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD con Librería</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-default navbar-inverse navbar-static-top">
        <div class="container-fluid">
            <div class="navbar-header">
              <a class="navbar-brand" href="#">Librería de conexión por XML</a>
            </div>
            <div class="nav navbar-nav navbar-right">
                <a class="navbar-brand" href="https://github.com/sebasms" target="_blank">Sebastián Mejía Serna</a>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <br />
        <h2 style="text-align: center">Listado de Personas</h2>
        <br />
        <br />
        <form id="form1" runat="server">
            <asp:GridView ID="gdPersonas" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
        <asp:Button ID="btnExit" runat="server" Text="Volver" CssClass="btn btn-success" PostBackUrl="~/CRUD.aspx" />
        </form>
    </div>
    <br />
    <br />
    <footer class="footer fixed-height">
        <div class="container">
            <p class="text-muted">2016. Sebastián Mejía Serna - Librería de Conexión</p>
        </div>
    </footer>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
</body>
</html>
