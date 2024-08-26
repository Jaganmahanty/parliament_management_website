<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 452px;
        }
        .style15
        {
            width: 979px;
            height: 38px;
        }
        .style16
        {
            height: 38px;
        }
        .style17
        {
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td align="center" class="style17" 
                style="color: #507CD1; font-size: 20pt; font-weight: lighter;" colspan="4" 
                height="100px" valign="middle">
                Login For Member Of Parliament</td>
        </tr>
        <tr>
            <td align="right" class="style17" style="color: #000000; font-size: 15pt">
                &nbsp;</td>
            <td align="right" class="style17" style="color: #000000; font-size: 15pt" 
                bgcolor="#9999FF" height="40px" width="300px">
                Username :&nbsp;&nbsp;
            </td>
            <td bgcolor="#6699FF" height="40px" width="300px">
    <asp:TextBox ID="txtuname" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td width="800px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style15" style="color: #000000; font-size: 15pt">
                &nbsp;</td>
            <td align="right" class="style15" style="color: #000000; font-size: 15pt" 
                bgcolor="#9999FF" height="40px" width="300px">
                Password :&nbsp;&nbsp;
            </td>
            <td class="style16" bgcolor="#6699FF" height="40px" width="300px">
    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
            <td class="style16" width="800px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style17">
                &nbsp;</td>
            <td align="right" class="style17" width="300px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="400px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style17">
                &nbsp;</td>
            <td align="right" class="style17" width="300px">
                &nbsp;</td>
            <td>
    <asp:Button ID="btnlogin" runat="server" Text="Login" BackColor="#507CD1" Width="100px" />
            </td>
            <td width="400px">
                &nbsp;</td>
        </tr>
    </table>
&nbsp;
</asp:Content>

