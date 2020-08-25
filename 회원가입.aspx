<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="회원가입.aspx.cs" Inherits="회원가입" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style17 {
        width: 615px;
    }
    .auto-style14 {
        height: 25px;
        width: 615px;
    }
    .auto-style18 {
        width: 124px;
    }
        .auto-style19 {
            width: 124px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10" style="position: relative; top: 5px; left: 10px; width: 656px; margin-left: 0px; z-index: 1;">
        <tr>
            <td colspan="2">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="136px" ImageUrl="~/upload/imege/회원가입.gif" Width="419px" OnClick="ImageButton2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="font-family: 휴먼매직체">이름:</td>
            <td class="auto-style17">&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox10" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="font-family: 휴먼매직체">아이디:</td>
            <td class="auto-style14">&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox11" EnableClientScript="False" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox11" ErrorMessage="3~9자리 영어만" ValidationExpression="([a-zA-Z0-9]){3,9}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="font-family: 휴먼매직체">비밀번호:</td>
            <td class="auto-style17">&nbsp;&nbsp;<asp:TextBox ID="TextBox12" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox12" EnableClientScript="False" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox12" EnableClientScript="False" ErrorMessage="3~9자리 영어,숫자만" ValidationExpression="([a-zA-Z0-9]){3,9}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="font-family: 휴먼매직체">비밀번호 확인:</td>
            <td class="auto-style17">&nbsp;&nbsp;<asp:TextBox ID="TextBox13" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox13" EnableClientScript="False" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox13" ControlToValidate="TextBox12" EnableClientScript="False" ErrorMessage="비밀번호가 일치하지 않음" ForeColor="#FF3300"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19" style="font-family: 휴먼매직체">주소:</td>
            <td class="auto-style14">&nbsp;&nbsp;<asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18" style="font-family: 휴먼매직체">휴대전화:</td>
            <td class="auto-style17">&nbsp;&nbsp;<asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19" style="font-family: 휴먼매직체">이메일:</td>
            <td class="auto-style14">&nbsp;&nbsp;<asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox16" EnableClientScript="False" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox16" EnableClientScript="False" ErrorMessage="이메일 형식에 맞게" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style14">
                <asp:Button ID="Button7" runat="server" Text="가 입" OnClick="Button7_Click" BackColor="#FF66FF" BorderColor="#FF99FF" BorderStyle="Ridge" Font-Bold="True" Font-Names="휴먼편지체" Font-Overline="False" ForeColor="#003300" Width="67px" />
            </td>
        </tr>
    </table>
</asp:Content>

