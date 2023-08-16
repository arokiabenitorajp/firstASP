Public Class aboutpage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("username") Is Nothing Then
            Session("loginErr1") = "please log in first(About)"
        End If
    End Sub

End Class