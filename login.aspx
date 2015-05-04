<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback="false" MasterPageFile="~/CommonMaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <table class="style10">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                <span class="style2"><strong><asp:Label ID="Label4" runat="server" 
                    style="font-family: 'Arial Rounded MT Bold'; font-style: italic" 
                    Text="Ashray Login"></asp:Label>
                </strong></span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Label ID="Label2" runat="server" style="font-size: large" Text="Username"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="uname" runat="server" BorderColor="Black" 
                    ontextchanged="uname_TextChanged"></asp:TextBox>
                </td>
            <td>
                <span class="style3">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/userepo.aspx" 
                    style="text-decoration: underline; font-size: x-large; color: #33CC33" 
                    Visible="False">Report Case</asp:HyperLink>
                </span>
                </td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Label ID="Label3" runat="server" style="font-size: large" Text="Password"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="pwd" runat="server" TextMode="Password" BorderColor="Black"></asp:TextBox>
                </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3366FF" 
                    NavigateUrl="~/registration.aspx" 
                    style="font-size: x-large; font-style: italic; text-decoration: underline">New User?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                <asp:Button ID="Button1" runat="server" style="font-size: large" Text="Login" 
                    BorderColor="Black" onclick="Button1_Click" />
                <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#3366FF" 
                    NavigateUrl="~/ngo.aspx" 
                    style="font-size: x-large; font-style: italic; text-decoration: underline">New NGO</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    

</asp:Content>

