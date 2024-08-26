Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class L_bills
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cmd As New SqlCommand("select Bill_No,Bill_Title,Ministry,Date_Of_Introduction,Status from tblbilll", con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "MP")
        GridView1.DataSource = ds.Tables("MP")
        Me.DataBind()
    End Sub
End Class
