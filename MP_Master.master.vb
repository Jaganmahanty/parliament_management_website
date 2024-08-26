
Partial Class MP_Master
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblfname.Text = Session("username")
    End Sub
End Class

