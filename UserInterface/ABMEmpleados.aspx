<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.Master" AutoEventWireup="true" CodeBehind="ABMEmpleados.aspx.cs" Inherits="Presentacion.ABMEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 318px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style12 {
        text-align: left;
        width: 177px;
        height: 21px;
    }
    .auto-style14 {
        width: 202px;
        height: 30px;
    }
    .auto-style16 {
        width: 160px;
        height: 30px;
    }
    .auto-style32 {
        width: 178px;
    }
    .auto-style33 {
        width: 202px;
    }
    .auto-style34 {
        width: 160px;
    }
    .auto-style41 {
        width: 160px;
        height: 14px;
    }
    .auto-style42 {
        height: 30px;
        width: 178px;
    }
    .auto-style46 {
        width: 178px;
        height: 14px;
        text-align: right;
    }
    .auto-style48 {
        width: 202px;
        height: 14px;
        text-align: right;
    }
    .auto-style55 {
        width: 177px;
        text-align: left;
    }
    .auto-style56 {
        width: 177px;
    }
    .auto-style58 {
        height: 20px;
        width: 177px;
    }
    .auto-style59 {
        height: 17px;
        width: 177px;
    }
    .auto-style60 {
        width: 177px;
        height: 14px;
        text-align: right;
    }
    .auto-style61 {
        width: 202px;
        height: 7px;
    }
    .auto-style62 {
        width: 178px;
        height: 7px;
    }
    .auto-style63 {
        width: 160px;
        height: 7px;
    }
    .auto-style67 {
        text-align: center;
        height: 32px;
    }
    .auto-style68 {
        width: 202px;
        height: 21px;
    }
    .auto-style69 {
        height: 21px;
        width: 178px;
    }
    .auto-style70 {
        width: 160px;
        height: 21px;
    }
    .auto-style74 {
        width: 177px;
        text-align: left;
        height: 30px;
    }
    .auto-style75 {
        width: 202px;
        height: 17px;
    }
    .auto-style76 {
        height: 17px;
        width: 178px;
    }
    .auto-style77 {
        width: 160px;
        height: 17px;
    }
    .auto-style82 {
        width: 304px;
        height: 25px;
        position: relative;
        left: 179px;
        top: 3px;
    }
    .auto-style83 {
        width: 202px;
        height: 19px;
    }
    .auto-style84 {
        height: 19px;
        width: 178px;
    }
    .auto-style85 {
        width: 160px;
        height: 19px;
    }
    .auto-style86 {
        width: 202px;
        height: 20px;
    }
    .auto-style87 {
        height: 20px;
        width: 178px;
    }
    .auto-style88 {
        text-align: left;
        width: 177px;
        height: 20px;
    }
    .auto-style89 {
        width: 160px;
        height: 20px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style82">
        <tr>
            <td class="auto-style7" colspan="4">
                <h1 style="font-family: Arial, Helvetica, sans-serif;" class="auto-style7">EMPLEADOS</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style67" colspan="4">
                </td>
        </tr>
        <tr>
            <td class="auto-style83"></td>
            <td class="auto-style84">USERNAME&nbsp;&nbsp;</td>
            <td class="auto-style56" rowspan="2">
                <asp:Button ID="btnBuscar" runat="server" BorderStyle="None" Height="49px" Text="BUSCAR" Width="173px" />
            </td>
            <td class="auto-style85"></td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style32"><asp:TextBox ID="txtUsername" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="auto-style34"></td>
        </tr>
        <tr>
            <td class="auto-style86"></td>
            <td class="auto-style87">NOMBRE</td>
            <td class="auto-style88"></td>
            <td class="auto-style89"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style42"><asp:TextBox ID="txtNombre" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="auto-style74">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style86"></td>
            <td class="auto-style87">APELLIDO</td>
            <td class="auto-style88"></td>
            <td class="auto-style89"></td>
        </tr>
        <tr>
            <td class="auto-style61"></td>
            <td class="auto-style62"><asp:TextBox ID="txtApelldio" runat="server" Width="169px"></asp:TextBox>
            </td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style63"></td>
        </tr>
        <tr>
            <td class="auto-style86"></td>
            <td class="auto-style87">HORA DE INICIO</td>
            <td class="auto-style58"></td>
            <td class="auto-style89"></td>
        </tr>
        <tr>
            <td class="auto-style75"></td>
            <td class="auto-style76"><asp:TextBox ID="txtHoraInicio" runat="server" Width="91px"></asp:TextBox>
            </td>
            <td class="auto-style59">&nbsp;</td>
            <td class="auto-style77"></td>
        </tr>
        <tr>
            <td class="auto-style86"></td>
            <td class="auto-style87">HORA DE FIN</td>
            <td class="auto-style58"></td>
            <td class="auto-style89"></td>
        </tr>
        <tr>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style76"><asp:TextBox ID="txtHoraFin" runat="server" Width="91px"></asp:TextBox>
            </td>
            <td class="auto-style59">&nbsp;</td>
            <td class="auto-style77">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style86"></td>
            <td class="auto-style87">CONTRASENA</td>
            <td class="auto-style88">
            </td>
            <td class="auto-style89"></td>
        </tr>
        <tr>
            <td class="auto-style68"></td>
            <td class="auto-style69"><asp:TextBox ID="txtContrasena" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="auto-style12">
            </td>
            <td class="auto-style70"></td>
        </tr>
        <tr>
            <td class="auto-style68">&nbsp;</td>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style70">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style48">
                <asp:Button ID="btnEliminar" runat="server" BorderStyle="None" Height="37px" Text="ELIMINAR" Width="104px" />
            </td>
            <td class="auto-style46">
                <asp:Button ID="btnModificar" runat="server" BorderStyle="None" Height="37px" Text="MODIFICAR" Width="104px" />
            </td>
            <td class="auto-style60">
                <asp:Button ID="btnAgregar" runat="server" BorderStyle="None" Height="37px" Text="AGREGAR" Width="104px" />
            </td>
            <td class="auto-style41"></td>
        </tr>
    </table>
</asp:Content>


