<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.Master" AutoEventWireup="true" CodeBehind="ABMMedicamento.aspx.cs" Inherits="Presentacion.ABMMedicamento1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 506px;
            width: 604px;
            margin-right: 871px;
        }
        .auto-style7 {
            width: 100%;
            height: 596px;
        }
        .auto-style8 {
            height: 72px;
            text-align: center;
        }
        .auto-style12 {
            width: 249px;
            text-align: right;
        }
        .auto-style21 {
        width: 269px;
        text-align: center;
        position: absolute;
        left: 289px;
        top: 22px;
    }
    .auto-style25 {
        text-align: center;
    }
    .auto-style27 {
        width: 152px;
        height: 30px;
    }
    .auto-style28 {
        width: 152px;
        height: 29px;
    }
    .auto-style29 {
        width: 152px;
    }
    .auto-style30 {
        width: 269px;
        height: 30px;
    }
    .auto-style31 {
        width: 269px;
    }
    .auto-style32 {
        width: 269px;
        height: 29px;
    }
    .auto-style35 {
        width: 11px;
        height: 30px;
    }
    .auto-style37 {
        width: 11px;
        height: 29px;
    }
    .auto-style38 {
        width: 11px;
    }
    .auto-style39 {
        text-align: center;
        width: 11px;

    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="form" class="auto-style6">

        <table class="auto-style7">
            <tr>
                <td class="auto-style8" colspan="3">
                    <h1 style="font-family: Arial, Helvetica, sans-serif" class="auto-style25">MEDICAMENTOS</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style35">CODIGO&nbsp;</td>
                <td rowspan="3" class="auto-style29">
                    <asp:Button ID="btnBuscar" runat="server" BorderStyle="None" Height="37px" Text="BUSCAR" Width="89px" OnClick="btnBuscar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style38">
                    <asp:TextBox ID="txtCodigo" runat="server" Width="111px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style35">RUC FARMACEUTICA</td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style38">
                    <asp:TextBox ID="txtRuc" runat="server" Width="136px"></asp:TextBox>
                </td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style35">NOMBRE</td>
                <td class="auto-style27"></td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style38">
                    <asp:TextBox ID="txtNombre" runat="server" Width="215px"></asp:TextBox>
                </td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style35">DESCRIPCION</td>
                <td class="auto-style27"></td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style38">
                    <asp:TextBox ID="txtDescripcion" runat="server" Height="59px" TextMode="MultiLine" Width="227px"></asp:TextBox>
                </td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32"></td>
                <td class="auto-style37">PRECIO</td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style38">
                    <asp:TextBox ID="txtPrecio" runat="server" Width="111px"></asp:TextBox>
                </td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style39">
                    <asp:Button ID="btnEliminar" runat="server" BorderStyle="None" Height="37px" Text="ELIMINAR" Width="89px" OnClick="btnEliminar_Click" />
                    <asp:Button ID="btnModificar" runat="server" BorderStyle="None" Height="37px" Text="MODIFICAR" Width="89px" OnClick="btnModificar_Click" />
                </td>
                <td class="auto-style29">
                    <asp:Button ID="btnAgregar" runat="server" BorderStyle="None" Height="37px" Text="AGREGAR" Width="89px" OnClick="btnAgregar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style39">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td class="auto-style29">&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
