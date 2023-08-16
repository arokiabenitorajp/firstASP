<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="formAuthentication.aspx.vb" Inherits="firstASP.formAuthentication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Name : <input id="inputUserName" runat ="server" />
             Enter Password : <input id="inpuPassword" runat ="server" />
            <asp:Button ID="forSubmit" runat="server" Text="submit" />
            <asp:Label ID="forVerify" runat="server" Text="show"></asp:Label>
        </div>
    </form>
</body>
</html>
