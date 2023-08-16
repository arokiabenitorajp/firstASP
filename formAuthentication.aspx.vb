Public Class formAuthentication
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub forSubmit_Click(sender As Object, e As EventArgs) Handles forSubmit.Click
        If FormsAuthentication.Authenticate(inputUserName.Value, inpuPassword.Value) Then
            FormsAuthentication.RedirectFromLoginPage(inputUserName.Value, True)
        Else
            forVerify.Text = "enter valid user"
        End If
    End Sub
End Class