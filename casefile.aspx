<%@ Page Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="casefile.aspx.cs" Inherits="casefile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table class="style1">
        <tr>
            <td class="style2" style="width: 303px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span 
                    class="style5">&nbsp;&nbsp;&nbsp; &nbsp;</span><asp:Label ID="Label10" runat="server" 
                    style="font-size: x-large; font-weight: 700" Text="CASE FILE" 
                    CssClass="style5"></asp:Label>
                <br />
            </td>
            <td class="style6" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 303px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Category" style="font-size: large"></asp:Label>
            </td>
            <td class="style4">
                <asp:RadioButton ID="victim" runat="server" GroupName="b" Text="Victim" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
            </td>
            <td class="style4">
                <asp:RadioButton ID="eyewit" runat="server" GroupName="b" 
                    Text="Eye-witness" />
            </td>
        </tr>
        <tr>
            <td class="style9" style="width: 303px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Subject" style="font-size: large"></asp:Label>
            </td>
            <td class="style10" colspan="2">
                <asp:TextBox ID="subject" runat="server" Width="185px" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="subject" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" style="width: 303px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Description" 
                    style="font-size: large"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="description" runat="server" TextMode="MultiLine" 
                    BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="description" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11" style="width: 303px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Crime place" 
                    style="font-size: large"></asp:Label>
            </td>
            <td class="style12" colspan="2">
                <asp:TextBox ID="cplace" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" style="width: 303px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Crime date" 
                    style="font-size: large"></asp:Label>
            </td>
            <td class="style6" colspan="2">
&nbsp;Month
                <asp:DropDownList ID="month" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True">
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
                <asp:DropDownList ID="date" runat="server" AutoPostBack="True">
                </asp:DropDownList>
&nbsp;&nbsp; Year
                <asp:DropDownList ID="year" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style13" style="width: 303px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Crime time" 
                    style="font-size: large"></asp:Label>
            </td>
            <td class="style14" colspan="2">
&nbsp;
                <asp:TextBox ID="crtime" runat="server" Width="74px" BorderColor="Black"></asp:TextBox>
&nbsp;
                <asp:DropDownList ID="ctime" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="1">AM</asp:ListItem>
                    <asp:ListItem Value="2">PM</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style13" style="width: 303px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Reporting date&amp;time" 
                    style="font-size: large"></asp:Label>
            </td>
            <td class="style14" colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15" style="width: 303px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style16" colspan="2">
&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style7" style="width: 303px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    BorderColor="Black" style="font-size: large" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style8" colspan="2">
                <br />
                <br />
            </td>
        </tr>
    </table>
    
 </asp:Content> 