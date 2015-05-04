<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="false" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="complaint.aspx.cs" Inherits="complaint" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style18" style="width: 136px">
                &nbsp;</td>
            <td class="style25" style="width: 421px">
                <asp:Label ID="Label10" runat="server" 
                    style="font-size: x-large; font-weight: 700" Text="Complaint Registration" 
                    CssClass="style5"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18" style="width: 136px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Category" style="font-size: large"></asp:Label>
            </td>
            <td class="style25" style="width: 421px">
                <asp:RadioButton ID="victim" runat="server" GroupName="b" Text="Victim" />
                <asp:RadioButton ID="eyewit" runat="server" GroupName="b" 
                    Text="Eye-witness" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" style="width: 136px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Subject" style="font-size: large"></asp:Label>
            </td>
            <td class="style26" style="width: 421px">
                <asp:TextBox ID="subject" runat="server" Width="185px" BorderColor="Black"></asp:TextBox>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" style="width: 136px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Description" 
                    style="font-size: large"></asp:Label>
            </td>
            <td class="style24" style="width: 421px">
                <asp:TextBox ID="description" runat="server" TextMode="MultiLine" 
                    BorderColor="Black"></asp:TextBox>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20" style="width: 136px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Crime place" 
                    style="font-size: large"></asp:Label>
            </td>
            <td class="style27" style="width: 421px">
                <asp:TextBox ID="cplace" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" style="width: 136px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Crime date" 
                    style="font-size: large"></asp:Label>
            </td>
            <td class="style24" style="width: 421px">
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
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21" style="width: 136px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Crime time" 
                    style="font-size: large"></asp:Label>
            </td>
            <td class="style28" style="width: 421px">
&nbsp;
                <asp:TextBox ID="crtime" runat="server" Width="74px" BorderColor="Black"></asp:TextBox>
&nbsp;
                <asp:DropDownList ID="ctime" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="1">AM</asp:ListItem>
                    <asp:ListItem Value="2">PM</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21" style="width: 136px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Reporting date" 
                    style="font-size: large"></asp:Label>
            </td>
            <td class="style28" style="width: 421px">
                <asp:TextBox ID="reptime" runat="server" Width="74px" BorderColor="Black" Enabled="False"></asp:TextBox>
                <asp:Label ID="lbldt" runat="server"></asp:Label>
&nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22" style="width: 136px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style29" style="width: 421px">
&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22" style="width: 136px">
                &nbsp;</td>
            <td class="style29" style="width: 421px">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    BorderColor="Black" style="font-size: large" />
            </td>
            <td class="style16">
                <asp:Label ID="lblmsg" runat="server" 
                    Text="Your case Registered and Your Case no is" Visible="False"></asp:Label>
            </td>
        </tr>
       
    </table>
</asp:Content>

