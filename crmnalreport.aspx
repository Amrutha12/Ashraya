<%@ Page Title="" Language="C#" MasterPageFile="~/CommonMaster.master" AutoEventWireup="true" CodeFile="crmnalreport.aspx.cs" Inherits="crmnalreport" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
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
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="rpt_id" HeaderText="Report No" />
                    <asp:BoundField DataField="description" HeaderText="Case" />
                    <asp:BoundField DataField="crime_place" HeaderText="Place of Crime" />
                    <asp:BoundField DataField="crime_date" HeaderText="Date of Crime" />
                    <asp:BoundField DataField="name" HeaderText="Criminal " />
                    <asp:BoundField DataField="nickname" HeaderText="Nick Name" />
                    <asp:BoundField DataField="age" HeaderText="Age" />
<asp:TemplateField><ItemTemplate>
                <asp:Image ID="img1" Height="75px" Width="75px" 
                        ImageUrl='<%#Getimg(DataBinder.Eval(Container.DataItem,"cr_id"))%>' 
                        runat="server" />
                
</ItemTemplate>
</asp:TemplateField>
                </Columns>
                <Columns>
                <asp:TemplateField>
                <ItemTemplate>
                <asp:Image ID="img1" Height="75px" Width="75px" ImageUrl='<%#Getimg(DataBinder.Eval(Container.DataItem,"cr_id"))%>' runat="server" />
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </td>
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
    </tr>
</table>
</asp:Content>

