Imports System.Data.SqlClient

Public Class markIndex
    Inherits System.Web.UI.Page

    Dim connStr As String = ConfigurationManager.ConnectionStrings("myDataBaseConnectionString").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub submitId_Click(sender As Object, e As EventArgs) Handles submitId.Click
        Dim conn As SqlConnection = New SqlConnection(connStr)
        Dim cmd As SqlCommand = New SqlCommand()
        Dim selectedClass As Int64
        Dim teacherId As String = txtId.Text
        Dim subjectName As String
        Dim teacherName As String
        If dropdownClass.SelectedValue.Equals("10-A") Then
            selectedClass = 10123
        Else
            selectedClass = 10223
        End If
        conn.Open()

        cmd.CommandText = "select * from teachersubjectTable where class_id=" & selectedClass
        cmd.Connection = conn
        Dim sda As SqlDataAdapter
        Dim dt As DataSet = New DataSet()
        sda = New SqlDataAdapter(cmd)
        sda.Fill(dt)
        Dim check As Boolean = False
        For i = 0 To dt.Tables(0).Rows.Count - 1
            For j = 0 To dt.Tables(0).Rows(i).ItemArray.Count - 1
                If dt.Tables(0).Rows(i).ItemArray(1) = teacherId Then
                    check = True
                    subjectName = dt.Tables(0).Rows(i).ItemArray(2)
                    teacherName = dt.Tables(0).Rows(i).ItemArray(0)
                    Exit For
                End If
            Next
            If check = True Then
                Exit For
            End If
        Next
        If check = False Then
            Response.Write("<script>alert('enter valid teacher id');</script>")
        Else
            Dim Querystr As String = String.Format("teachName={0}&subName={1}&teachId={2}&classId={3}", teacherName, subjectName, teacherId, selectedClass)
            Response.Redirect("markEnterIndex.aspx?" & Querystr)

        End If
    End Sub
End Class