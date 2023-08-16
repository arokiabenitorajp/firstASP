<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="markIndex.aspx.vb" Inherits="firstASP.markIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
    <div class ="container center-container">
    <form id="form1" runat="server">

        <div class ="row justify-content-center ">
              <h2>WELCOME TO DON BOSCO MARK PORTAL</h2>
            <div class ="col-3">
                
                <asp:Label ID="labid" runat="server" Text="teacher id "></asp:Label>
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            </div>
          <div class ="col-3">
               <asp:Label ID="labClass" runat="server" Text="select class"></asp:Label>
                <asp:DropDownList ID="dropdownClass" runat="server">
                    <asp:ListItem>10-A</asp:ListItem>
                    <asp:ListItem>10-B</asp:ListItem>
               </asp:DropDownList>
               <br />
          </div>
        </div>
        <div class ="text-center ">
            <asp:Button ID="submitId" runat="server" Text="submit" />
        </div>
    </form>
        </div>
</body>
</html>
