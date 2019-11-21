<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroCliente.aspx.cs" Inherits="Presentacion.RegistroCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrarse</title>
    <style type="text/css">
        .auto-style1 {
            margin:auto;
            flex:auto;
            height: 472px;
            width: 483px;
            margin-top:100px;
        }
        .auto-style2 {
            height: 86px;
            margin-top: 0px;
        }
        .titulo-style{
            font-family: Arial, Helvetica, sans-serif;
            color: #FFFFFF;
            text-align:center;
            margin-top:50px;
            
        }
        .auto-style8 {
            width: 77%;
            height: 289px;
            margin-top: 10px;
            margin-left: 59px;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style18 {
            width: 180px;
            height: 43px;
        }
        .auto-style23 {
            text-align: left;
            height: 45px;
        }
        .auto-style27 {
            text-align: left;
            height: 43px;
            width: 186px;
        }
        .auto-style32 {
            color: #FFFFFF;
            height: 97px;
            margin-bottom: 0px;
            width: 336px;
            text-align: center;
            margin-top: 0px;
        }
        .auto-style33 {
            text-align: left;
            height: 39px;
        }
        .auto-style35 {
            text-align: left;
            height: 23px;
            width: 180px;
        }
        .auto-style37 {
            text-align: left;
            height: 23px;
            width: 186px;
        }
        .auto-style38 {
            height: 29px;
            text-align: center;
        }
        #logueo{
            float:right;
        }
        .auto-style39 {
            margin-left: 0px;
        }
        </style>
</head>
<body>
        <form id="form1" runat="server">
        <div style="background-color: #000000; " class="auto-style2"></div>
        <div class="auto-style1" id="LogueoCampo" style="background-color: #3366CC">
            <div id="titulo" style="margin-left:16%">
                <h1 class="auto-style32" style="font-family: Arial, Helvetica, sans-serif">REGISTRO CLIENTES</h1>
            </div>
           
            
            <table class="auto-style8">
                <tr>
                    <td class="auto-style27" style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; font-weight: bold;">NOMBRE<asp:TextBox ID="txtNombre" runat="server" Height="16px" Width="141px"></asp:TextBox>
                    </td>
                    <td class="auto-style18" style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; font-weight: bold;">
                        APELLIDO<asp:TextBox ID="txtApellido" runat="server" Height="16px" Width="129px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23" style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; font-weight: bold;" colspan="2">DIRECCION<asp:TextBox ID="txtDireccion" runat="server" Height="16px" Width="331px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33" style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; font-weight: bold;" colspan="2">TELEFONO<asp:TextBox ID="txtTelefono" runat="server" Height="16px" Width="331px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37" style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; font-weight: bold;">NOMBRE DE USUARIO<asp:TextBox ID="txtUsername" runat="server" Height="16px" Width="154px" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="auto-style35" style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; font-weight: bold;">CONTRASEÑA<asp:TextBox ID="txtContraseña" runat="server" Height="18px" Width="144px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38" style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; font-weight: bold;" colspan="2">
                        <asp:Button ID="btnRegistrarse" runat="server" BackColor="#00CC66" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="40px" OnClick="btnRegistrarse_Click" Text="REGISTRARME" Width="182px" />
                        <div id="logueo">
                            <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Logueo" Enabled="True" Height="41px" ImageUrl="~/img/log-in.png" PostBackUrl="/Logueo.aspx" ToolTip="Loguearme" Visible="True" Width="45px" CssClass="auto-style39" CausesValidation="False" />
                        </div>
                        
                    </td>
                </tr>
            </table>
            <div id="dialogo" class="auto-style15">
                <asp:Label ID="lblError" runat="server" ForeColor="White"></asp:Label>
            </div>
           
            
        </div>
            <div id="validacion">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Debe introducir un numero de telefono valido ej:(099123456)" ControlToValidate="txtTelefono" Display="None" ValidationExpression="09\d{7}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre no puede estar vacio" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApellido" ErrorMessage="El apellido no puede estar vacio" Display="None"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Direccion requerida" Display="None"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Telefono requerido" Display="None"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUsername" ErrorMessage="Nombre de usuario requerido" Display="None"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Contrasena requerida" Display="None"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="El nombre debe tener de 3 a 20 letras" ControlToValidate="txtNombre" Display="None" ValidationExpression="\D{3,20}"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtApellido" Display="None" ErrorMessage="El apellido debe tener entre 3 a 20 letras" ValidationExpression="\D{3,20}"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtDireccion" Display="None" ErrorMessage="La direccion debe tener de 3 a 50 caracteres" ValidationExpression="[\D\d]{3,50}"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtUsername" Display="None" ErrorMessage="El nombre de usuario debe tener de 3 a 20 caracteres" ValidationExpression="[\D\d]{3,20}"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtContraseña" Display="None" ErrorMessage="La contraseña debe tener de 3 a 20 caracteres" ValidationExpression="[\D\d]{3,20}"></asp:RegularExpressionValidator>
            </div>
        </form>
    </body>
</html>
