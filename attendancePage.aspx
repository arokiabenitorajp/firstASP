<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="attendancePage.aspx.vb" Inherits="firstASP.attendancePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

     <style>
       
        .center-container {
            
            justify-content: center;
            align-items: center;
            height: 100vh; 
        }
         .custom-bg {
             background-color :cornflowerblue;
         }
    </style>
     </head>
<body>
     <div class="col-lg-12 custom-bg">
    
    <form id="form1" runat="server">
        <div>
            <div class="d-flex  " >
                 <h2 class=" mx-auto justify-content-center">ATTENDANCE LOG SHEET</h2>
                <span class=" justify-content-end">
                    <asp:DropDownList  ID="selectClass" runat="server" AutoPostBack="true">
                                    </asp:DropDownList>

                </span>
            </div>
               
            <asp:Repeater  ID ="repeaterView" runat ="server" >
                <HeaderTemplate >
                    <div class="table-responsive table-bordered center-container">

                     <table class ="table table-dark">
                         <b>
                             <tr class ="row text-center" >
                                  <th class ="col">student id</th>
                                  <th class ="col">name</th>
                                  <th class ="col"> attendance</th>
                             </tr>
                         </b>
                         </table>
                </HeaderTemplate>
               
                <ItemTemplate >
                    <table class ="table table-hover">
                    <tr class ="row text-center">

                   <td class ="col"><asp:Label ID="Labid" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.student_id") %>'></asp:Label>
</td>  
                    <td class ="col"> <asp:Label ID="Labname" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.student_name") %>'></asp:Label>
</td>  
                    <td class ="col"> <asp:CheckBox ID="myCheckBox" runat="server" /></td>  
                </tr>
                    </table> 
                     </table> 

                </ItemTemplate>
                
                
            </asp:Repeater>
               <br />
               <br />
 
             <div class="container text-center">
      <asp:Button class ="btn btn-primary align-content-center"  ID="submited" runat="server" Text="submit" />

    </div>
           
            <br />
            
        </div>
    </form>
         </div>
</body>
    
</html>
