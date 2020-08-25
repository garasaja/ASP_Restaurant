<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="30pt" ForeColor="#FF6666" Text="Welcom to 맛집"></asp:Label>
    &nbsp;</p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/upload/imege/home.gif" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

