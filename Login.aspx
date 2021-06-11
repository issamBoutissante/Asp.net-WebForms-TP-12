<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Asp.net_WevForms_TP12.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server">Login</asp:Label>
            <asp:TextBox ID="LoginText" runat="server"></asp:TextBox>
            <br />
            <label>Mot De Pass</label>
            <asp:TextBox ID="MotPass" runat="server"></asp:TextBox>
            <br />
            <asp:Button Text="Login" OnClick="Unnamed_Click" runat="server"/>
            <br />
            <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
