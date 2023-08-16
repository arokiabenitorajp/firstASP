Public Class applicationWebState
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim count As Int16 = 0
        If Application("obj") Is Nothing Then
            count = 0
        Else
            count = Convert.ToInt16(Application("obj"))
        End If
        count = +1
        Application.Lock()
        Application("obj") = count
        Application.UnLock()
        counterlab.Text = "number of users" & count

    End Sub

End Class