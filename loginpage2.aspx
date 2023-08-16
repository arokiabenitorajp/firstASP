<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="loginpage2.aspx.vb" Inherits="firstASP.loginpage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <br />
            <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="submit" />
        </p>
        <div>
        </div>
    </form>
</body>
</html>
