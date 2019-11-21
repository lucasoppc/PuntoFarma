<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaEmpleado.Master" AutoEventWireup="true" CodeBehind="ABMFarmaceutica.aspx.cs" Inherits="Presentacion.ABMMedicamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 100%;
            width: 100%;
        }
    
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            text-align: center;
        height: 93px;
    }
        .auto-style9 {
            width: 383px;
        }
        .auto-style13 {
            width: 383px;
            height: 26px;
        }
        .auto-style15 {
            width: 383px;
            text-align: center;
        }
        .auto-style16 {
            width: 1589px;
            text-align: right;
        }
    .auto-style17 {
            width: 1589px;
        }
    .auto-style18 {
        width: 1589px;
        height: 26px;
    }
        .auto-style20 {
            width: 1589px;
            height: 23px;
        }
        .auto-style21 {
            width: 383px;
            height: 23px;
        }
        .auto-style22 {
            width: 1572px;
            height: 23px;
        }
        .auto-style23 {
            width: 1572px;
            height: 26px;
        }
        .auto-style24 {
            width: 1572px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="form" class="auto-style6">

        <table class="auto-style7">
            <tr>
                <td class="auto-style8" colspan="3">
                    <h1 style="font-family: Arial, Helvetica, sans-serif">FARMACEUTICAS</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21">RUC</td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtRuc" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:Button ID="btnBuscar" runat="server" Text="BUSCAR" BorderStyle="None" Height="28px" OnClick="btnBuscar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">NOMBRE</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtNombre" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">CORREO</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtCorreo" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">DIRECCION</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtDireccion" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" BorderStyle="None" Height="30px" OnClick="btnEliminar_Click" />
                </td>
                <td class="auto-style15">
                    <asp:Button ID="btnModificar" runat="server" Text="MODIFICAR" BorderStyle="None" Height="30px" OnClick="btnModificar_Click" />
                </td>
                <td class="auto-style24">
                    <asp:Button ID="btnAgregar" runat="server" Text="AGREGAR" BorderStyle="None" Height="29px" OnClick="btnAgregar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
        </table>

</div>
</asp:Content>

