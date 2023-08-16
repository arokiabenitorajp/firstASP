Public Class homepage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("username") Is Nothing Then
            Session("loginErr1") = "please login first(home page)"
        End If
        If Session("loginErr1") IsNot Nothing Then
            label2.Text = Session("loginErr2").ToString
        End If

    End Sub

    Protected Sub button1_Click(sender As Object, e As EventArgs) Handles button1.Click
        Session.Remove("username")
        Response.Redirect("loginpage2.aspx")
    End Sub
End Class