Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration


Partial Class login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)

    

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        Dim cmd As New SqlCommand("select count(*) from tblmpreg where UserName=@uname and PassWord=@pwd", con)
        cmd.Parameters.Add("@uname", SqlDbType.VarChar, 50).Value = txtuname.Text
        cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = txtpwd.Text
        con.Open()
        Dim cnt As Integer
        cnt = cmd.ExecuteScalar
        con.Close()
        If cnt = 1 Then
            Session("username") = txtuname.Text
            Response.Redirect("MP_Home.aspx")
        Else
            MsgBox("User Does Not Exists")
        End If
    End Sub

    Sub clear()
        txtpwd.Text = ""
        txtuname.Text = ""
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        clear()
    End Sub
End Class
