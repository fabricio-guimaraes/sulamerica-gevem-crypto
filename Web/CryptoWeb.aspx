<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CryptoWeb.aspx.cs" Inherits="Web.CryptoWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 100%; height: 100%; font: bold 11px verdana">
            <div style="vertical-align: central; text-align: center; width: 55%; position: center; margin: 90px 0 0 23%">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/sul_png_logo_sas.png" />
                <br />
                <br />
                <asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>&nbsp;<asp:TextBox ID="txtPass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <div style="background-color:orange">
                    <br />
                    <asp:Label ID="lblCript" runat="server" Text="Dados a Criptografar"></asp:Label>&nbsp;<asp:TextBox ID="txtCript" runat="server" Width="387px"></asp:TextBox>
                    &nbsp;<asp:Button ID="btnCript" runat="server" Text="Criptografar" OnClick="btnCript_Click" BackColor="White" Font-Bold="True" Font-Size="8pt" Width="96px"/>
                    <br />
                    <br />
                    <asp:Label ID="lblResultCript" runat="server" Text="Resultado Criptografado"></asp:Label>&nbsp;<asp:TextBox ID="txtResultCript" runat="server" Width="387px" Enabled="false"></asp:TextBox>
                    <br />
                    <br />
                </div>
                <br />
                <br />
                <div style="background-color:darkblue; color: white">
                    <br />
                    <asp:Label ID="lblDeCript" runat="server" Text="Dados a Descriptografar"></asp:Label>&nbsp;<asp:TextBox ID="txtDeCript" runat="server" Width="387px"></asp:TextBox>
                    &nbsp;<asp:Button ID="btnDecript" runat="server" Text="Descriptografar" OnClick="btnDecript_Click" BackColor="White" Font-Bold="True" Font-Size="8pt" Width="96px" />
                    <br />
                    <br />
                    <asp:Label ID="lblResultDeCript" runat="server" Text="Resultado Descriptografado"></asp:Label>&nbsp;<asp:TextBox ID="txtResultDecript" runat="server" Width="387px" Enabled="false"></asp:TextBox>
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
