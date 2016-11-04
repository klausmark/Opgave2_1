<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="MasterPage.master" Title="Main site" %>

<asp:Content runat="server" ID="Default" ContentPlaceHolderID="MainContent">
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
                <asp:Label runat="server" ID="Label1" Text="Label1" ViewStateMode="Inherit" EnableViewState="False"></asp:Label>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Button runat="server" Text="Set Date" ID="SetDate" OnClick="SetDate_OnClick"/>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
                <asp:Calendar runat="server" ID="Calendar1"></asp:Calendar>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <asp:Button runat="server" Text="Plain postback" ID="PlainPostback"/>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
                <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell runat="server">
                    
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
