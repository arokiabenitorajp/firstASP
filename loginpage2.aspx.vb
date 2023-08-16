Public Class loginpage2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("loginErr1") <> "" Then
            Label2.Text = Session("loginErr1").ToString
        End If
        If Session("username") IsNot Nothing Then
            Session("loginErr2") = "you already logged in"
            Response.Redirect("homepage.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session("username") = txtuser.Text
        Response.Redirect("homepage.aspx")


    End Sub
End Class