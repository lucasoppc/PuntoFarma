<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaEmpleado.Master" AutoEventWireup="true" CodeBehind="ListadoMedicamentosPedidos.aspx.cs" Inherits="Presentacion.ListadoMedicamentosPedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style39 {
            height: 100%;
            width:100%;
        }
        
        .auto-style8 {
            width: 10%;
        }
        
        .auto-style9 {
            text-align: center;
        }
        .auto-style40{
            width:10%;
        }
        
        .auto-style41 {
            width: 80%;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style39">
        <tr>
            <td class="auto-style7" colspan="2">
                <h1 style="font-family: Arial, Helvetica, sans-serif" class="auto-style9">LISTADO DE MEDICAMENTOS Y PEDIDOS&nbsp;</h1>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style41">
                FARMACEUTICA<asp:DropDownList ID="ddlFarmaceuticas" runat="server" Height="26px" Width="300px" AutoPostBack="True" OnSelectedIndexChanged="ddlFarmaceuticas_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style41">
            </td>
            <td class="auto-style52">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style41">
                MEDICAMENTOS<asp:GridView ID="gvMedicamentos" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Height="161px" Width="100%" OnSelectedIndexChanged="gvMedicamentos_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                        <asp:BoundField DataField="Precio" DataFormatString="{0:c}" HeaderText="Precio" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style40">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style41">FILTRAR<asp:DropDownList ID="ddlFiltro" runat="server" AutoPostBack="True" Height="32px" OnSelectedIndexChanged="ddlFiltro_SelectedIndexChanged" Width="141px">
                <asp:ListItem>Todos</asp:ListItem>
                <asp:ListItem>Generados</asp:ListItem>
                <asp:ListItem>Entregados</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style63">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style41">
                <asp:ListBox ID="lstPedidos" runat="server" Height="323px" SelectionMode="Multiple" Width="100%" OnSelectedIndexChanged="lstPedidos_SelectedIndexChanged"></asp:ListBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style41"></td>
            <td class="auto-style47">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style41">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td class="auto-style30">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
