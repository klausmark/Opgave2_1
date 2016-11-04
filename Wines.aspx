<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Wines.aspx.cs" Inherits="Wines" MasterPageFile="MasterPage.master" Title="Wines" %>
<asp:Content runat="server" ID="Wines" ContentPlaceHolderID="MainContent">
    <h1>Wines</h1>
    <p>Wines: en GridView Control (fra Data-delen af Visual Studios Toolbox). I denne control skal vises oplysninger om vinene, dvs. fra Wine-tabellen felterne WineName, WineDescription, Country, District, Year, Price
    </p>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</asp:Content>
