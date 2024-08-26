<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 449px;
        }
        .style16
        {
            width: 141px;
            height: 35px;
        }
        .style17
        {
            width: 449px;
            height: 35px;
        }
        .style18
        {
            height: 35px;
        }
        .style19
        {
            width: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" 
        
    
        style="font-size: 25pt; font-weight: lighter; font-style: inherit; color: #5678BB">
        <br />
        Register yourself
        <br />
        &nbsp;<table class="style1" align="center">
            <tr>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="White" width="300px">
                    &nbsp;</td>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#9999FF" width="200px">
                    &nbsp;&nbsp;
                    Full Name :
                </td>
                <td align="left" class="style15" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#6699FF" width="430px">
                    <asp:TextBox ID="txtfname" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td align="left" height="35px" style="color: #000000; font-size: 15pt;" 
                    width="250px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtfname" ErrorMessage="Enter Full Name" ForeColor="Red" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="White" width="300px">
                    &nbsp;</td>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#9999FF" width="200px">
                    &nbsp;&nbsp;
                    Gender :</td>
                <td align="left" class="style15" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#6699FF" width="430px">
                    <asp:RadioButton ID="rbmale" runat="server" GroupName="gender" 
                        Text="Male" />
&nbsp;
                    <asp:RadioButton ID="rbfemale" runat="server" GroupName="gender" 
                        Text="Female" />
                </td>
                <td align="left" height="35px" style="color: #000000; font-size: 15pt;" 
                    width="250px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="White" width="300px">
                    &nbsp;</td>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#9999FF" width="200px">
                    &nbsp;&nbsp;
                    Birthdate :</td>
                <td align="left" class="style15" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#6699FF" width="430px">
                    <asp:TextBox ID="txtbdate" runat="server" Width="140px"></asp:TextBox>
                    &nbsp;<asp:Button ID="Button1" runat="server" CausesValidation="False" 
                        Text="Show Calender" Width="120px" />
                </td>
                <td align="left" height="35px" style="color: #000000; font-size: 15pt;" 
                    width="250px">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                        BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                        ShowGridLines="True" Visible="False" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                            ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="White" width="300px">
                    &nbsp;</td>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#9999FF" width="200px">
                    &nbsp;&nbsp;
                    Telephone No :</td>
                <td align="left" class="style15" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#6699FF" width="430px">
                    <asp:TextBox ID="txtmobile" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td align="left" height="35px" style="color: #000000; font-size: 15pt;" 
                    width="250px">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ControlToValidate="txtmobile" ErrorMessage="Enter Telephone Number Of 8 Digit" 
                        ForeColor="Red" SetFocusOnError="True">*</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style16" style="color: #000000; font-size: 15pt;" 
                    bgcolor="White" width="300px">
                    &nbsp;</td>
                <td align="left" class="style16" style="color: #000000; font-size: 15pt;" 
                    bgcolor="#9999FF" width="200px">
                    &nbsp;&nbsp;
                    Email Address :</td>
                <td align="left" class="style17" style="color: #000000; font-size: 15pt;" 
                    bgcolor="#6699FF" width="430px">
                    <asp:TextBox ID="txtemail" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td align="left" class="style18" style="color: #000000; font-size: 15pt;" 
                    width="250px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Enter Valid Email" ForeColor="Red" 
                        SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="White" width="300px">
                    &nbsp;</td>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#9999FF" width="200px">
                    &nbsp;&nbsp;
                    Party :</td>
                <td align="left" class="style15" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#6699FF" width="430px">
                    <asp:DropDownList ID="ddparty" runat="server" Width="100px">
                        <asp:ListItem>BJP</asp:ListItem>
                        <asp:ListItem>INC</asp:ListItem>
                        <asp:ListItem>AAP</asp:ListItem>
                        <asp:ListItem>BJD</asp:ListItem>
                        <asp:ListItem>RJD</asp:ListItem>
                        <asp:ListItem>JDU</asp:ListItem>
                        <asp:ListItem>BSP</asp:ListItem>
                        <asp:ListItem>DMK</asp:ListItem>
                        <asp:ListItem>ABVP</asp:ListItem>
                        <asp:ListItem>SP</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td align="left" height="35px" style="color: #000000; font-size: 15pt;" 
                    width="250px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="ddparty" ErrorMessage="Select Your Party" ForeColor="Red" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="White" width="300px">
                    &nbsp;</td>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#9999FF" width="200px">
                    &nbsp;&nbsp;
                    Constituency :</td>
                <td align="left" class="style15" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#6699FF" width="430px">
                    <asp:TextBox ID="txtconsti" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td align="left" height="35px" style="color: #000000; font-size: 15pt;" 
                    width="250px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtconsti" ErrorMessage="Enter Constituency" ForeColor="Red" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="White" width="300px">
                    &nbsp;</td>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#9999FF" width="200px">
                    &nbsp;&nbsp;
                    State :</td>
                <td align="left" class="style15" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#6699FF" width="430px">
                    <asp:TextBox ID="txtstate" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td align="left" height="35px" style="color: #000000; font-size: 15pt;" 
                    width="250px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtstate" ErrorMessage="Enter State Of Constituency" 
                        ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="White" width="300px">
                    &nbsp;</td>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#9999FF" width="200px">
                    &nbsp;&nbsp;
                    Username :</td>
                <td align="left" class="style15" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#6699FF" width="300px">
                    <asp:TextBox ID="txtuname" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td align="left" height="35px" style="color: #000000; font-size: 15pt;" 
                    width="250px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtuname" ErrorMessage="Enter UserName" ForeColor="Red" 
                        SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="White" width="300px">
                    &nbsp;</td>
                <td align="left" class="style19" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#9999FF" width="200px">
                    &nbsp;&nbsp;
                    Password :</td>
                <td align="left" class="style15" height="35px" 
                    style="color: #000000; font-size: 15pt;" bgcolor="#6699FF" width="430px">
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                </td>
                <td align="left" height="35px" style="color: #000000; font-size: 15pt;" 
                    width="250px">
                    <asp:CustomValidator ID="CustomValidator2" runat="server" 
                        ControlToValidate="txtmobile" ErrorMessage="Password Must Contain 8 Characters" 
                        ForeColor="Red" SetFocusOnError="True">*</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style19" height="35px" style="color: #000000">
                    &nbsp;</td>
                <td align="left" class="style19" height="35px" style="color: #000000">
                    &nbsp;</td>
                <td align="left" class="style15" height="35px" style="color: #000000">
                    <asp:Button ID="btnregister" runat="server" Text="Register" BackColor="#FF3300" 
                        BorderStyle="Outset" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="txtreset" runat="server" CausesValidation="False" 
                        Text="Reset " BackColor="#FF9933" BorderStyle="Outset" />
                </td>
                <td align="left" height="35px" style="color: #000000" width="250px">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="left" class="style19" height="35px" style="color: #000000">
                    &nbsp;</td>
                <td align="left" class="style19" height="35px" style="color: #000000">
                    &nbsp;</td>
                <td align="left" class="style15" height="35px" style="color: #000000">
                    &nbsp;</td>
                <td align="left" height="35px" style="color: #000000" width="250px">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <p>
        &nbsp;</p>
</asp:Content>

