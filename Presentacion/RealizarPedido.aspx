<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaCliente.Master" AutoEventWireup="true" CodeBehind="RealizarPedido.aspx.cs" Inherits="Presentacion.RealizarPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style17{
            width:100%;
        }

        .auto-style28{
            width:400px;
            text-align: right;
        }

        .auto-style45{
            width:20%;
        }
      
        .auto-style46 {
            text-align: center;
        }
      
        .auto-style47 {
            width: 20%;
        }
      
        .auto-style48 {
            width: 20%;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17" dir="auto">
    <tr>
        <td class="auto-style47">
            </td>
        <td class="auto-style16" colspan="2">
            <h1 class="auto-style46">REALIZAR PEDIDO</h1>
        </td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style47">
            &nbsp;</td>
        <td class="auto-style7" colspan="2">
            <asp:GridView ID="gvMedicamentos" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Height="138px" Width="100%" OnSelectedIndexChanged="gvMedicamentos_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Codigo" HeaderText="CODIGO" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Nombre" HeaderText="NOMBRRE" />
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Seleccionar" >
                    <ControlStyle BackColor="#00CC66" Font-Bold="True" ForeColor="White" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style47">
            &nbsp;</td>
        <td class="auto-style15" colspan="2">
            <asp:TextBox ID="txtbxMed" runat="server" Enabled="False" Height="161px" TextMode="MultiLine" Width="100%" Wrap="False"></asp:TextBox>
        </td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style47"></td>
        <td class="auto-style45">Cantidad:
            <asp:Label ID="lblCantidad" runat="server">1</asp:Label>
&nbsp;&nbsp; Precio: $&nbsp;<asp:Label ID="lblPrecio" runat="server">0.00</asp:Label>
        </td>
        <td class="auto-style28">
            <asp:Button ID="btnMas" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="50px" ForeColor="White" Text="+" Width="50px" Height="50px" OnClick="btnMas_Click" Enabled="False" BackColor="#00CC66" />
            <asp:Button ID="btnMenos" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="50px" ForeColor="White" Text="-" Width="50px" Height="50px" OnClick="btnMenos_Click" Enabled="False" BackColor="Red" />
        </td>
        <td class="auto-style48">
            </td>
    </tr>
    <tr>
        <td class="auto-style47">
            &nbsp;</td>
        <td class="auto-style30" colspan="2">
            <asp:Button ID="btnPedir" runat="server" BackColor="#00CC66" BorderStyle="None" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="38px" Text="PEDIR !" Width="100%" OnClick="btnPedir_Click" />
        </td>
        <td class="auto-style48"></td>
    </tr>
    <tr>
        <td class="auto-style47">
            &nbsp;</td>
        <td class="auto-style13" colspan="2">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
        <td class="auto-style48">&nbsp;</td>
    </tr>
</table>
</asp:Content>
