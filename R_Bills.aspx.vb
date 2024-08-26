Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class R_Bills
    Inherits System.Web.UI.Page
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("con").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(connectionString)



    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnbill.Click
        If Page.IsValid Then
            Try
                Dim cmd As New SqlCommand("insert into tblbilll values(@no,@title,@ministry,@date,@status)", con)
                cmd.Parameters.Add("@no", SqlDbType.VarChar, 50).Value = CInt(txtbillno.Text)
                cmd.Parameters.Add("@title", SqlDbType.VarChar, 50).Value = txtbilltitle.Text
                cmd.Parameters.Add("@ministry", SqlDbType.VarChar, 50).Value = ddministry.SelectedValue
                cmd.Parameters.Add("@date", SqlDbType.Date).Value = CDate(txtbilldate.Text)
                cmd.Parameters.Add("@status", SqlDbType.VarChar, 50).Value = ddbillstatus.SelectedValue
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                MsgBox("Bill added successfully", MsgBoxStyle.OkCancel, "Result")
                clear()
                display()
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                If con.State = ConnectionState.Open Then
                    con.Close()
                End If
            End Try
        End If
    End Sub

    Sub clear()
        txtbilldate.Text = ""
        txtbillno.Text = ""
        txtbilltitle.Text = ""
    End Sub

    Protected Sub Button1_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Calendar1.Visible = True
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        txtbilldate.Text = Calendar1.SelectedDate.ToLongDateString
        Calendar1.Visible = False
    End Sub

    Sub display()
        Dim cmd As New SqlCommand("select SrNo,Bill_No,Bill_Title,Ministry,Date_of_Introduction,Status from tblbilll", con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "MP")
        GridView1.DataSource = ds.Tables("MP")
        Me.DataBind()
        'GridView1.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cmd.Connection = con
            con.ConnectionString = connectionString
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
        If IsPostBack = False Then
            display()
        End If

    End Sub

    Protected Sub GridView1_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit
        GridView1.EditIndex = -1
        display()
    End Sub

 
    
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Try
            Dim vid As String = GridView1.DataKeys(e.RowIndex).Value
            cmd.CommandText = "delete from tblbilll where SrNo = '" & vid & "'"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Label1.Text = "Record Deleted Successfully"
            display()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing

        GridView1.EditIndex = e.NewEditIndex
        display()
    End Sub
    


    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        MsgBox("edit")
        Try
            Dim Bill_No, Bill_Title, Ministry, Date_of_Introduction, Status As New TextBox
            Dim vid As String = GridView1.DataKeys(e.RowIndex).Value
            Bill_No = GridView1.Rows(e.RowIndex).Cells(2).Controls(0)
            Bill_Title = GridView1.Rows(e.RowIndex).Cells(3).Controls(0)
            Ministry = GridView1.Rows(e.RowIndex).Cells(4).Controls(0)
            Date_of_Introduction = GridView1.Rows(e.RowIndex).Cells(5).Controls(0)
            Status = GridView1.Rows(e.RowIndex).Cells(6).Controls(0)
            cmd.CommandText = "update tblbilll set Bill_No = '" & Bill_No.Text & "', Bill_Title = '" & Bill_Title.Text & "', Ministry = '" & Ministry.Text & "', Date_of_Introduction = '" & Date_of_Introduction.Text & "', Status = '" & Status.Text & "' where SrNo='" & vid & "'"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Label1.Text = "Record is updated"
            GridView1.EditIndex = -1
            display()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub



    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
