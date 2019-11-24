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
        .auto-style25 {
            width: 1589px;
            text-align: left;
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
                    <asp:Button ID="btnBuscar" runat="server" Text="BUSCAR" BorderStyle="None" Height="28px" OnClick="btnBuscar_Click" CausesValidation="False" />
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
                    <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" BorderStyle="None" Height="30px" OnClick="btnEliminar_Click" CausesValidation="False" />
                </td>
                <td class="auto-style15">
                    <asp:Button ID="btnModificar" runat="server" Text="MODIFICAR" BorderStyle="None" Height="30px" OnClick="btnModificar_Click" />
                </td>
                <td class="auto-style24">
                    <asp:Button ID="btnAgregar" runat="server" Text="AGREGAR" BorderStyle="None" Height="29px" OnClick="btnAgregar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRuc" Display="None" ErrorMessage="Ruc requerido"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" Display="None" ErrorMessage="Nombre requerido"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDireccion" Display="None" ErrorMessage="Direccion requerida"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCorreo" Display="None" ErrorMessage="Correo requerido"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtRuc" Display="None" ErrorMessage="El Ruc excede la longitud permitida" ValidationExpression="\d{1,9}"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNombre" Display="None" ErrorMessage="El Nombre debe tener entre 3 y 50 caracteres" ValidationExpression="\D{3,50}"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCorreo" Display="None" ErrorMessage="Correo invalido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtDireccion" Display="None" ErrorMessage="La direccion debe tener entre 3 y 50 caracteres" ValidationExpression="\D{3,50}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
        </table>

</div>
</asp:Content>

