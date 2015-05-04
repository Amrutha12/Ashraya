<%@ Page Language="C#" MasterPageFile="~/AgencyMaster.master" AutoEventWireup="true" CodeFile="agencyview.aspx.cs" Inherits="agencyview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="style1">
            <tr>
                <td class="style7">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<asp:Label ID="Label1" runat="server" 
                        style="font-size: x-large; color: #009933" Text="REPORTS"></asp:Label>
                    </td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <br />
                    <asp:DropDownList ID="rep" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="118px">
                    </asp:DropDownList>
                </td>
                <td class="style4" rowspan="4">
                    <br />
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" CellSpacing="2" Height="50px" style="margin-left: 17px" 
                        Width="248px">
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="subject" HeaderText="Subject" ReadOnly="True" />
                            <asp:BoundField DataField="description" HeaderText="Description" 
                                ReadOnly="True" SortExpression="description" />
                            <asp:BoundField DataField="crime_place" HeaderText="Crime place" 
                                ReadOnly="True" SortExpression="crime_place" />
                            <asp:BoundField DataField="crime_date" HeaderText="Crime date" ReadOnly="True" 
                                SortExpression="crime_date" />
                            <asp:BoundField DataField="crime_time" HeaderText="Crime time" 
                                SortExpression="crime_time" />
                            <asp:BoundField DataField="rpt_date" HeaderText="Reporting date" 
                                ReadOnly="True" SortExpression="rpt_date" />
                            <asp:BoundField DataField="category" HeaderText="Category" ReadOnly="True" 
                                SortExpression="category" />
                        </Fields>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    </asp:DetailsView>
                </td>
                <td class="style5">
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Send Request to NGO</asp:LinkButton>
                </td>
                <td class="style3" rowspan="3">
                    <asp:Panel ID="Panel1" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Select NGO"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td rowspan="3">
                                    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px">
                                    </asp:DetailsView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="btnSnd" runat="server" onclick="btnSnd_Click" Text="Send" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;
                    <asp:TextBox ID="status" runat="server" TextMode="MultiLine" Visible="False"></asp:TextBox>
                </td>
                <td class="style4">
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="font-size: x-large" Text="Save" Visible="False" />
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            </table>
    </asp:Content>

