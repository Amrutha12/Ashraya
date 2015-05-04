<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" MaintainScrollPositionOnPostback="false"  AutoEventWireup="true" CodeFile="PublishCase.aspx.cs" Inherits="PublishCase" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" Text="Select Report"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlrep" runat="server" AutoPostBack="True" 
                onselectedindexchanged="ddlrep_SelectedIndexChanged" style="height: 22px">
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            </td>
        <td rowspan="3">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="221px" 
                AutoGenerateRows="False">
                <Fields>
                    <asp:BoundField DataField="rpt_id" HeaderText="Report No" />
                    <asp:BoundField DataField="subject" HeaderText="Subject" />
                    <asp:BoundField DataField="Description" HeaderText="Crime" />
                    <asp:BoundField DataField="crime_date" HeaderText="Date of Crime" />
                    <asp:BoundField DataField="crime_place" HeaderText="Place of Crime" />
                    <asp:BoundField DataField="name" HeaderText="Criminal Name" />
                    <asp:BoundField DataField="nickname" HeaderText="Nick Name" />
                    <asp:BoundField DataField="age" HeaderText="Age" />
                    <asp:BoundField DataField="sex" HeaderText="Sex" />
                </Fields>
            </asp:DetailsView>
        </td>
        <td class="style4">
            </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnsnd" runat="server" onclick="btnsnd_Click" 
                Text="Publish Report" />
        </td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Report Published" 
                Visible="False"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

