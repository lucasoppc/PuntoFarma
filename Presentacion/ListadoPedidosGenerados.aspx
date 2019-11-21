<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaCliente.Master" AutoEventWireup="true" CodeBehind="ListadoPedidosGenerados.aspx.cs" Inherits="Presentacion.MisPedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3{
            width:100%;
        }
        .auto-style1 {
            width: 10%;
        }
    
        .auto-style2 {
            width: 10%;
        }

        .auto-style4{
            width:20%;
        }
    
        .auto-style5 {
            text-align: center;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style14">
            <h1 class="auto-style5" style="font-family: Arial, Helvetica, sans-serif">MIS PEDIDOS&nbsp;</h1>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style11">
            <asp:GridView ID="gvPedidos" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Height="115px" Width="100%" OnSelectedIndexChanged="gvPedidos_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="NumeroPedido" HeaderText="PEDIDO" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Estado" HeaderText="ESTADO" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Seleccionar" >
                    <ControlStyle BackColor="#00CC66" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                    <ItemStyle ForeColor="White" HorizontalAlign="Center" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style8">
            <asp:TextBox ID="txtPedido" runat="server" Enabled="False" Font-Names="Arial" Height="139px" TextMode="MultiLine" Width="100%" Rows="9" Wrap="False"></asp:TextBox>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style23">
            <asp:Button ID="btnEliminar" runat="server" BackColor="#FF3300" BorderStyle="None" Enabled="False" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="White" Height="43px" OnClick="btnEliminar_Click" Text="ELIMINAR PEDIDO" Visible="False" Width="70%" />
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style18">
            <asp:Label ID="lblConfirmacion" runat="server"></asp:Label>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
</table>
</asp:Content>
