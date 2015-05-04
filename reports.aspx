<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMaster.master" CodeFile="reports.aspx.cs" Inherits="reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
        <asp:Label ID="Label1" runat="server" 
            style="font-weight: 700; font-size: xx-large; font-style: italic; color: #FF0000" 
            Text="VIEW CASES"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Height="188px" Width="713px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="subject" HeaderText="Subject" />
            <asp:BoundField DataField="crime_place" HeaderText="Crime place" 
                SortExpression="crime_place" />
            <asp:BoundField DataField="crime_date" HeaderText="Crime date" 
                SortExpression="crime_date" />
            <asp:HyperLinkField DataNavigateUrlFields="rpt_id" 
                DataNavigateUrlFormatString="ViewRepDet.aspx?id={0}" DataTextField="rpt_id" 
                DataTextFormatString="More Details" Text="More details..." />
        </Columns>
    </asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    
    </div>
    </asp:Content>