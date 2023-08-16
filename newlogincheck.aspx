<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="newlogincheck.aspx.vb" Inherits="firstASP.newlogincheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script > 
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
  <div class="container mt-5 rounded-3" >
        <div class="row justify-content-center">
            <div class="col-md-6 bg-light text-dark p-3">
                <h2 class="text-center mb-4">STAFF LOGIN</h2>
  <div class="form-group" >
    <label for="exampleInputEmail1">Username</label>
    <asp:TextBox  runat="server" type="text" class="form-control" Id="InputUsername"  placeholder="Enter username"  required="true" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="InputPassword"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group mt-5">
    <label for="exampleInputPassword1">Password</label>
    <asp:TextBox  runat="server" type="password" class="form-control" id="InputPassword" placeholder="Password"  required="true" />
  </div>
  <div class="form-check mt-5 ">
<input type="checkbox" class="form-check-input" id="exampleCheck1"  />
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
            <asp:Button type="submit" class="btn btn-primary btn-block" ID="Button1" runat="server" Text="submit" />

        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="wrongUser" runat="server" Text=""></asp:Label>
 </div>
        </div>
      </div>
        </div>
    </form>
</body>
</html>
