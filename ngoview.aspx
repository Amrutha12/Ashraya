<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/NGOMaster.master" CodeFile="ngoview.aspx.cs" Inherits="ngoview" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">
    
        <table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="font-size: x-large" Text="REPORTS"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Select Criminal"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="rep" runat="server" 
                        onselectedindexchanged="rep_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="style3">
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
                <td class="style3">
                    <asp:DropDownList ID="criminal" runat="server" 
                        onselectedindexchanged="criminal_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="style3">
                    <asp:DetailsView ID="DetailsView2" runat="server" BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        CellSpacing="2" Height="89px" 
                        onpageindexchanging="DetailsView2_PageIndexChanging" Width="231px" 
                        AutoGenerateRows="False">
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="name" HeaderText="Name" />
                            <asp:BoundField DataField="sex" HeaderText="Sex" />
                            <asp:BoundField DataField="age" HeaderText="Age" />
                            <asp:BoundField DataField="location" HeaderText="Location" />
                            <asp:BoundField DataField="crimanaltype" HeaderText="Criminal tye" />
                            <asp:ImageField HeaderText="Photo">
                            </asp:ImageField>
                        </Fields>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="font-size: large" Text="Save" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;
                    </td>
                <td class="style3">
                    </td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </asp:Content>