Imports System.CodeDom.Compiler
Imports System.Data.SqlClient
Imports System.Net.Security
Imports System.Security.Cryptography

Public Class attendancePage
    Inherits System.Web.UI.Page

    Dim connStr As String = ConfigurationManager.ConnectionStrings("myDataBaseConnectionString").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            selectClass.Items.Add("None")
            selectClass.Items.Add("10-A")
            selectClass.Items.Add("10-B")
        End If
        'Dim selectedClass As String = selectClass.SelectedValue
        'Dim conn As SqlConnection = New SqlConnection(connStr)
        'Dim cmd As SqlCommand = New SqlCommand()

        'conn.Open()
        'Dim sda As SqlDataAdapter
        'cmd.CommandText = "select * from wholeStudentDetails;"
        'cmd.Connection = conn
        'Dim dt As DataSet = New DataSet()
        'sda = New SqlDataAdapter(cmd)
        'sda.Fill(dt)
        'repeaterView.DataSource = dt
        'repeaterView.DataBind()
    End Sub

    Protected Sub selectPresent_SelectedIndexChanged(sender As Object, e As EventArgs) Handles selectClass.SelectedIndexChanged
        Dim selectedClass As String = selectClass.SelectedValue
        Dim conn As SqlConnection = New SqlConnection(connStr)
        Dim cmd As SqlCommand = New SqlCommand()

        conn.Open()
        Dim sda As SqlDataAdapter
        If selectClass.SelectedValue = "10-A" Then
            cmd.CommandText = "select * from wholeStudentDetails where class_id=10123;"
            cmd.Connection = conn

        ElseIf selectedClass.Equals("10-B") Then
            cmd.CommandText = "select * from wholeStudentDetails where class_id=10223;"
            cmd.Connection = conn
        End If

        Dim dt As DataSet = New DataSet()
        sda = New SqlDataAdapter(cmd)
        sda.Fill(dt)
        repeaterView.DataSource = dt
        repeaterView.DataBind()

    End Sub

    Protected Sub submited_Click(sender As Object, e As EventArgs) Handles submited.Click
        Dim conn As SqlConnection = New SqlConnection(connStr)
        Dim cmd As SqlCommand = New SqlCommand("select * from wholeStudentAttendance;", conn)
        Dim adapter As New SqlDataAdapter(cmd)
        Dim tempTable As New DataSet
        adapter.Fill(tempTable)

        Dim id As Int32
        Dim name As String
        Dim dat As String() = DateAndTime.Now.ToString.Split(" ")
        Dim attDate = CDate(dat(0))
        Dim attend As String

        Dim lbid As Label
        Dim lbname As Label
        ' Dim lbattend As Label
        For Each item In repeaterView.Items
            lbid = DirectCast(item.FindControl("labid"), Label)
            lbname = DirectCast(item.FindControl("labname"), Label)

            id = lbid.Text
            name = lbname.Text

            If item.FindControl("myCheckBox").checked Then
                attend = "P"
            Else
                attend = "A"
            End If
            Dim newRow As DataRow = tempTable.Tables(0).NewRow
            newRow("student_id") = id
            newRow("student_name") = name
            newRow("today_date") = attDate
            newRow("attendance") = attend
            tempTable.Tables(0).Rows.Add(newRow)
            Dim bilder As New SqlCommandBuilder(adapter)
            adapter.Update(tempTable)
        Next

    End Sub
End Class