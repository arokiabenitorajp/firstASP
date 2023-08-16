Public Class loginPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles txtpass.TextChanged

    End Sub

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        Session("userName") = txtname.Text
        Session("passWord") = txtpass.Text
        Response.Redirect("responsepage.aspx")
    End Sub
End Class