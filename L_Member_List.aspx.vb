Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration


Partial Class L_Member_List
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cmd As New SqlCommand("select SrNo,FullName,Party,Constituency,State,Telephone,Email from tblmpreg", con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "MP")
        GridView1.DataSource = ds.Tables("MP")
        Me.DataBind()
        'GridView1.DataBind()
    End Sub

End Class
