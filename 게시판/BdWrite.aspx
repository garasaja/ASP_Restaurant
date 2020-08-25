<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BdWrite.aspx.cs" Inherits="게시판_BdWrite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 66px;
        }
        .auto-style10 {
            width: 66px;
            height: 25px;
        }
        .auto-style11 {
            height: 25px;
        }
        .auto-style12 {
            width: 66px;
            height: 462px;
        }
        .auto-style13 {
            height: 462px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style9">글쓰기</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">작성자:</td>
            <td>
                <asp:TextBox ID="nameTextBox" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">글제목:</td>
            <td>
                <asp:TextBox ID="subjectTextBox" runat="server" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="subjectTextBox" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">내용:</td>
            <td class="auto-style13">
                <asp:TextBox ID="ContentTextBox" runat="server" Height="450px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ContentTextBox" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Button ID="writeImageButton" runat="server" OnClick="writeImageButton_Click" Text="글쓰기" BorderStyle="Dotted" />
            </td>
            <td class="auto-style11">
                <asp:Button ID="listImageButton" runat="server" OnClick="listImageButton_Click" Text="목 록" BorderStyle="Dotted" />
            </td>
        </tr>
    </table>
    <asp:TextBox ID="groupDepthTextBox" runat="server" Visible="False"></asp:TextBox>
&nbsp;<asp:TextBox ID="groupPositionTextBox" runat="server" Visible="False"></asp:TextBox>
    <br />
    <asp:SqlDataSource ID="newSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:qweConnectionString %>" DeleteCommand="DELETE FROM [Board] WHERE [id] = @id" InsertCommand="INSERT INTO Board(subject, [content], uptime, name, hitNumber, groupID, groupDepth, groupPosition) VALUES (@subject, @content, GETDATE(), @name, 0, 0, 0, 0)" SelectCommand="SELECT * FROM [Board]" UpdateCommand="UPDATE Board SET groupID = id WHERE (groupID = 0)">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="subjectTextBox" Name="subject" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ContentTextBox" Name="content" PropertyName="Text" Type="String" />
            <asp:Parameter Name="uptime" Type="String" />
            <asp:ControlParameter ControlID="nameTextBox" Name="name" PropertyName="Text" Type="String" />
            <asp:Parameter Name="hitNumber" Type="Int32" />
            <asp:Parameter Name="groupID" Type="Int32" />
            <asp:Parameter Name="groupDepth" Type="Int32" />
            <asp:Parameter Name="groupPosition" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="subject" Type="String" />
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="uptime" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="hitNumber" Type="Int32" />
            <asp:Parameter Name="groupID" Type="Int32" />
            <asp:Parameter Name="groupDepth" Type="Int32" />
            <asp:Parameter Name="groupPosition" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;<br />
    <asp:SqlDataSource ID="replySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:qweConnectionString %>" DeleteCommand="DELETE FROM [Board] WHERE [id] = @id" InsertCommand="INSERT INTO dbo.Board(name, subject, [content], uptime, hitNumber, groupID, groupDepth, groupPosition) VALUES (@name, @subject, '@[content]', GETDATE(), 0, @groupID, @groupDepth, @groupPosition)" SelectCommand="SELECT * FROM [Board]" UpdateCommand="UPDATE dbo.Board SET groupPosition=groupPosition+1 WHERE(groupID=@groupID )AND (groupPosition &gt;@groupPosition)">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="subjectTextBox" Name="subject" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ContentTextBox" Name="content" PropertyName="Text" Type="String" />
            <asp:Parameter Name="uptime" Type="String" />
            <asp:ControlParameter ControlID="nameTextBox" Name="name" PropertyName="Text" Type="String" />
            <asp:Parameter Name="hitNumber" Type="Int32" />
            <asp:QueryStringParameter Name="groupID" QueryStringField="groupID" Type="Int32" />
            <asp:ControlParameter ControlID="groupDepthTextBox" Name="groupDepth" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="groupPositionTextBox" Name="groupPosition" PropertyName="Text" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="subject" Type="String" />
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="uptime" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="hitNumber" Type="Int32" />
            <asp:QueryStringParameter Name="groupID" QueryStringField="groupID" Type="Int32" />
            <asp:Parameter Name="groupDepth" Type="Int32" />
            <asp:QueryStringParameter Name="groupPosition" QueryStringField="groupPosition" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

