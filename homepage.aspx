<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="homepage.aspx.vb" Inherits="firstASP.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href ="loginpage2.aspx" >login</a>
            <a href ="#"> Home</a>
            <a href ="aboutpage.aspx">About</a>
        </div>
        <h3>welcome <asp:Label ID="label1" runat ="server" Text =""></asp:Label></h3>
        <h1>This is home page</h1>
        <asp:Label id="label2" runat ="server"  Text =""></asp:Label>
        <br />
        <asp:Button ID ="button1" runat ="server" Text ="logout" />

    </form>
</body>
</html>
