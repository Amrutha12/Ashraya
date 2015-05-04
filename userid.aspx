<%@ Page Language="C#" MasterPageFile="~/user.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="userid.aspx.cs" Inherits="userstatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="5">
    
        <asp:Label ID="Label1" runat="server" style="font-size: x-large" 
            Text="view your case status"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label2" runat="server" style="font-size: large; color: #00CC00" 
            Text="Select Your Case No"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="repid" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="repid_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
        <asp:Button ID="Button1" runat="server" style="font-size: large" 
            Text="Click Here to Check Status" onclick="Button1_Click" Font-Size="Small" />
    
                </td>
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300" 
                        Text="Report Not Yet Published" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td rowspan="3">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" Height="50px" Width="184px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="rpt_id" HeaderText="Report id" ReadOnly="True" />
                <asp:BoundField DataField="category" HeaderText="Category" ReadOnly="True" 
                    SortExpression="category" />
                <asp:BoundField DataField="subject" HeaderText="Subject" />
                <asp:BoundField DataField="description" HeaderText="Description" 
                    ReadOnly="True" SortExpression="description" />
                <asp:BoundField DataField="crime_place" HeaderText="Crime place" 
                    ReadOnly="True" SortExpression="crime_place" />
                <asp:BoundField DataField="crime_date" HeaderText="Crime date" ReadOnly="True" 
                    SortExpression="crime_date" />
                <asp:BoundField DataField="crime_time" HeaderText="Crime time" ReadOnly="True" 
                    SortExpression="crime_time" />
                <asp:BoundField DataField="rpt_date" HeaderText="Report date" ReadOnly="True" 
                    SortExpression="rpt_date" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
    
                </td>
                <td>
                    &nbsp;</td>
                <td rowspan="3">
                    &nbsp;</td>
                <td rowspan="3">
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" CellSpacing="2" Height="50px" Width="125px">
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="cr_id" HeaderText="Criminal No." />
                            <asp:BoundField DataField="name" HeaderText="Name" />
                            <asp:BoundField DataField="nickname" HeaderText="Nick Name" />
                            <asp:BoundField DataField="sex" HeaderText="Sex" />
                            <asp:BoundField DataField="age" HeaderText="Age" />
                            <asp:BoundField DataField="crimanaltype" HeaderText="Criminal Type" />
                            <asp:BoundField DataField="location" HeaderText="place" />
                        </Fields>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    </asp:DetailsView>
                </td>
                <td rowspan="2">
                    <asp:Image ID="Image1" runat="server" Height="100px" style="margin-left: 0px" 
                        Width="100px" />
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
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>