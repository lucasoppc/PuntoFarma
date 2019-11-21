<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarEstadoPedido.aspx.cs" Inherits="Presentacion.ConsultarEstadoPedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Estado Pedido</title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 86px;
            margin-top: 0%;
            bottom: 20%;
        }
        .auto-style3 {
            height: 53px;
            margin-top:5%;
            text-align:center;
        }
        .numPedido-style{
            text-align:center;
            margin-top:10px;

        }
        .auto-style4 {
            height: 74px;
            text-align: center;
            margin-top:10px;
        }
        .auto-style6 {
            text-align: center;
            margin-top: 10px;
            position: center;
            height: 41px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #000000; " class="auto-style2"></div>
        <div id="titulo" class="auto-style3">
            <h1 style="font-family: Arial, Helvetica, sans-serif; color: #000080;">CONSULTA ESTADO DE PEDIDO</h1>
        </div>
        <div id="numPedido" class="numPedido-style" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold">Ingrese el numero de pedido</div>
        <div id="ingresoUsuario" class="auto-style6">
            <asp:TextBox ID="TextBox1" runat="server" Width="204px" Font-Size="Medium" ForeColor="#FF3300" Height="30px"></asp:TextBox>
        </div>
        <div id="boton" class="auto-style7">
            <asp:Button ID="Button1" runat="server" BackColor="#009933" BorderStyle="None" Font-Bold="True" Font-Size="Larger" ForeColor="White" Height="37px" Text="BUSCAR" Width="208px" />
        </div>
        <div id="info" class="auto-style4">
            <asp:Label ID="lblError" runat="server" Text="Estado: " CssClass="auto-style8"></asp:Label>
        </div>
    </form>
</body>
</html>
