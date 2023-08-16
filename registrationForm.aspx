<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="registrationForm.aspx.vb" Inherits="firstASP.registrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style >
        * {
            width:0px;
            }
        html {
            background-color:brown;
        }
        .container {
            background-color :teal;
            color :aliceblue;
            width :800px;
            height :500px;
            margin :70px;
            border :7px groove black;
            padding :20px;
        }
        #head {
            text-align :center;
            display:inline;
        }
        .container2 {
            margin :30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="container">

         <h2 id="head">registration form</h2><br />
            <div class ="container2">
                <asp:Label class="labels" runat="server" Text="FULL NAME"></asp:Label>
            <asp:TextBox class="txtname" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label class="lab" runat="server" Text="AGE"></asp:Label>
            <asp:TextBox class="txtage" runat="server" Width="197px"></asp:TextBox>
            </div>  
            <div>
                 <asp:Label class="labels" runat="server" Text="PHONENUMBER"></asp:Label> 
            <asp:TextBox class="" runat="server"></asp:TextBox>
                 <button id="submit" >SUBMIT</button>
            </div>
           
        </div>
    </form>
</body>
</html>
