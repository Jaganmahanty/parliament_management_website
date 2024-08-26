
Partial Class adminlogin
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If adminid.Text = "admin" And adminpwd.Text = "admin123" Then
            Response.Redirect("Ad_Home.aspx")
        Else
            Response.Redirect("adminlogin.aspx")
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub
End Class
