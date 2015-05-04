<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/user.master" CodeFile="repoid.aspx.cs" Inherits="repoid" %>
<asp:Content id="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" style="font-size: large; color: #FF3399" 
            Text="Your complaint accepted"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" 
            Text="Note your report id for further use"></asp:Label>
&nbsp; <span class="style1">&nbsp;</span>&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Your report id  is    : "></asp:Label>
&nbsp;
        <asp:TextBox ID="id" runat="server" BorderColor="Black" 
            ontextchanged="id_TextChanged" ReadOnly="True"></asp:TextBox>
    
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BorderColor="Black" 
            onclick="Button1_Click" Text="OK" Width="54px" />
        <br />
        <br />
    
    </div></asp:Content>