<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Wines.aspx.cs" Inherits="Wines" MasterPageFile="MasterPage.master" Title="Wines" %>
<asp:Content runat="server" ID="Wines" ContentPlaceHolderID="MainContent">
    <h1>Wines</h1>
    <p>Wines: en GridView Control (fra Data-delen af Visual Studios Toolbox). I denne control skal vises oplysninger om vinene, dvs. fra Wine-tabellen felterne WineName, WineDescription, Country, District, Year, Price
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="WineNo" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="WineName" HeaderText="WineName" SortExpression="WineName" />
            <asp:BoundField DataField="WineDescription" HeaderText="WineDescription" SortExpression="WineDescription" />
            <asp:BoundField DataField="Supplier" HeaderText="Supplier" SortExpression="Supplier" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:ImageField DataImageUrlField="Picture" DataImageUrlFormatString="~\Images\{0}" HeaderText="Picture" >
                <ControlStyle CssClass="thumbnail"></ControlStyle>
            </asp:ImageField>
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WalthersWinesConnectionString1 %>" DeleteCommand="DELETE FROM [WINE] WHERE [WineNo] = @WineNo" InsertCommand="INSERT INTO [WINE] ([WineName], [WineDescription], [Supplier], [Country], [District], [Year], [price], [Picture]) VALUES (@WineName, @WineDescription, @Supplier, @Country, @District, @Year, @price, @Picture)" ProviderName="<%$ ConnectionStrings:WalthersWinesConnectionString1.ProviderName %>" SelectCommand="SELECT [WineNo], [WineName], [WineDescription], [Supplier], [Country], [District], [Year], [price], [Picture] FROM [WINE]" UpdateCommand="UPDATE [WINE] SET [WineName] = @WineName, [WineDescription] = @WineDescription, [Supplier] = @Supplier, [Country] = @Country, [District] = @District, [Year] = @Year, [price] = @price, [Picture] = @Picture WHERE [WineNo] = @WineNo">
            <DeleteParameters>
                <asp:Parameter Name="WineNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="WineName" Type="String" />
                <asp:Parameter Name="WineDescription" Type="String" />
                <asp:Parameter Name="Supplier" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="District" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="price" Type="Double" />
                <asp:Parameter Name="Picture" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="WineName" Type="String" />
                <asp:Parameter Name="WineDescription" Type="String" />
                <asp:Parameter Name="Supplier" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="District" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="price" Type="Double" />
                <asp:Parameter Name="Picture" Type="String" />
                <asp:Parameter Name="WineNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
</asp:Content>
