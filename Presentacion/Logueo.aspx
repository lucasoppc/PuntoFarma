<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logueo.aspx.cs" Inherits="Presentacion.Logueo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logueo</title>
    <style type="text/css">
        .auto-style1 {
            position:center;
            margin:auto;
            flex:auto;
            height: 472px;
            width: 483px;
            margin-top:100px;
        }
        .auto-style2 {
            width: 100%;
            height: 86px;
            margin-top: 0%;
            bottom: 20%;
        }
        .auto-style3 {
            position: relative;
            z-index: inherit;
            height: 47px;
            top: 30%;
            right: 0px;
            left: 0px;
            color: #FFFFFF;
            font-size: large;
            text-align: center;
        }
        .auto-style4 {
            position: relative;
            z-index: inherit;
            height: 47px;
            top: 25%;
            right: 0px;
            left: 0px;
            color: #FFFFFF;
            font-size: large;
            text-align: center;
        }
        .auto-style5 {
            position: relative;
            height: 46px;
            text-align: center;
            width: 100%;
            top:50px;
        }
        .newStyle1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style6 {
            font-family: Arial, Helvetica, sans-serif;
            color: #FFFFFF;
            position:relative;
        }
        .auto-style7 {
            height: 896px;
        }
        .auto-style8 {
            position: relative;
            z-index: inherit;
            height: 48px;
            width:189px;
            top: 45%;
            right: -37px;
            left: 37px;
            text-align: center;
        }
        .auto-style9 {
            position: relative;
            z-index: inherit;
            height: 48px;
            width: 189px;
            top: 35%;
            right: 0px;
            left: 260px;
            text-align: center;
        }
        .auto-style10 {
            margin-top:170px;
            margin-left:200px;
        }
        #validadores{
            margin:auto;
            width:450px;
        }
        #consultarpedido{
            position: relative;
            z-index: inherit;
            height: 47px;
            top: 35%;
            color: #FFFFFF;
            font-size: large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style7">
    <div style="background-color: #000000; " class="auto-style2">
        
    </div>
    <div class="auto-style1" style="background-color: #0099FF; line-height:inherit; vertical-align: middle; ">
        <div class="auto-style5"; >
            <h1>
            
                <span class="auto-style6">INGRESO USUARIOS</span></h1>
&nbsp;</div>
        
        <div class="auto-style4" style="vertical-align: middle; ">

            <strong>
            <asp:TextBox ID="txtNombreUsuario" runat="server" placeholder="Nombre de usuario" Height="36px" Width="343px" Font-Bold="True" Font-Size="Larger"></asp:TextBox>
            </strong>

        </div>

        <div class="auto-style3" style="vertical-align: middle">
            <strong>
            
            <asp:TextBox ID="txtContraseña" runat="server" placeholder="Contraseña" Height="36px" Width="343px" Font-Size="Larger" TextMode="Password"></asp:TextBox>
            </strong>

        </div>

        <div id="consultarpedido">
            <asp:LinkButton ID="consultarPedido" runat="server" PostBackUrl="/ConsultarEstadoPedido.aspx" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="White" CausesValidation="False">Consultar estado de Pedido</asp:LinkButton>
        </div>

        <div class="auto-style8" style="vertical-align: middle; ">
            

            <asp:Button ID="btnLogueo" runat="server" BorderStyle="None" Height="46px" Text="Entrar" Width="187px" BackColor="#33CC33" Font-Bold="True" Font-Size="Larger" ForeColor="White" OnClick="btnLogueo_Click" />
            

        </div>
        <div class="auto-style9" style="vertical-align: middle; z-index: inherit;">
            <asp:Button ID="btnAltaCliente" runat="server" BorderStyle="None" Height="46px" Text="Registrarse" Width="187px" BackColor="#FF3300" Font-Bold="True" Font-Size="Larger" ForeColor="White" OnClick="btnAltaCliente_Click" CausesValidation="False" />


        </div>
    <div id="lbl" class="auto-style10"><asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            </div>

            

    </div>
        <div id="validadores">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
        <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombreUsuario" Display="None" ErrorMessage="Nombre de usuario requerido" ForeColor="Black" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </strong>
        <strong>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContraseña" Display="None" ErrorMessage="Contraseña requerida" ForeColor="Black"></asp:RequiredFieldValidator>
        </strong>
            
    </form>

</body>
</html>
