<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BdList.aspx.cs" Inherits="게시판_BdList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:SqlDataSource ID="bdlistSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:qweConnectionString %>" SelectCommand="SELECT [id], [subject], [content], [uptime], [name], [hitNumber] FROM [Board]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/upload/imege/icon/글쓰기.png" OnClick="ImageButton2_Click" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="bdlistSqlDataSource" GridLines="Vertical" Width="632px" DataKeyNames="id" Height="246px" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="Gainsboro" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:TemplateField HeaderText="제목" SortExpression="subject">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("subject") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# GetShowUrl(Eval("id")) %>' Text='<%# Eval("subject") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="content" HeaderText="내용" SortExpression="content" />
                <asp:BoundField DataField="uptime" HeaderText="올린 날짜" SortExpression="uptime" />
                <asp:BoundField DataField="name" HeaderText="이름" SortExpression="name" />
                <asp:BoundField DataField="hitNumber" HeaderText="조회수" SortExpression="hitNumber" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </p>
</asp:Content>

