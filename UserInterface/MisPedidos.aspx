<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="MisPedidos.aspx.cs" Inherits="Presentacion.MisPedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
        height: 467px;
    }
    .auto-style4 {
        width: 435px;
    }
    .auto-style5 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style4">
            <h1 class="auto-style5" style="font-family: Arial, Helvetica, sans-serif">MIS PEDIDOS&nbsp;</h1>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style4">
            <asp:GridView ID="gvPedidos" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Height="115px" Width="430px">
                <Columns>
                    <asp:BoundField DataField="Codigo" HeaderText="PEDIDO" />
                    <asp:BoundField DataField="Estado" HeaderText="ESTADO" />
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style4">
            <asp:ListBox ID="lstPedido" runat="server" Height="116px" Width="424px"></asp:ListBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style4">
            <asp:Label ID="lblConfirmacion" runat="server"></asp:Label>
            <asp:Button ID="btnSI" runat="server" BackColor="#009900" BorderStyle="None" Enabled="False" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="SI" Visible="False" />
            <asp:Button ID="btnNO" runat="server" BackColor="Red" BorderStyle="None" Enabled="False" Font-Bold="True" Font-Size="Large" ForeColor="Yellow" Text="NO" Visible="False" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
