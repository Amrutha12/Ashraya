<%@ Page Title="" Language="C#" MasterPageFile="~/CommonMaster.master" MaintainScrollPositionOnPostback="false" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
        <span 
            class="style2"> 
        REGISTRATION FORM</span></td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Name" style="font-size: large"></asp:Label>
            </td>
            <td colspan="2">
                &nbsp;<br />
                <asp:TextBox ID="name" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="name" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Sex" style="font-size: large"></asp:Label>
            </td>
            <td>
                &nbsp;&nbsp;<asp:RadioButton ID="male" runat="server" GroupName="a" 
                    Text="Male" BorderColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
            <td>
                <asp:RadioButton ID="female" runat="server" GroupName="a" Text="Female" 
                    BorderColor="Black" oncheckedchanged="female_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Date of birth" 
                    style="font-size: large"></asp:Label>
            </td>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;Month
                <asp:DropDownList ID="month" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">jan</asp:ListItem>
                    <asp:ListItem Value="2">feb</asp:ListItem>
                    <asp:ListItem Value="3">mar</asp:ListItem>
                    <asp:ListItem Value="4">apr</asp:ListItem>
                    <asp:ListItem Value="5">may</asp:ListItem>
                    <asp:ListItem Value="6">jun</asp:ListItem>
                    <asp:ListItem Value="7">jul</asp:ListItem>
                    <asp:ListItem Value="8">aug</asp:ListItem>
                    <asp:ListItem Value="9">sep</asp:ListItem>
                    <asp:ListItem Value="10">oct</asp:ListItem>
                    <asp:ListItem Value="11">nov</asp:ListItem>
                    <asp:ListItem Value="12">dec</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp; Date
                <asp:DropDownList ID="date" runat="server" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp; Year
                <asp:DropDownList ID="year" runat="server" 
                    onselectedindexchanged="year_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label11" runat="server" Text="Age"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="age" runat="server" BorderColor="Black" 
                    ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="Address" style="font-size: large"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="address" runat="server" TextMode="MultiLine" 
                    BorderColor="Black"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Mobile number" 
                    style="font-size: large"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="mob" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="mob" ErrorMessage="*"></asp:RequiredFieldValidator>
                &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="mob" ErrorMessage="incorrect" 
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="E-mail" style="font-size: large"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="email" runat="server" BorderColor="Black" AutoPostBack="True" 
                    ontextchanged="email_TextChanged"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="email" ErrorMessage="eg:-abc@gmail.com" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Username" style="font-size: large"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="uname" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="uname" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Password" style="font-size: large"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="pwd" runat="server" TextMode="Password" BorderColor="Black"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Confirm password" 
                    style="font-size: large"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="cpwd" runat="server" TextMode="Password" BorderColor="Black"></asp:TextBox>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="pwd" ControlToValidate="cpwd" 
                    ErrorMessage="re-enter password"></asp:CompareValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" 
            onclick="Button1_Click" Text="Submit" BorderColor="Black" 
            style="font-size: large" />
            </td>
        </tr>
    </table>
    </asp:Content>

