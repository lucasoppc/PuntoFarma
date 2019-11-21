<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.Master" AutoEventWireup="true" CodeBehind="CambioEstadoPedido.aspx.cs" Inherits="Presentacion.CambioEstadoPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
            width: 437px;
        }
        .auto-style9 {
            width: 437px;
        }
        .auto-style10 {
            height: 46px;
        }
        .auto-style11 {
            text-align: center;
            width: 437px;
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style7" colspan="3" style="font-family: Arial, Helvetica, sans-serif">
                <h1>CAMBIAR ESTADO DE PEDIDO</h1>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">LISTADO DE PEDIDOS </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">
                <asp:DropDownList ID="ddlPedidos" runat="server" Height="16px" Width="448px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                <asp:Button ID="Button2" runat="server" BackColor="Lime" BorderStyle="None" Enabled="False" Height="24px" Text="SI" Visible="False" Width="25px" />
                <asp:Button ID="Button3" runat="server" BackColor="Red" BorderStyle="None" Enabled="False" ForeColor="White" Height="24px" Text="NO" Visible="False" Width="25px" />
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
