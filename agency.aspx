<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="agency.aspx.cs" Inherits="agency" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            style="font-weight: 700; font-size: xx-large; color: #FF3300" 
            Text="AGENCY REGISTRATION"></asp:Label>
    
    &nbsp;<br />
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style7">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Name" style="font-size: large"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="name" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="name" ErrorMessage="characters only" 
                    ValidationExpression="^[a-z]*$"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Place" style="font-size: large"></asp:Label>
            </td>
            <td class="style10">
                <asp:TextBox ID="place" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" 
                    Text="Address" style="font-size: large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="address" runat="server" BorderColor="Black" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Mobile Number" 
                    style="font-size: large"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="mob" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="mob" ErrorMessage="invalid" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Email-id" style="font-size: large"></asp:Label>
                <br />
            </td>
            <td class="style14">
                <asp:TextBox ID="email" runat="server" BorderColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="email" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="email" ErrorMessage="eg:abc@gmail.com" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" style="font-size: large" 
                    Text="Username"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>
                <asp:TextBox ID="uname" runat="server" BorderColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" style="font-size: large" Text="Password"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="pwd" runat="server" BorderColor="Black" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BorderColor="Black" 
                    style="font-size: large" Text="Submit" onclick="Button1_Click" />
                </td>
            <td class="style6">
                </td>
        </tr>
    </table></asp:Content>