<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="markEnterIndex.aspx.vb" Inherits="firstASP.markEnterIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
       
        <div class="container">
            <h2 class ="text-center ">mark enter portal</h2>
            <div>
                <div class ="row ">
                    <div class ="col-sm-2 ">
                    <asp:Label ID="Label1" runat="server" Text="teacher name : "></asp:Label>
                    <asp:Label ID="teacherNamelab" runat="server" Text="Label"></asp:Label>
                    </div>
                    
                </div>

                 <div class ="row ">
                      <div class ="col ">
                       <asp:Label ID="Label2" runat="server" Text="teacher id :"></asp:Label> 
                           <asp:Label ID="teacherIdLab" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>

                 <div class="row ">
                      <div class ="col ">
                      <asp:Label ID="Label3" runat="server" Text="subject name : "></asp:Label>
                        <asp:Label ID="subjectNameLab" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>

                 <div class ="row ">
                      <div class ="col ">
                      <asp:Label ID="Label6" runat="server" Text="class : "></asp:Label>
                      <asp:Label ID="classIdLab" runat="server" Text="Label"></asp:Label>
                    </div>               
                </div>
            </div>
             <asp:Repeater  ID ="repeaterViewMark" runat ="server" >
                <HeaderTemplate >
                    <div class="table-responsive table-bordered center-container">

                     <table class ="table table-dark">
                         <b>
                             <tr class ="row text-center" >
                                  <th class ="col">CLASS ID </th>
                                  <th class ="col">STUDENT ID </th>
                                  <th class ="col"> STUDENT NAME </th>
                                  <th class ="col"> <asp:Label ID="subjectLab" runat="server" Text=""></asp:Label> </th>
                             </tr>
                         </b>
                         </table>
                </HeaderTemplate>
                  <ItemTemplate >
                    <table class ="table table-hover">
                    <tr class ="row text-center">
                      <td class ="col ">  <asp:Label  ID="tableclassIdLab" runat="server" Text='<%# DataBinder.Eval(Container, ("DataItem.class_id")) %>'></asp:Label></td>
                      <td class ="col">  <asp:Label ID="tablestudentIdLab" runat="server" Text='<%# DataBinder.Eval(Container, ("DataItem.student_id")) %>'></asp:Label></td>
                      <td class ="col">  <asp:Label ID="tablestudentNameLab" runat="server" Text='<%# DataBinder.Eval(Container, ("DataItem.student_name")) %>'></asp:Label></td>
                      <td class ="col"> <asp:TextBox ID="tabletxtMarkShow" runat="server" Text ='<%# DataBinder.Eval(Container, ("DataItem." & subjectNameLab.Text)) %>'></asp:TextBox></td>
                </tr>
                    </table> 
                     </table> 

                </ItemTemplate>
                
                 </asp:Repeater >
        </div>
    </form>
</body>
</html>
