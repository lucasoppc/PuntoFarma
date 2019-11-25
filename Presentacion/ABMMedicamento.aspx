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
                    <h1 style="font-family: Arial, Helvetica, sans-serif">MEDICAMENTOS</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">CODIGO&nbsp;</td>
                <td class="auto-style49">
                    <asp:Button ID="btnBuscar" runat="server" BorderStyle="None" Height="37px" Text="BUSCAR" Width="89px" OnClick="btnBuscar_Click" CausesValidation="False" />
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
                    <asp:Button ID="btnEliminar" runat="server" BorderStyle="None" Height="37px" Text="ELIMINAR" Width="89px" OnClick="btnEliminar_Click" CausesValidation="False" />
                    <asp:Button ID="btnModificar" runat="server" BorderStyle="None" Height="37px" Text="MODIFICAR" Width="89px" OnClick="btnModificar_Click" />
                </td>
                <td class="auto-style46">
                    <asp:Button ID="btnAgregar" runat="server" BorderStyle="None" Height="37px" Text="AGREGAR" Width="89px" OnClick="btnAgregar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCodigo" Display="None" ErrorMessage="Codigo de articulo requerido"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRuc" Display="None" ErrorMessage="Ruc de proveedor requerido"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNombre" Display="None" ErrorMessage="Nombre de articulo requerido"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPrecio" Display="None" ErrorMessage="Precio requerido"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCodigo" Display="None" ErrorMessage="El codigo excede el limite " ValidationExpression="\d{1,9}"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtRuc" Display="None" ErrorMessage="El Ruc excede el limite" ValidationExpression="\d{1,9}"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtDescripcion" Display="None" ErrorMessage="La descripcion no pude superar los 100 caracteres" ValidationExpression="[\D\d]{0,100}"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtPrecio" Display="None" ErrorMessage="El precio ingresado no es valido" ValidationExpression="\d{0,9999999}"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtNombre" Display="None" ErrorMessage="El nombre debe tener entre 3 y 50 caracteres" ValidationExpression="[\D\d]{3,50}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td class="auto-style49">&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
