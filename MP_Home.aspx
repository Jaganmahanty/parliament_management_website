<%@ Page Title="" Language="VB" MasterPageFile="~/MP_Master.master" AutoEventWireup="false" CodeFile="MP_Home.aspx.vb" Inherits="MPHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
     
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td height="200px" width="200px">
                            <asp:Image ID="Image5" runat="server" Height="250px" 
                                ImageUrl="~/images/par.png" Width="250px" />
                        </td>
                        <td width="600px">
                            <asp:Image ID="Image6" runat="server" Height="250px" 
                                ImageUrl="~/images/loksabha.jpg" Width="650px" />
                        </td>
                        <td style="font-weight: 700">
                <asp:Image ID="Image7" runat="server" Height="250px" 
                    ImageUrl="~/images/ombirla.jpg" Width="100%" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

