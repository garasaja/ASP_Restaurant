<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="albumlist.aspx.cs" Inherits="앨범_albumlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 74%;
        }
        .auto-style9 {
            width: 600px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:SqlDataSource ID="photoShowSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:qweConnectionString %>" SelectCommand="SELECT [imgid], [imgName], [imgTitle] FROM [Album]" ></asp:SqlDataSource>
    <br />
    <asp:Button ID="addButton" runat="server" OnClick="addButton_Click" Text="사진추가" />
    <br />
    <table class="auto-style8">
        <tr>
            <td style="background-color: #666699; text-align: center; font-family: 휴먼옛체; font-size: 40px; font-style: italic; color: #660033;" class="auto-style9">앨범 사진 보기</td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="photoShowSqlDataSource" RepeatDirection="Horizontal" Width="926px">
        <ItemTemplate>
            <br />
            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# GetImageUrl(Eval("imgName")) %>' Width="100px" />
            <br />
<br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# GetNavigateUrl(Eval("imgid")) %>' Text='<%# Eval("imgTitle") %>'></asp:HyperLink>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />
</asp:Content>

