<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="CRUD.Library.CRUD" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD con Librería</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <script>
        function letras(e) {
            tecla = (document.all) ? e.keyCode : e.which;
            if (tecla == 8) return true;
            patron = /[a-zA-ZáéíóúÁÉÍÓÚñÑ]/;
            te = String.fromCharCode(tecla);
            return patron.test(te);
        }

        function numeros(e) {
            var key = window.Event ? e.which : e.keyCode
            return ((key >= 48 && key <= 57) || (key == 8))
        }

        function noCaracter(e) {
            tecla = (document.all) ? e.keyCode : e.which;
            patron = /[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]/;
            te = String.fromCharCode(tecla);
            return patron.test(te);
        }
    </script>
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
        <h2 style="text-align: center">Personas</h2>
        <br />
        <br />
        <form id="form1" runat="server">        
            <div class="row">
                <div class="col-md-1"></div>
                <div class="form-group col-md-5">
                    <label for="txtCedula">Cédula * </label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtCedula" ErrorMessage="Debe llenar este campo" 
                        ForeColor="#c0392b"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ValidationGroup="ValidacionFormulario" 
                        ID="txtCedulaRegularExpression" SetFocusOnError="false" runat="server" 
                        ControlToValidate="txtCedula" ErrorMessage="Mínimo 7 caracteres"
                         ValidationExpression=".{7}.*" ForeColor="#c0392b"/>
                    <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control" 
                        placeholder="Recuerde ingresar sólo números" MaxLength="13" 
                        TabIndex="1" onkeypress="return numeros(event)"></asp:TextBox>
                </div>
                <div class="form-group col-md-5">
                    <label for="txtNombre">Nombres * </label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtNombre" ErrorMessage="Debe llenar este campo" 
                        ForeColor="#c0392b"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ValidationGroup="ValidacionFormulario" 
                        ID="txtNombreRegularExpression" SetFocusOnError="false" runat="server" 
                        ControlToValidate="txtNombre" ErrorMessage="Mínimo 3 caracteres"
                         ValidationExpression=".{3}.*" ForeColor="#c0392b"/>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"
                        placeholder="Recuerde ingresar sólo letras" MaxLength="200" 
                        TabIndex="2" onkeypress="return letras(event)"></asp:TextBox>                    
                </div>
                <div class="col-md-1"></div>
            </div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="form-group col-md-5">
                    <label for="txtApellido">Apellidos * </label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtApellido" ErrorMessage="Debe llenar este campo" 
                        ForeColor="#c0392b"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ValidationGroup="ValidacionFormulario" 
                        ID="txtApellidoRegularExpression" SetFocusOnError="false" runat="server" 
                        ControlToValidate="txtApellido" ErrorMessage="Mínimo 3 caracteres"
                         ValidationExpression=".{3}.*" ForeColor="#c0392b"/>
                    <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" 
                        placeholder="Recuerde ingresar sólo letras" MaxLength="200" 
                        TabIndex="3" onkeypress="return letras(event)"></asp:TextBox>                    
                </div>
                <div class="form-group col-md-5">
                    <label for="txtGenero">Género * </label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtGenero" ErrorMessage="Debe llenar este campo" 
                        ForeColor="#c0392b"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ValidationGroup="ValidacionFormulario" 
                        ID="txtGeneroRegularExpression" SetFocusOnError="false" runat="server" 
                        ControlToValidate="txtGenero" ErrorMessage="Mínimo 8 caracteres"
                         ValidationExpression=".{8}.*" ForeColor="#c0392b"/>
                    <asp:TextBox ID="txtGenero" runat="server" CssClass="form-control" 
                        placeholder="Recuerde ingresar sólo letras" MaxLength="10" 
                        TabIndex="4" onkeypress="return letras(event)"></asp:TextBox>                    
                </div>
                <div class="col-md-1"></div>
            </div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="form-group col-md-5">
                    <label for="txtCiudad">Ciudad * </label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtCiudad" ErrorMessage="Debe llenar este campo" 
                        ForeColor="#c0392b"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ValidationGroup="ValidacionFormulario" 
                        ID="txtCiudadRegularExpression" SetFocusOnError="false" runat="server" 
                        ControlToValidate="txtCiudad" ErrorMessage="Mínimo 3 caracteres"
                         ValidationExpression=".{3}.*" ForeColor="#c0392b"/>
                    <asp:TextBox ID="txtCiudad" runat="server" CssClass="form-control" 
                        placeholder="Recuerde ingresar sólo letras" MaxLength="100" 
                        TabIndex="5" onkeypress="return letras(event)"></asp:TextBox>                    
                </div>
                <div class="form-group col-md-5">
                    <label for="txtDireccion">Direción * </label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtDireccion" ErrorMessage="Debe llenar este campo" 
                        ForeColor="#c0392b"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ValidationGroup="ValidacionFormulario" 
                        ID="txtDireccionRegularExpression" SetFocusOnError="false" runat="server" 
                        ControlToValidate="txtDireccion" ErrorMessage="Mínimo 10 caracteres"
                         ValidationExpression=".{3}.*" ForeColor="#c0392b"/>
                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" 
                        placeholder="Recuerde ingresar sólo letras y números" MaxLength="200" 
                        TabIndex="6" onkeypress="return noCaracter(event)"></asp:TextBox>                    
                </div>
                <div class="col-md-1"></div>
            </div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="form-group col-md-5">
                    <label for="txtTelefono">Teléfono * </label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtTelefono" ErrorMessage="Debe llenar este campo" 
                        ForeColor="#c0392b"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ValidationGroup="ValidacionFormulario" 
                        ID="txtTelefonoRegularExpression" SetFocusOnError="false" runat="server" 
                        ControlToValidate="txtTelefono" ErrorMessage="Mínimo 7 caracteres"
                         ValidationExpression=".{7}.*" ForeColor="#c0392b"/>
                    <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" 
                        placeholder="Recuerde ingresar sólo números" MaxLength="13" 
                        TabIndex="7" onkeypress="return numeros(event)"></asp:TextBox>                    
                </div>
                <div class="col-md-5">
                    <br />
                    <asp:Button ID="btnSave" runat="server" Text="Guardar"  CssClass="btn btn-primary" OnClick="btnSave_Click" TabIndex="8" />
                    <asp:Button ID="btnSelect" runat="server" Text="Consultar" CssClass="btn btn-info" CausesValidation="False" OnClick="btnSelect_Click" TabIndex="9" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Actualizar"  CssClass="btn btn-success" OnClick="btnUpdate_Click" TabIndex="10" />    
                    <asp:Button ID="btnDelete" runat="server" Text="Eliminar" CssClass="btn btn-danger" CausesValidation="False" OnClick="btnDelete_Click" TabIndex="11" />
                    <asp:Button ID="btnList" runat="server" Text="Listar" CssClass="btn btn-default" CausesValidation="False" OnClick="btnList_Click" PostBackUrl="~/PeopleList.aspx" TabIndex="12" />
                </div>
                <div class="col-md-1"></div>
            </div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <asp:Label ID="msg" runat="server" Text="" ForeColor="#C0392B"></asp:Label>
                </div>
                <div class="col-md-1"></div>
            </div>
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
