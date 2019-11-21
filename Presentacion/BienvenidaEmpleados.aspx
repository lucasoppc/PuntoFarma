<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaEmpleado.Master" AutoEventWireup="true" CodeBehind="BienvenidaEmpleados.aspx.cs" Inherits="Presentacion.BienvenidaEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .panel2{
        }
        .auto-style1 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auto-style1">

    <asp:Table ID="Table1" runat="server" Height="100%" Width="100%">
        <asp:TableRow runat="server">
            <asp:TableCell>
                <asp:Label ID="lblBienvenido" runat="server" Font-Names="Arial" Font-Size="27px"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell>
                  <asp:Label ID="lblHorario" runat="server" Font-Names="Arial" Font-Overline="False" Font-Size="24px"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell>
                  <asp:Image ID="Image1" runat="server" Height="375px" ImageUrl="~/img/puntoFarmaIcon.png" Width="525px" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </div>
</asp:Content>
