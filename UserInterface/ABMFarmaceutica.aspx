<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.Master" AutoEventWireup="true" CodeBehind="ABMFarmaceutica.aspx.cs" Inherits="Presentacion.ABMMedicamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 726px;
        width: 802px;
        margin-right: 575px;
    }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            text-align: center;
        height: 173px;
    }
        .auto-style9 {
            width: 215px;
        }
        .auto-style13 {
            width: 215px;
            height: 26px;
        }
        .auto-style14 {
            height: 26px;
        width: 675px;
    }
        .auto-style15 {
            width: 215px;
            text-align: center;
        }
        .auto-style16 {
        width: 388px;
        text-align: right;
    }
    .auto-style17 {
        width: 388px;
    }
    .auto-style18 {
        width: 388px;
        height: 26px;
    }
    .auto-style19 {
        width: 675px;
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
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">RUC</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtRuc" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:Button ID="btnBuscar" runat="server" Text="BUSCAR" BorderStyle="None" Height="28px" OnClick="btnBuscar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">NOMBRE</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtNombre" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">CORREO</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtCorreo" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">DIRECCION</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtDireccion" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" BorderStyle="None" Height="30px" OnClick="btnEliminar_Click" />
                </td>
                <td class="auto-style15">
                    <asp:Button ID="btnModificar" runat="server" Text="MODIFICAR" BorderStyle="None" Height="30px" OnClick="btnModificar_Click" />
                </td>
                <td class="auto-style19">
                    <asp:Button ID="btnAgregar" runat="server" Text="AGREGAR" BorderStyle="None" Height="29px" OnClick="btnAgregar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
        </table>

</div>
</asp:Content>

