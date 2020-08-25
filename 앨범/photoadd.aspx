<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="photoadd.aspx.cs" Inherits="앨범_photoadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 79%;
        }
        .auto-style9 {
            width: 125px;
        }
        .auto-style10 {
            height: 20px;
            text-align: left;
        }
        .auto-style11 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:SqlDataSource ID="photoAddSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:qweConnectionString %>" SelectCommand="SELECT * FROM [Album]" InsertCommand="INSERT INTO dbo.Album(imgName,imgTitle,imgHits,imgUpDate,imgComment,imgfilename) VALUES(@imgName,@imgTitle,0,GETDATE(),@imgComment,@imgfilename)" >
        
        <InsertParameters>
            <asp:ControlParameter ControlID="txtFileName" DefaultValue="" Name="imgName" PropertyName="Text" />
            <asp:ControlParameter ControlID="titleTextBox" DefaultValue="" Name="imgTitle" PropertyName="Text" />
            <asp:ControlParameter ControlID="contentTextBox" DefaultValue="" Name="imgComment" PropertyName="Text" />
            <asp:ControlParameter ControlID="location" Name="imgfilename" PropertyName="Text" DefaultValue="" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
    <table class="auto-style8">
        <tr>
            <td class="auto-style10" colspan="2" style="font-family: 휴먼명조; font-size: 20px; font-style: italic; color: #0000FF; font-weight: bold;">사진올리기</td>
        </tr>
        <tr>
            <td class="auto-style9" style="background-color: #666699">사진제목</td>
            <td>
                <asp:TextBox ID="titleTextBox" runat="server" Width="500px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="background-color: #666699">사진설명</td>
            <td>
                <asp:TextBox ID="contentTextBox" runat="server" Height="300px" TextMode="MultiLine" Width="500px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="background-color: #666699">이미지</td>
            <td>
                <input id="photoFile" type="file" runat="server" />
                <asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtFileSize" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="background-color: #666699">위치</td>
            <td>
                <asp:TextBox ID="location" runat="server" Width="401px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="저장" style="height: 21px" />
&nbsp;<asp:Button ID="btnList" runat="server" Text="사진보기" OnClick="btnList_Click1" />
            </td>
        </tr>
    </table>
</asp:Content>

