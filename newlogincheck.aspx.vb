Imports System.Data.SqlClient

Public Class newlogincheck
    Inherits System.Web.UI.Page

    Dim conString As String = ConfigurationManager.ConnectionStrings("myDataBaseConnectionString").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim conn As SqlConnection = New SqlConnection(conString)
        conn.Open()
        Dim sda As SqlDataAdapter = New SqlDataAdapter("select * from loginTable;", conn)
        Dim dt As DataSet = New DataSet()
        sda.Fill(dt)
        Dim user As Boolean = False
        Dim pass As Boolean = False
        For Each r As DataRow In dt.Tables(0).Rows
            If r(0).ToString().Equals(InputUsername.Text) Then
                user = True
                If r(1).ToString().Equals(InputPassword.Text) Then
                    pass = True
                End If
            End If
        Next
        'For Each r As DataRow In dt.Tables(0).Rows
        '    If r(1).ToString().Equals(InputPassword.Text) Then
        '        user = True
        '    End If
        'Next
        If user = False Then
            'wrongUser.Text = "enter valid username"

            'Response.Redirect("newlogincheck.aspx")
            Response.Write("<script>alert('enter valid username');</script>")
        ElseIf pass = False Then
            'wrongUser.Text = "enter valid password"

            ' Response.Redirect("newlogincheck.aspx")
            Response.Write("<script>alert('enter valid password');</script>")
        Else
            Response.Redirect("attendancePage.aspx")
            Response.Write("<script>alert('logged succesful');</script>")
        End If
    End Sub
End Class