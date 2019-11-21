<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/PaginaEmpleado.Master" AutoEventWireup="true" CodeBehind="CambioEstadoPedido.aspx.cs" Inherits="Presentacion.CambioEstadoPedido" %>
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
            width: 402px;
        }
        .auto-style9 {
            width: 402px;
        }
        .auto-style10 {
            height: 89px;
            width: 567px;
        }
        .auto-style11 {
            text-align: center;
            width: 402px;
            height: 89px;
        }
        .auto-style17 {
            height: 89px;
            width: 563px;
        }
        .auto-style18 {
            width: 563px;
        }
        .auto-style19 {
            width: 567px;
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
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style8">LISTADO DE PEDIDOS </td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style9">
                <asp:GridView ID="gvPedidos" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Height="138px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="410px">
                    <Columns>
                        <asp:BoundField DataField="NumeroPedido" HeaderText="Numero de Pedido" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style11">
                <asp:Label ID="lblError" runat="server" Font-Names="Arial" Font-Size="20px"></asp:Label>
                <asp:Button ID="btnSi" runat="server" BackColor="Lime" BorderStyle="None" Height="42px" Text="SI" Visible="False" Width="79px" OnClick="btnSi_Click" Enabled="False" />
                <asp:Button ID="btnNo" runat="server" BackColor="Red" BorderStyle="None" ForeColor="White" Height="42px" Text="NO" Visible="False" Width="68px" OnClick="btnNo_Click" />
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
