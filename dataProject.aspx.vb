Imports System.Data.SqlClient

Public Class dataProject
    Inherits System.Web.UI.Page

    Dim connStr As String = ConfigurationManager.ConnectionStrings("myDataBaseConnectionString").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ViewData()
    End Sub

    Protected Sub ViewData()
        Dim conn As SqlConnection = New SqlConnection(connStr)
        conn.Open()
        Dim sda As SqlDataAdapter = New SqlDataAdapter("select * from isport;", conn)
        Dim dt As DataTable = New DataTable()
        sda.Fill(dt)
        ListView1.DataSource = dt
        ListView1.DataBind()

    End Sub
    Protected Sub ViewPageIndex(ByVal sender As Object, ByVal e As FormViewPageEventArgs)
        ' ListView1.PageIndex = e.NewPageIndex
    End Sub


End Class