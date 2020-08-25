<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="방명록.aspx.cs" Inherits="방명록" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="4" ForeColor="#333333" Font-Bold="False" Font-Italic="True" Font-Names="휴먼매직체" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" ForeColor="#333333" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <HeaderTemplate>
            방 명 록<br />
        </HeaderTemplate>
        <ItemTemplate>
            이름:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            &nbsp;등록시간:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            제목:
            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
            <br />
            내용:
            <asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>
    </asp:DataList>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/XMLFile.xml"></asp:XmlDataSource>
</p>
<p>
    이름:
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;이메일:
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p>
    제목:
    <asp:TextBox ID="TextBox3" runat="server" Width="350px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    내용:</p>
<p>
    <asp:TextBox ID="TextBox4" runat="server" Height="82px" TextMode="MultiLine" Width="394px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="Button2" runat="server" Text="등 록" Width="76px" OnClick="Button2_Click" BackColor="#996633" BorderColor="#FFFF66" BorderStyle="Double" Font-Bold="True" ForeColor="Blue" Height="34px" />
</p>
</asp:Content>

