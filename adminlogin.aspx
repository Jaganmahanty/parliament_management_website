<%@ Page Title="" Language="VB" MasterPageFile="AdminMaster.master" AutoEventWireup="false" CodeFile="adminlogin.aspx.vb" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td align="center" height="80px" valign="middle" width="400px" 
                style="font-size: 20pt; color: #507CD1; font-weight: lighter">
                &nbsp;</td>
            <td align="center" height="80px" valign="middle" width="400px" colspan="2" 
                style="font-size: 20pt; color: #507CD1; font-weight: lighter">
                Administrator Login</td>
            <td align="center" height="80px" valign="middle" width="400px" 
                style="font-size: 20pt; color: #507CD1; font-weight: lighter">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" height="50px" valign="middle" width="450px" bgcolor="White">
                &nbsp;</td>
            <td align="right" height="50px" valign="middle" width="300px" bgcolor="#9999FF">
                Admin ID :&nbsp;&nbsp;&nbsp;
            </td>
            <td align="left" height="50px" valign="middle" bgcolor="#6699FF" width="300px">
                <asp:TextBox ID="adminid" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td align="left" height="50px" valign="middle" bgcolor="White">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" height="50px" valign="middle" width="450px" bgcolor="White">
                &nbsp;</td>
            <td align="right" height="50px" valign="middle" width="300px" bgcolor="#9999FF">
                Admin Password :</td>
            <td align="left" height="50px" valign="middle" bgcolor="#6699FF" width="300px">
                <asp:TextBox ID="adminpwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
            </td>
            <td align="left" height="50px" valign="middle" bgcolor="White">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" height="50px" valign="middle" width="450px">
                &nbsp;</td>
            <td align="right" height="50px" valign="middle" width="450px">
                &nbsp;</td>
            <td align="left" height="50px" valign="middle">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="100px" 
                    BackColor="#507CD1" />
            </td>
            <td align="left" height="50px" valign="middle">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

