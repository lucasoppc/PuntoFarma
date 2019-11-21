<%@ Page Title="" Language="C#" MasterPageFile="~/Empleado.Master" AutoEventWireup="true" CodeBehind="ListadoMedicamentosPedidos.aspx.cs" Inherits="Presentacion.ListadoMedicamentosPedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            text-align: center;
            height: 95px;
        }
        .auto-style8 {
            width: 23px;
        }
        .auto-style10 {
            width: 226px;
        }
        .auto-style11 {
            width: 423px;
        }
        .auto-style12 {
            width: 586px;
        }
        .auto-style14 {
            width: 118px;
        }
        .auto-style15 {
            width: 23px;
            height: 31px;
        }
        .auto-style16 {
            width: 118px;
            height: 31px;
        }
        .auto-style18 {
            width: 226px;
            height: 31px;
        }
        .auto-style19 {
            width: 586px;
            height: 31px;
        }
        .auto-style20 {
            width: 423px;
            height: 31px;
        }
        .auto-style21 {
            width: 23px;
            height: 23px;
        }
        .auto-style22 {
            width: 118px;
            height: 23px;
        }
        .auto-style24 {
            width: 226px;
            height: 23px;
        }
        .auto-style25 {
            width: 586px;
            height: 23px;
        }
        .auto-style26 {
            width: 423px;
            height: 23px;
        }
        .auto-style27 {
            width: 23px;
            height: 30px;
        }
        .auto-style28 {
            width: 118px;
            height: 30px;
        }
        .auto-style30 {
            width: 226px;
            height: 30px;
        }
        .auto-style31 {
            width: 586px;
            height: 30px;
        }
        .auto-style32 {
            width: 423px;
            height: 30px;
        }
        .auto-style33 {
            width: 635px;
        }
        .auto-style34 {
            width: 635px;
            height: 31px;
        }
        .auto-style35 {
            width: 635px;
            height: 23px;
        }
        .auto-style36 {
            width: 635px;
            height: 30px;
        }
        .auto-style37 {
            margin-left: 6px;
        }
        .auto-style38 {
            width: 1268px;
        }
        .auto-style39 {
            width: 100%;
            height: 708px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style39">
        <tr>
            <td class="auto-style7" colspan="6">
                <h1 style="font-family: Arial, Helvetica, sans-serif" class="auto-style38">LISTADO DE MEDICAMENTOS Y PEDIDOS&nbsp;</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style33">FARMACEUTICA</td>
            <td class="auto-style10">
                <asp:DropDownList ID="ddlFarmaceuticas" runat="server" Height="26px" Width="300px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">FILTRO&nbsp;<asp:DropDownList ID="ddlFiltro" runat="server" AutoPostBack="True" CssClass="auto-style37" Height="32px" Width="231px">
                <asp:ListItem>TODOS</asp:ListItem>
                <asp:ListItem>GENERADOS</asp:ListItem>
                <asp:ListItem>ENTREGADOS</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="gvMedicamentos" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Height="161px" Width="612px">
                    <Columns>
                        <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                        <asp:BoundField DataField="Precio" DataFormatString="{0:c}" HeaderText="Precio" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style11">
                <asp:ListBox ID="lstPedidos" runat="server" Height="158px" Width="404px" AutoPostBack="True"></asp:ListBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
            <td class="auto-style34"></td>
            <td class="auto-style18"></td>
            <td class="auto-style19"></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22"></td>
            <td class="auto-style35"></td>
            <td class="auto-style24"></td>
            <td class="auto-style25"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style28"></td>
            <td class="auto-style36"></td>
            <td class="auto-style30"></td>
            <td class="auto-style31"></td>
            <td class="auto-style32"></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
