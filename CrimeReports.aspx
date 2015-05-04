<%@ Page Title="" Language="C#" MasterPageFile="~/CommonMaster.master" AutoEventWireup="true" CodeFile="CrimeReports.aspx.cs" Inherits="CrimeReports" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
    AutoDataBind="true" />
</asp:Content>

