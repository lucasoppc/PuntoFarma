<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaEmpleado.Master" AutoEventWireup="true" CodeBehind="ABMEmpleados.aspx.cs" Inherits="Presentacion.ABMEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            text-align: center;
        }
        .auto-style12 {
        text-align: left;
        width: 177px;
        height: 21px;
    }
    .auto-style14 {
        width: 337px;
        height: 30px;
    }
    .auto-style16 {
        width: 160px;
        height: 30px;
    }
    .auto-style33 {
        width: 337px;
    }
    .auto-style34 {
        width: 160px;
    }
    .auto-style41 {
        width: 160px;
        height: 14px;
    }
    .auto-style46 {
            width: 143px;
            height: 14px;
            text-align: right;
        }
    .auto-style48 {
            width: 337px;
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
    .auto-style60 {
        width: 177px;
        height: 14px;
        text-align: right;
    }
    .auto-style61 {
        width: 337px;
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
            width: 337px;
            height: 21px;
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
    .auto-style82 {
        width: 100%;
        height: 100%;
        position: relative;
        left: 7px;
        top: 3px;
    }
    .auto-style83 {
        width: 337px;
        height: 19px;
    }
    .auto-style85 {
        width: 160px;
        height: 19px;
    }
    .auto-style86 {
            width: 337px;
            height: 20px;
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
        .auto-style90 {
            width: 143px;
            height: 19px;
        }
        .auto-style91 {
            width: 143px;
        }
        .auto-style92 {
            width: 143px;
            height: 20px;
        }
        .auto-style93 {
            width: 143px;
            height: 30px;
        }
        .auto-style94 {
            width: 143px;
            height: 7px;
        }
        .auto-style96 {
            width: 143px;
            height: 21px;
        }
        .auto-style97 {
            height: 31px;
            width: 177px;
        }
        .auto-style98 {
            width: 337px;
            height: 31px;
        }
        .auto-style99 {
            width: 143px;
            height: 31px;
        }
        .auto-style100 {
            width: 160px;
            height: 31px;
        }
        .auto-style101 {
            height: 35px;
            width: 177px;
        }
        .auto-style102 {
            width: 337px;
            height: 35px;
        }
        .auto-style103 {
            width: 143px;
            height: 35px;
        }
        .auto-style104 {
            width: 160px;
            height: 35px;
        }
    .auto-style105 {
        width: 337px;
        height: 14px;
        text-align: left;
    }
    .auto-style107 {
        width: 143px;
        height: 14px;
        text-align: left;
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
            <td class="auto-style90">USERNAME&nbsp;&nbsp;</td>
            <td class="auto-style56" rowspan="2">
                <asp:Button ID="btnBuscar" runat="server" BorderStyle="None" Height="49px" Text="BUSCAR" Width="173px" OnClick="btnBuscar_Click" CausesValidation="False" />
            </td>
            <td class="auto-style85"></td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style91"><asp:TextBox ID="txtUsername" runat="server" Width="100%"></asp:TextBox>
            </td>
            <td class="auto-style34"></td>
        </tr>
        <tr>
            <td class="auto-style86"></td>
            <td class="auto-style92">NOMBRE</td>
            <td class="auto-style88"></td>
            <td class="auto-style89"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style93"><asp:TextBox ID="txtNombre" runat="server" Width="100%"></asp:TextBox>
            </td>
            <td class="auto-style74">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style86"></td>
            <td class="auto-style92">APELLIDO</td>
            <td class="auto-style88"></td>
            <td class="auto-style89"></td>
        </tr>
        <tr>
            <td class="auto-style61"></td>
            <td class="auto-style94"><asp:TextBox ID="txtApelldio" runat="server" Width="100%"></asp:TextBox>
            </td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style63"></td>
        </tr>
        <tr>
            <td class="auto-style86"></td>
            <td class="auto-style92">HORA DE INICIO</td>
            <td class="auto-style58"></td>
            <td class="auto-style89"></td>
        </tr>
        <tr>
            <td class="auto-style98"></td>
            <td class="auto-style99">
                <asp:DropDownList ID="ddlHoraInicio" runat="server" AutoPostBack="True" DataTextFormatString="{0:HH:mm} hs" Width="100%" Height="30px">
                </asp:DropDownList>
            </td>
            <td class="auto-style97"></td>
            <td class="auto-style100"></td>
        </tr>
        <tr>
            <td class="auto-style86"></td>
            <td class="auto-style92">HORA DE FIN</td>
            <td class="auto-style58"></td>
            <td class="auto-style89"></td>
        </tr>
        <tr>
            <td class="auto-style102"></td>
            <td class="auto-style103">
                <asp:DropDownList ID="ddlHoraFin" runat="server" AutoPostBack="True" DataTextFormatString="{0:HH:mm} hs" Width="100%" Height="30px">
                </asp:DropDownList>
            </td>
            <td class="auto-style101"></td>
            <td class="auto-style104"></td>
        </tr>
        <tr>
            <td class="auto-style86"></td>
            <td class="auto-style92">CONTRASENA</td>
            <td class="auto-style88">
            </td>
            <td class="auto-style89"></td>
        </tr>
        <tr>
            <td class="auto-style68"></td>
            <td class="auto-style96"><asp:TextBox ID="txtContrasena" runat="server" Width="100%"></asp:TextBox>
            </td>
            <td class="auto-style12">
            </td>
            <td class="auto-style70"></td>
        </tr>
        <tr>
            <td class="auto-style68">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" Display="None" ErrorMessage="Nombre de usuario requerido"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" Display="None" ErrorMessage="Nombre requerido"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style96">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style70">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style105">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApelldio" Display="None" ErrorMessage="Apellido requerido"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlHoraInicio" Display="None" ErrorMessage="Hora de inicio requerido"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style46">
                <asp:Button ID="btnEliminar" runat="server" BorderStyle="None" Height="37px" Text="ELIMINAR" Width="30%" OnClick="btnEliminar_Click" />
                <asp:Button ID="btnModificar" runat="server" BorderStyle="None" Height="37px" Text="MODIFICAR" Width="30%" OnClick="btnModificar_Click" />
                <asp:Button ID="btnAgregar" runat="server" BorderStyle="None" Height="37px" Text="AGREGAR" Width="30%" OnClick="btnAgregar_Click" />
            </td>
            <td class="auto-style60">
                &nbsp;</td>
            <td class="auto-style41"></td>
        </tr>
        <tr>
            <td class="auto-style48">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlHoraFin" Display="None" ErrorMessage="Hora de Fin requerido"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtContrasena" Display="None" ErrorMessage="Contraseña requerida"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUsername" Display="None" ErrorMessage="El nombre de usuario debe tener entre 3 y 20 caracteres" ValidationExpression="[\D\d]{3,20}"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNombre" Display="None" ErrorMessage="El Nombre debe tener entre 3 y 20 caracteres" ValidationExpression="[\D]{3,20}"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtApelldio" Display="None" ErrorMessage="El Apellido debe tener entre 3 y 20 caracteres" ValidationExpression="[\D]{3,20}"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtContrasena" Display="None" ErrorMessage="La contraseña debe tener entre 4 y 50 caracteres" ValidationExpression="[\D\d]{4,50}"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style107">
                <asp:Label ID="lblError" runat="server"></asp:Label>
                <div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </div>
            </td>
            <td class="auto-style60">
                &nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


