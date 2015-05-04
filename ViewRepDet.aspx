<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewRepDet.aspx.cs" Inherits="ViewRepDet" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" 
                    style="font-size: x-large; font-style: italic; color: #00CC00" Text="DETAILS"></asp:Label>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Select Agency"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="agency" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="style2">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" Height="50px" Width="184px" 
                    onpageindexchanging="DetailsView1_PageIndexChanging">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="rpt_id" HeaderText="Report id" ReadOnly="True" />
                <asp:BoundField DataField="reg_id" HeaderText="Register id" ReadOnly="True" 
                    SortExpression="reg_id" />
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
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td>
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2" Height="50px" 
                    onpageindexchanging="DetailsView2_PageIndexChanging" Width="161px">
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="m_id" HeaderText="Agency id" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="place" HeaderText="Place" SortExpression="place" />
                    </Fields>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-size: x-large" Text="Save" Height="27px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

