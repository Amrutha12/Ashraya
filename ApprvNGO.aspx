<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ApprvNGO.aspx.cs" Inherits="ApprvNGO" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="No NGO for Approval" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    onrowcommand="GridView1_RowCommand" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="ngo_id" HeaderText="NO" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="place" HeaderText="Place" />
                        <asp:BoundField DataField="email" HeaderText="e mail" />
                    </Columns>
                    <Columns>
                    <asp:TemplateField>
                    <ItemTemplate>
                    <asp:LinkButton ID="lnk1" CommandArgument='<%#Eval("ngo_id")%>' runat="server" Text="View More"></asp:LinkButton>
                    </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="style4">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
                    AutoGenerateRows="False">
                    <Fields>
                        <asp:BoundField DataField="ngo_id" HeaderText="Ngo_ID" />
                        <asp:BoundField DataField="policestation" HeaderText="Nearest PoliceStation" />
                        <asp:BoundField DataField="uname" HeaderText="UserName" />
                    </Fields>
                </asp:DetailsView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:RadioButton ID="rba" runat="server" GroupName="r" Text="Accept" 
                    AutoPostBack="True" oncheckedchanged="rba_CheckedChanged" />
            </td>
            <td>
                <asp:RadioButton ID="rbrej" runat="server" GroupName="r" Text="Reject" 
                    AutoPostBack="True" oncheckedchanged="rbrej_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

