<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="로그인.aspx.cs" Inherits="로그인" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            width: 726px;
            height: 182px;
            z-index: 1;
            left: -1px;
            top: 1px;
            position: relative;
        }
        
    .auto-style15 {
        width: 319px;
            height: 175px;
        }
        .auto-style22 {
            height: 30px;
        }
        .auto-style14 {
            width: 421px;
            height: 30px;
        }
        .auto-style18 {
            width: 155px;
            height: 30px;
        }
        .auto-style13 {
        text-align: center;
            height: 30px;
        }
        .auto-style23 {
            text-align: center;
            height: 31px;
        }
        .auto-style24 {
            height: 31px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style21">
    <tr>
        <td class="auto-style15" rowspan="6">
            <asp:Image ID="Image1" runat="server" Height="198px" ImageUrl="~/upload/imege/로그인.jpg" Width="227px" />
        </td>
        <td class="auto-style22" colspan="3" style="color: #FF0066; font-style: normal; font-variant: normal; font-family: HY동녘M;">맛집에 오신걸환영합니다</td>
    </tr>
    <tr>
        <td class="auto-style14" style="font-family: 휴먼편지체">아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox3" runat="server" Width="237px"></asp:TextBox>
        </td>
        <td rowspan="2">
            <asp:Button ID="Button10" runat="server" Height="40px" OnClick="Button10_Click" Text="로 그 인" Width="107px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="font-family: 휴먼편지체">비밀번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style18">
            <asp:TextBox ID="TextBox4" runat="server" Width="236px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" colspan="2" style="font-family: 휴먼편지체">아이디 기억이 안나세요?</td>
        <td class="auto-style22">
            <asp:Button ID="Button7" runat="server" Text="아이디찾기" Width="119px" PostBackUrl="~/아이디찾기.aspx" />
        </td>
    </tr>
    <tr>
        <td class="auto-style23" colspan="2" style="font-family: 휴먼편지체">비밀번호 기억이 안나세요?</td>
        <td class="auto-style24">
            <asp:Button ID="Button8" runat="server" Text="비밀번호찾기" PostBackUrl="~/비밀번호찾기.aspx" />
        </td>
    </tr>
    <tr>
        <td class="auto-style23" colspan="2" style="font-family: 휴먼편지체">회원이 아니신가요?</td>
        <td class="auto-style24">
            <asp:Button ID="Button9" runat="server" PostBackUrl="~/회원가입.aspx" Text="회원가입" />
        </td>
    </tr>
</table>
</asp:Content>

