<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="RealizarPedido.aspx.cs" Inherits="Presentacion.RealizarPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 557px;
    }
    .auto-style2 {
        width: 443px;
    }
    .auto-style3 {
        width: 443px;
        text-align: center;
    }
    .auto-style4 {
        height: 44px;
    }
    .auto-style5 {
        width: 443px;
        height: 44px;
    }
    .auto-style6 {
        height: 205px;
    }
    .auto-style7 {
        width: 443px;
        height: 205px;
    }
    .auto-style8 {
        width: 466px;
    }
    .auto-style9 {
        width: 466px;
        height: 205px;
    }
    .auto-style10 {
        width: 466px;
        height: 44px;
    }
    .auto-style11 {
        width: 443px;
        text-align: left;
        margin-left: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style3">
            <h1>REALIZAR PEDIDO</h1>
        </td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Height="138px" Width="442px">
                <Columns>
                    <asp:BoundField DataField="Codigo" HeaderText="CODIGO" />
                    <asp:BoundField DataField="Nombre" HeaderText="NOMBRRE" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2">
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="141px" Width="438px">
            </asp:ListBox>
        </td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style11">Cantidad:
            <asp:Label ID="lblCantidad" runat="server"></asp:Label>
&nbsp;&nbsp; Precio:&nbsp;&nbsp;
            <asp:Label ID="lblPrecio" runat="server"></asp:Label>
        </td>
        <td class="auto-style8">
            <asp:Button ID="btnMas" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Larger" ForeColor="#009933" Text="+" Width="43px" />
            <asp:Button ID="btnMenos" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Larger" ForeColor="#FF5050" Text="-" Width="43px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style5">
            <asp:Button ID="btnPedir" runat="server" BackColor="#00CC66" BorderStyle="None" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="38px" Text="PEDIR !" Width="436px" />
        </td>
        <td class="auto-style10"></td>
    </tr>
</table>
</asp:Content>
