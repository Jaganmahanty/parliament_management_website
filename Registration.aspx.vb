Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class registration
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)

   
   
    Protected Sub CustomValidator1_ServerValidate(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        Dim len As Integer = args.Value.Length
        If len = 8 Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub

    Protected Sub btnregister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister.Click
        If Page.IsValid Then
            Try
                Dim cmd As New SqlCommand("insert into tblmpreg values(@fname,@gender,@bdate,@mobile,@email,@party,@consti,@state,@uname,@pwd)", con)
                cmd.Parameters.Add("@fname", SqlDbType.VarChar, 50).Value = txtfname.Text
                Dim gen As String = ""
                If rbmale.Checked Then
                    gen = rbmale.Text
                ElseIf rbfemale.Checked Then
                    gen = rbfemale.Text
                End If
                cmd.Parameters.Add("@gender", SqlDbType.VarChar, 50).Value = gen
                cmd.Parameters.Add("@bdate", SqlDbType.Date).Value = CDate(txtbdate.Text)
                cmd.Parameters.Add("@mobile", SqlDbType.Decimal).Value = CDec(txtmobile.Text)
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = txtemail.Text
                cmd.Parameters.Add("@party", SqlDbType.VarChar, 50).Value = ddparty.SelectedValue
                cmd.Parameters.Add("@consti", SqlDbType.VarChar, 50).Value = txtconsti.Text
                cmd.Parameters.Add("@state", SqlDbType.VarChar, 50).Value = txtstate.Text
                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 50).Value = txtuname.Text
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = txtpwd.Text
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                MsgBox("You have registered successfully", MsgBoxStyle.OkCancel, "Result")
                Response.Redirect("Login.aspx")
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                If con.State = ConnectionState.Open Then
                    con.Close()
                End If
            End Try
        End If
    End Sub

    Protected Sub txtreset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtreset.Click
        txtfname.Text = ""
        txtbdate.Text = ""
        txtmobile.Text = ""
        txtemail.Text = ""
        txtconsti.Text = ""
        txtstate.Text = ""
        txtuname.Text = ""
        txtpwd.Text = ""
    End Sub

    Protected Sub CustomValidator2_ServerValidate(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator2.ServerValidate
        Dim len As Integer = args.Value.Length
        If len > 6 Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        txtbdate.Text = Calendar1.SelectedDate.ToLongDateString
        Calendar1.Visible = False
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Calendar1.Visible = True
    End Sub
End Class
