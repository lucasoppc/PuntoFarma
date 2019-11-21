<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroCliente.aspx.cs" Inherits="Presentacion.RegistroCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrarse</title>
    <style type="text/css">
        .auto-style1 {
            margin-left:30%;
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
            width: 83%;
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
        .auto-style36 {
            width: 180px;
            height: 29px;
        }
        .auto-style37 {
            text-align: left;
            height: 23px;
            width: 186px;
        }
        .auto-style38 {
            width: 186px;
            height: 29px;
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
                    <td class="auto-style35" style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; font-weight: bold;">CONTRASEÑA<asp:TextBox ID="txtContraseña" runat="server" Height="18px" Width="129px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38" style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; font-weight: bold;"></td>
                    <td class="auto-style36" style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; font-weight: bold;"></td>
                </tr>
            </table>
            <div id="dialogo" class="auto-style15">
                <asp:Label ID="lblError" runat="server" ForeColor="White"></asp:Label>
            </div>
           
            
        </div>
        </form>
    </body>
</html>
