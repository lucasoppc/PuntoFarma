<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaCliente.Master" AutoEventWireup="true" CodeBehind="RealizarPedido.aspx.cs" Inherits="Presentacion.RealizarPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 410px;
        height: 205px;
    }
    .auto-style10 {
            width: 365px;
            height: 44px;
        }
        .auto-style13 {
            margin:auto;
            width: 410px;
            height: 44px;
            text-align: center;
        }
        .auto-style15 {
            width: 410px;
            margin-left: 0px;
            height: 150px;
        }
        .auto-style16 {
            text-align:center;
            font-family:Arial;
        }
        .auto-style17 {
            margin:auto;
            width: 100%;
            height: 100%;
            top: 2px;
            left: 0px;
        }
        .auto-style24 {
            width: 365px;
            height: 150px;
        }
        .auto-style26 {
            width: 365px;
            height: 205px;
        }
        .auto-style28 {
            width: 135px;
            text-align: left;
            margin-left: 0px;
            height: 19px;
        }
        .auto-style30 {
            width: 37px;
            height: 64px;
        }
        .auto-style31 {
            width: 365px;
            height: 64px;
        }
        .auto-style32 {
            width: 365px;
            height: 19px;
        }
        .auto-style33 {
            width: 365px;
            height: 66px;
        }
        .auto-style34 {
            text-align: center;
            font-family: Arial;
            width: 417px;
        }
        .auto-style37 {
            width: 417px;
            text-align: left;
            margin-left: 0px;
            height: 19px;
        }
        .auto-style41 {
            width: 417px;
            height: 64px;
        }
        .auto-style42 {
            width: 417px;
            height: 205px;
        }
        .auto-style43 {
            width: 417px;
            margin-left: 0px;
            height: 150px;
        }
        .auto-style44 {
            width: 417px;
            height: 44px;
            text-align: center;
        }
        .auto-style45 {
            width: 281px;
            text-align: left;
            margin-left: 0px;
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17" dir="auto">
    <tr>
        <td class="auto-style34">
            </td>
        <td class="auto-style16" colspan="2">
            <h1>REALIZAR PEDIDO</h1>
        </td>
        <td class="auto-style33"></td>
    </tr>
    <tr>
        <td class="auto-style42">
            &nbsp;</td>
        <td class="auto-style7" colspan="2">
            <asp:GridView ID="gvMedicamentos" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Height="138px" Width="442px" OnSelectedIndexChanged="gvMedicamentos_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Codigo" HeaderText="CODIGO" />
                    <asp:BoundField DataField="Nombre" HeaderText="NOMBRRE" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style26"></td>
    </tr>
    <tr>
        <td class="auto-style43">
            &nbsp;</td>
        <td class="auto-style15" colspan="2">
            <asp:TextBox ID="txtbxMed" runat="server" Enabled="False" Height="161px" TextMode="MultiLine" Width="431px" Wrap="False"></asp:TextBox>
        </td>
        <td class="auto-style24"></td>
    </tr>
    <tr>
        <td class="auto-style37"></td>
        <td class="auto-style45">Cantidad:
            <asp:Label ID="lblCantidad" runat="server">1</asp:Label>
&nbsp;&nbsp; Precio: $&nbsp;<asp:Label ID="lblPrecio" runat="server">0.00</asp:Label>
        </td>
        <td class="auto-style28">
            <asp:Button ID="btnMas" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Larger" ForeColor="#009933" Text="+" Width="43px" OnClick="btnMas_Click" Enabled="False" />
            <asp:Button ID="btnMenos" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Larger" ForeColor="#FF5050" Text="-" Width="43px" OnClick="btnMenos_Click" Enabled="False" />
        </td>
        <td class="auto-style32">
            </td>
    </tr>
    <tr>
        <td class="auto-style41">
            &nbsp;</td>
        <td class="auto-style30" colspan="2">
            <asp:Button ID="btnPedir" runat="server" BackColor="#00CC66" BorderStyle="None" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="38px" Text="PEDIR !" Width="436px" OnClick="btnPedir_Click" />
        </td>
        <td class="auto-style31"></td>
    </tr>
    <tr>
        <td class="auto-style44">
            &nbsp;</td>
        <td class="auto-style13" colspan="2">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
</table>
</asp:Content>
