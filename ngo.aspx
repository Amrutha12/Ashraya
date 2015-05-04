<%@ Page Language="C#" MasterPageFile="~/CommonMaster.master" AutoEventWireup="true" CodeFile="ngo.aspx.cs" Inherits="ngo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label1" runat="server" Text="NGO REGISTRATION" 
            style="font-weight: 700; font-size: xx-large; color: #CC66FF"></asp:Label>
        <br />
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Name" style="font-size: large"></asp:Label>
&nbsp;&nbsp;
            </td>
            <td>
                <asp:TextBox ID="name" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="name" ErrorMessage="characters only" 
                    ValidationExpression="^[a-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Place" style="font-size: large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="place" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" style="font-size: large" 
                    Text="Nearest Policestation"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="police" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="police">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Mobile number" 
                    style="font-size: large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="mob" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="mob" ErrorMessage="invalid" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Email-id" style="font-size: large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="email" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="email" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="email" ErrorMessage="eg: abc@gmail.com" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Label ID="Label9" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="uname" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="pwd" runat="server" BorderColor="Black" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BorderColor="Black" 
                    style="font-size: large" Text="Submit" onclick="Button1_Click" />
                </td>
        </tr>
    </table></asp:Content>