<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaEmpleado.Master" AutoEventWireup="true" CodeBehind="ABMMedicamento.aspx.cs" Inherits="Presentacion.ABMMedicamento1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style7 {
            width: 100%;
            height: 100%;
        }
        
        .auto-style8 {
            width: 40px;
        }
        .auto-style9 {
            width: 33%;
        }
        
        .auto-style10 {
            width: 33%;
        }
        
        .auto-style11 {
            text-align: center;
        }

        .auto-style8{
            text-align:center;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="form" class="auto-style6">

        <table class="auto-style7">
            <tr>
                <td class="auto-style8" colspan="3">
                    <h1 style="font-family: Arial, Helvetica, sans-serif" class="auto-style11">MEDICAMENTOS</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">CODIGO&nbsp;</td>
                <td class="auto-style49">
                    <asp:Button ID="btnBuscar" runat="server" BorderStyle="None" Height="37px" Text="BUSCAR" Width="89px" OnClick="btnBuscar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCodigo" runat="server" Width="111px"></asp:TextBox>
                </td>
                <td class="auto-style49">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">RUC FARMACEUTICA</td>
                <td class="auto-style49">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtRuc" runat="server" Width="50%"></asp:TextBox>
                </td>
                <td class="auto-style49">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">NOMBRE</td>
                <td class="auto-style50"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtNombre" runat="server" Width="80%"></asp:TextBox>
                </td>
                <td class="auto-style49">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">DESCRIPCION</td>
                <td class="auto-style50"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtDescripcion" runat="server" Height="59px" TextMode="MultiLine" Width="80%"></asp:TextBox>
                </td>
                <td class="auto-style49">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">PRECIO</td>
                <td class="auto-style51"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtPrecio" runat="server" Width="111px"></asp:TextBox>
                </td>
                <td class="auto-style49">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    </td>
                <td class="auto-style10">
                    <asp:Button ID="btnEliminar" runat="server" BorderStyle="None" Height="37px" Text="ELIMINAR" Width="89px" OnClick="btnEliminar_Click" />
                    <asp:Button ID="btnModificar" runat="server" BorderStyle="None" Height="37px" Text="MODIFICAR" Width="89px" OnClick="btnModificar_Click" />
                </td>
                <td class="auto-style46">
                    <asp:Button ID="btnAgregar" runat="server" BorderStyle="None" Height="37px" Text="AGREGAR" Width="89px" OnClick="btnAgregar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td class="auto-style49">&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
