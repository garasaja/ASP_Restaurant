<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="비밀번호찾기.aspx.cs" Inherits="비밀번호찾기" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 71%;
        }
        .auto-style9 {
            width: 159px;
        }
        .auto-style10 {
            width: 198px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style9">
                <asp:Image ID="Image2" runat="server" Height="59px" ImageUrl="~/upload/imege/우는거.gif" Width="72px" />
            </td>
            <td colspan="2" style="font-family: 휴먼매직체; font-size: 20px; font-style: italic; color: #FF0000;">비밀번호 찾기</td>
        </tr>
        <tr>
            <td class="auto-style9" style="font-family: 휴먼매직체">아이디</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td rowspan="3">
                <asp:Button ID="Button2" runat="server" BackColor="#FF33CC" Font-Bold="True" Font-Size="20pt" Height="41px" OnClick="Button2_Click" Text="찾기" Width="111px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="font-family: 휴먼매직체">이름</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="font-family: 휴먼매직체">이메일</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

