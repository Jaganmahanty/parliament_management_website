<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Loksabha.aspx.vb" Inherits="Loksabha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 156px;
        }
        .style15
        {
            width: 408px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="style1">
        <tr>
            <td align="center">
                <table class="style1">
                    <tr>
                        <td class="style14">
                            <asp:Image ID="Image5" runat="server" Height="150px" 
                                ImageUrl="~/images/par.png" Width="150px" />
                        </td>
                        <td class="style15">
                            <asp:Image ID="Image6" runat="server" Height="150px" 
                                ImageUrl="~/images/loksabha.jpg" Width="400px" />
                        </td>
                        <td align="justify" bgcolor="#FF6600" valign="top">
                            <asp:Label ID="Label1" runat="server" 
                                Text="As per the provision of Article 79 of Indian Constitution, the House of the People, the Lok Sabha is the lower House of the parliament. Lok Sabha is composed of representatives of the people chosen by direct election on the basis of the adult suffrage. The maximum strength of the House envisaged by the Constitution is 552."></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:Image ID="Image7" runat="server" Height="100px" 
                    ImageUrl="~/images/speaker.jpg" Width="700px" />
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
   
</asp:Content>

