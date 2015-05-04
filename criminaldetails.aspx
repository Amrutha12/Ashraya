<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/NGOMaster.master" CodeFile="criminaldetails.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            style="font-size: x-large; font-weight: 700; color: #003399" 
            Text="CRIMINAL DETAILS"></asp:Label>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="name" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="name" ErrorMessage="characters only" 
                    ValidationExpression="^[a-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label7" runat="server" Text="Nick name"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="nickname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="nickname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Sex"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="male" runat="server" GroupName="a" 
                    oncheckedchanged="RadioButton1_CheckedChanged" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                <asp:RadioButton ID="female" runat="server" GroupName="a" 
                    oncheckedchanged="RadioButton1_CheckedChanged" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="age" runat="server" Height="19px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Location"></asp:Label>
            </td>
            <td class="style2" colspan="2">
                <asp:TextBox ID="location" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label6" runat="server" Text="Criminal Type"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="criminaltype" runat="server" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="criminaltype" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label runat="server" Text="Image"></asp:Label>
            </td>
            <td class="style6" colspan="2">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td colspan="2">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
        Width="52px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    
    </asp:Content>

