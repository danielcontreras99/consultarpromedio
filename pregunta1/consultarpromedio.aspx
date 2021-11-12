<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultarpromedio.aspx.cs" Inherits="pregunta1.consultarpromedio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 69px; top: 48px; position: absolute" Text="Ingrese código:"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="position: absolute; z-index: 1; left: 69px; top: 89px" Text="Código:"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 69px; top: 119px; position: absolute; width: 34px" Text="Nombre:"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 69px; top: 150px; position: absolute" Text="Apellido:"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 114px; top: 191px; position: absolute; height: 133px; width: 187px">
        </asp:GridView>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 70px; top: 350px; position: absolute" Text="Promedio:"></asp:Label>
        <asp:TextBox ID="txtcodigo" runat="server" BorderStyle="Solid" style="z-index: 1; left: 185px; top: 47px; position: absolute"></asp:TextBox>
        <asp:Label ID="lblcodigo" runat="server" BorderStyle="Solid" style="z-index: 1; left: 149px; top: 90px; position: absolute"></asp:Label>
        <asp:Label ID="lblnombre" runat="server" BorderStyle="Solid" style="z-index: 1; left: 149px; top: 120px; position: absolute"></asp:Label>
        <asp:Label ID="lblapellido" runat="server" BorderStyle="Solid" style="z-index: 1; left: 149px; top: 151px; position: absolute"></asp:Label>
        <asp:Label ID="lblpromedio" runat="server" BorderStyle="Solid" style="z-index: 1; left: 150px; top: 351px; position: absolute"></asp:Label>
        <asp:Button ID="btnbuscar" runat="server" OnClick="btnbuscar_Click" style="z-index: 1; left: 365px; top: 46px; position: absolute" Text="Buscar" />
    </form>
</body>
</html>
