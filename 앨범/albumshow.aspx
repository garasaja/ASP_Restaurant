<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="albumshow.aspx.cs" Inherits="앨범_albumshow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style11 {
            width: 77px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:SqlDataSource ID="imageShowSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:qweConnectionString %>" SelectCommand="SELECT [imgTitle], [imgUpDate], [imgComment], [imgName], [imgfilename], [imgid] FROM [Album] WHERE ([imgid] = @imgid)" DeleteCommand="DELETE FROM [Album] WHERE [imgid] = @imgid" InsertCommand="INSERT INTO [Album] ([imgTitle], [imgUpDate], [imgComment], [imgName], [imgfilename]) VALUES (@imgTitle, @imgUpDate, @imgComment, @imgName, @imgfilename)" UpdateCommand="UPDATE [Album] SET [imgTitle] = @imgTitle, [imgUpDate] = @imgUpDate, [imgComment] = @imgComment, [imgName] = @imgName, [imgfilename] = @imgfilename WHERE [imgid] = @imgid">
            <DeleteParameters>
                <asp:QueryStringParameter Name="imgid" QueryStringField="imageid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="imgTitle" Type="String" />
                <asp:Parameter Name="imgUpDate" Type="DateTime" />
                <asp:Parameter Name="imgComment" Type="String" />
                <asp:Parameter Name="imgName" Type="String" />
                <asp:Parameter Name="imgfilename" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="imgid" QueryStringField="imageid" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="imgTitle" Type="String" />
                <asp:Parameter Name="imgUpDate" Type="DateTime" />
                <asp:Parameter Name="imgComment" Type="String" />
                <asp:Parameter Name="imgName" Type="String" />
                <asp:Parameter Name="imgfilename" Type="String" />
                <asp:Parameter Name="imgid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="imgid" DataSourceID="imageShowSqlDataSource" GridLines="Horizontal" Width="390px">
            <EditItemTemplate>
                imgTitle:
                <asp:TextBox ID="imgTitleTextBox" runat="server" Text='<%# Bind("imgTitle") %>' />
                <br />
                imgUpDate:
                <asp:TextBox ID="imgUpDateTextBox" runat="server" Text='<%# Bind("imgUpDate") %>' />
                <br />
                imgComment:
                <asp:TextBox ID="imgCommentTextBox" runat="server" Text='<%# Bind("imgComment") %>' />
                <br />
                imgName:
                <asp:TextBox ID="imgNameTextBox" runat="server" Text='<%# Bind("imgName") %>' />
                <br />
                imgfilename:
                <asp:TextBox ID="imgfilenameTextBox" runat="server" Text='<%# Bind("imgfilename") %>' />
                <br />
                imgid:
                <asp:Label ID="imgidLabel1" runat="server" Text='<%# Eval("imgid") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="업데이트" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <InsertItemTemplate>
                imgTitle:
                <asp:TextBox ID="imgTitleTextBox" runat="server" Text='<%# Bind("imgTitle") %>' />
                <br />
                imgUpDate:
                <asp:TextBox ID="imgUpDateTextBox" runat="server" Text='<%# Bind("imgUpDate") %>' />
                <br />
                imgComment:
                <asp:TextBox ID="imgCommentTextBox" runat="server" Text='<%# Bind("imgComment") %>' />
                <br />
                imgName:
                <asp:TextBox ID="imgNameTextBox" runat="server" Text='<%# Bind("imgName") %>' />
                <br />
                imgfilename:
                <asp:TextBox ID="imgfilenameTextBox" runat="server" Text='<%# Bind("imgfilename") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="삽입" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style11">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="사진 목록" />
                        </td>
                        <td>&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 0px" Text="사진 추가" />
&nbsp;
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="삭제" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">제 목:</td>
                        <td>
                            <asp:Label ID="imgTitleLabel" runat="server" Text='<%# Bind("imgTitle") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">올린 날짜:</td>
                        <td>
                            <asp:Label ID="imgUpDateLabel" runat="server" Text='<%# Bind("imgUpDate") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">설 명:</td>
                        <td>
                            <asp:Label ID="imgCommentLabel" runat="server" Text='<%# Bind("imgComment") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">위치:</td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "http://map.daum.net/link/search/"+Eval("imgfilename") %>' Text='<%# Eval("imgfilename") %>'></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# GetImageUrl(Eval("imgName")) %>' />
                        </td>
                    </tr>
                </table>
                <br />
                &nbsp;&nbsp;
            </ItemTemplate>
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:FormView>
    </p>
</asp:Content>

