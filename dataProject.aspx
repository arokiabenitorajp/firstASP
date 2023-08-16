<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dataProject.aspx.vb" Inherits="firstASP.dataProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <%-- <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server"
                AllowPaging="true" OnPageIndexChanging ="ViewPageIndex">
                <ItemTemplate >
                    <table>
                        <tr>
                            <td> id : </td>
                            <td > <%# Eval("stu_id") %></td>
                        </tr>
                         <tr>
                            <td> name : </td>
                            <td > <%# Eval("name") %></td>
                        </tr>
                        <tr>
                            <td> department : </td>
                            <td > <%# Eval("departments") %></td>
                        </tr>
                        <tr>
                            <td> sport : </td>
                            <td > <%# Eval("sport") %></td>
                        </tr>
                        <td> place : </td>
                            <td > <%# Eval("winning_place") %></td>
                        </tr>
                    </table>
                </ItemTemplate>
                <PagerSettings Visible ="true" Mode ="Numeric" PageButtonCount ="2" />
            </asp:FormView>

        </div>
       
        
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView> 
    </form>--%>
  
    <%--<form id="form2" runat ="server"  >
        <div >
            <asp:SqlDataSource ID ="SqlDataSource1" runat ="server" connectionString="<%$ ConnectionStrings:myDataBaseConnectionString %>" SelectCommand ="SELECT [id], [name], [department] FROM [academic_details]">
            </asp:SqlDataSource>
            <asp:Repeater runat ="server" DataSourceID ="SqlDataSource1">
                <HeaderTemplate >
                  <table >
                      <b>
                           <tr>
                               <th >Student Id</th>
                               <th>Student name</th>
                               <th >Department</th>
                               <th>Sport</th>
                               <th>Wining place</th>
                           </tr>
                      </b>
                </HeaderTemplate>
                <ItemTemplate >
                    <tr> 
                        <td > <%#DataBinder.Eval(Container, "DataItem.stu_id")  %></td>
                        <td > <%#DataBinder.Eval(Container, "DataItem.name")  %></td>
                        <td > <%#DataBinder.Eval(Container, "DataItem.departments")  %></td>
                        <td > <%#DataBinder.Eval(Container, "DataItem.sport")  %></td>
                        <td > <%#DataBinder.Eval(Container, "DataItem.winning_place")  %></td>
                    </tr>
                </ItemTemplate>
                <SeparatorTemplate >
                    <tr>
                        <td><hr /></td>
                        <td><hr /></td>
                        <td><hr /></td>
                        <td><hr /></td>
                        <td><hr /></td>
                    </tr>
                </SeparatorTemplate>
                <FooterTemplate >
                    <tr>
                        <td>gets all data</td>
                    </tr>
                   </table>
                </FooterTemplate>     
            </asp:Repeater>
        </div>
         </form>
        --%>
        <asp:ListView ID="ListView1" runat="server">
            <%--<ItemTemplate >
                <ul>
                    <li>
                        id : <%# Eval("stu_id") %> <br />
                        name : <%# Eval("name") %> <br />
                        department : <%# Eval("departments") %> <br />
                    </li>
                </ul>
            </ItemTemplate>--%>
             
                      <ItemTemplate  >
                          <table >
                          <tr>
                               <td > <%# Eval("stu_id") %></td>
                                <td > <%# Eval("name") %></td>
                                <td > <%# Eval("departments") %></td>
                          </tr>
                             </table>
                          </ItemTemplate>
               

                   
            



        </asp:ListView>
   
</body>
</html>
