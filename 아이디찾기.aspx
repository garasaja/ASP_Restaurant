<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="아이디찾기.aspx.cs" Inherits="아이디찾기" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 71%;
        }
        .auto-style9 {
            width: 132px;
        }
        .auto-style10 {
        }
        .auto-style11 {
            width: 219px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <table class="auto-style8">
        <tr>
            <td class="auto-style9">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/upload/imege/우는거.gif" Width="49px" />
            </td>
            <td class="auto-style10" colspan="2" style="font-family: 휴먼매직체; font-style: italic; font-size: 20px; color: #FF0000">아이디찾기<br />
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="font-family: 휴먼매직체">이름</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td rowspan="2">
                <asp:Button ID="Button2" runat="server" Height="32px" OnClick="Button2_Click" Text="찾기" Width="73px" BackColor="#FF9966" BorderColor="#CC0000" Font-Bold="True" Font-Size="15pt" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="font-family: 휴먼매직체">이메일</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

