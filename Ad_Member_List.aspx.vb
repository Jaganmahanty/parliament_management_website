Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class R_About
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)
    Dim cmd As New SqlCommand
    Dim dt As New DataTable
    Dim da As New SqlDataAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cmd.Connection = con
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
        If IsPostBack = False Then
            Display()
        End If

    End Sub

    Sub Display()
        Try
            cmd = New SqlCommand("select SrNo,FullName,Party,Constituency,State,Telephone,Email from tblmpreg", con)
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)
            GridView1.DataSource = dt
            Me.DataBind()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
       
    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Dim cmd As New SqlCommand("select SrNo,FullName,Party,Constituency,State,Telephone,Email from tblmpreg where FullName LIKE '%' + @SearchTerm + '%' OR Party LIKE '%' + @SearchTerm + '%' OR Constituency LIKE '%' + @SearchTerm + '%' OR State LIKE '%' + @SearchTerm + '%' OR Email LIKE '%' + @SearchTerm + '%'", con)
        cmd.Parameters.Add("@SearchTerm", SqlDbType.VarChar, 50).Value = txtsearch.Text
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "MP")
        GridView1.DataSource = ds.Tables("MP")
        Me.DataBind()
    End Sub

    Protected Sub GridView1_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit
        GridView1.EditIndex = -1
        Display()
    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

        Try
            Dim vid As String = GridView1.DataKeys(e.RowIndex).Value
            cmd.CommandText = "delete from tblmpreg where SrNo ='" & vid & "'"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Label1.Text = "Recoed deleted Successfully.."
            Display()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        Try
            Dim FullName, Party, Constituency, State, Telephone, Email As New TextBox
            Dim vid As String = GridView1.DataKeys(e.RowIndex).Value
            FullName = GridView1.Rows(e.RowIndex).Cells(2).Controls(0)
            Party = GridView1.Rows(e.RowIndex).Cells(3).Controls(0)
            Constituency = GridView1.Rows(e.RowIndex).Cells(4).Controls(0)
            State = GridView1.Rows(e.RowIndex).Cells(5).Controls(0)
            Telephone = GridView1.Rows(e.RowIndex).Cells(6).Controls(0)
            Email = GridView1.Rows(e.RowIndex).Cells(7).Controls(0)
            cmd.CommandText = "update tblmpreg set FullName='" & FullName.Text & "', Party='" & Party.Text & "',Constituency = '" & Constituency.Text & "', State='" & Constituency.Text & "',Telephone='" & Telephone.Text & "',Email='" & Email.Text & "' where SrNo='" & vid & "'"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Label1.Text = "Record Updated Successfully"
            GridView1.EditIndex = -1
            Display()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        Display()
    End Sub

   
End Class
