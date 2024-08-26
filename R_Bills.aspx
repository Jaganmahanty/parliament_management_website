<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="R_Bills.aspx.vb" Inherits="R_Bills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 422px;
        }
        .style15
        {
            height: 31px;
            width: 422px;
        }
        .style16
        {
            height: 33px;
        }
        .style17
        {
            width: 422px;
            height: 33px;
        }
        .style18
        {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <table class="style1">
                    <tr>
                        <td align="right" width="300px" class="style16" bgcolor="White">
                            &nbsp;</td>
                        <td align="right" width="300px" class="style16" bgcolor="#9999FF">
                            Bill No :</td>
                        <td align="left" class="style17" bgcolor="#6699FF" width="500px">
                            <asp:TextBox ID="txtbillno" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td align="left" width="400px" class="style16">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtbillno" ErrorMessage="Enter Valid Bill No" 
                                ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style5" width="300px" bgcolor="White">
                            &nbsp;</td>
                        <td align="right" class="style5" width="300px" bgcolor="#9999FF">
                            Short Title :</td>
                        <td align="left" class="style15" bgcolor="#6699FF" width="500px">
                            <asp:TextBox ID="txtbilltitle" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td align="left" class="style5" width="400px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtbilltitle" ErrorMessage="Enter Valid Bill Title" 
                                ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="300px" bgcolor="White">
                            &nbsp;</td>
                        <td align="right" width="300px" bgcolor="#9999FF">
                            Ministry :</td>
                        <td align="left" class="style14" bgcolor="#6699FF" width="500px">
                            <asp:DropDownList ID="ddministry" runat="server" Width="250px">
                                <asp:ListItem>FINANCE</asp:ListItem>
                                <asp:ListItem>HOME AFFAIRS</asp:ListItem>
                                <asp:ListItem>SCIENCE AND TECHNOLOGY AND EARTH SCIENCES</asp:ListItem>
                                <asp:ListItem>HEALTH AND FAMILY WELFARE</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="left" width="400px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="ddministry" ErrorMessage="Select Ministry Properly" 
                                ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="300px" bgcolor="White">
                            &nbsp;</td>
                        <td align="right" width="300px" bgcolor="#9999FF">
                            Date of&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            Introduction :</td>
                        <td align="left" class="style14" bgcolor="#6699FF" width="500px">
                            <asp:TextBox ID="txtbilldate" runat="server" Width="140px"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                Text="Select date" Width="120px" />
                        </td>
                        <td align="left" width="400px">
                            <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtbilldate" ErrorMessage="Enter valid Date For The Bill" 
                                ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="300px" bgcolor="White">
                            &nbsp;</td>
                        <td align="right" width="300px" bgcolor="#9999FF">
                            Status :</td>
                        <td align="left" class="style14" bgcolor="#6699FF" width="500px">
                            <asp:DropDownList ID="ddbillstatus" runat="server" Width="150px">
                                <asp:ListItem>ASSENTED</asp:ListItem>
                                <asp:ListItem>PENDING</asp:ListItem>
                                <asp:ListItem>PASSED</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="left" width="400px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="ddbillstatus" ErrorMessage="Select The Status Of Bill" 
                                ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="200px" bgcolor="White">
                            &nbsp;</td>
                        <td align="right" width="300px" bgcolor="White">
                            &nbsp;</td>
                        <td align="left" class="style14">
                            <br />
                            <asp:Button ID="btnbill" runat="server" Text="Add Bill" BackColor="#507CD1" />
                        </td>
                        <td align="left" width="400px">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </td>
                    </tr>
                </table>
                <asp:Label ID="Label1" runat="server" Text="Please Wait " ForeColor="#0033CC"></asp:Label>
                ...</td>
        </tr>
        <tr>
            <td align="center" class="style18">
                </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                    EnableSortingAndPagingCallbacks="True" ForeColor="#333333" GridLines="None" 
                    Width="1000px" AutoGenerateDeleteButton="True" 
                    AutoGenerateEditButton="True" DataKeyNames="SrNo">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

