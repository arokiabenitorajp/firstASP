Imports System.Data.SqlClient

Public Class markEnterIndex
    Inherits System.Web.UI.Page

    Dim connStr As String = ConfigurationManager.ConnectionStrings("myDataBaseConnectionString").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim teachName As String = Request.QueryString("teachName")
        Dim teachId As Integer = Integer.Parse(Request.QueryString("teachId"))
        Dim subName As String = Request.QueryString("subName")
        Dim ClassId As Integer = Integer.Parse(Request.QueryString("classId"))
        teacherNamelab.Text = teachName
        teacherIdLab.Text = teachId
        subjectNameLab.Text = subName
        classIdLab.Text = ClassId

        Dim sqlConn As SqlConnection = New SqlConnection(connStr)
        Dim cmd As SqlCommand = New SqlCommand()
        sqlConn.Open()
        cmd.CommandText = "select class_id,student_id,student_name," & subName & " from studentsQuarterlyMarks where class_id=" & ClassId
        cmd.Connection = sqlConn
        Dim adapter As New SqlDataAdapter(cmd)
        Dim tempTable As New DataSet
        adapter.Fill(tempTable)
        repeaterViewMark.DataSource = tempTable
        repeaterViewMark.DataBind()
        'For i = 0 To tempTable.Tables(0).Rows.Count - 1
        '    repeaterViewMark.Items   tableclassIdLab.text = tempTable.Tables(0).Rows(i).ItemArray(0)
        'Next
    End Sub

End Class