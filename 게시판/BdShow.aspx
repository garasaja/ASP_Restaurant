<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BdShow.aspx.cs" Inherits="게시판_BdShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:SqlDataSource ID="showSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:qweConnectionString %>" DeleteCommand="DELETE FROM [Board] WHERE [id] = @id" InsertCommand="INSERT INTO [Board] ([subject], [content], [uptime], [name], [hitNumber], [groupID], [groupDepth], [groupPosition]) VALUES (@subject, @content, @uptime, @name, @hitNumber, @groupID, @groupDepth, @groupPosition)" SelectCommand="SELECT * FROM [Board] WHERE ([id] = @id)" UpdateCommand="UPDATE [Board] SET [subject] = @subject, [content] = @content, [uptime] = @uptime, [name] = @name, [hitNumber] = @hitNumber, [groupID] = @groupID, [groupDepth] = @groupDepth, [groupPosition] = @groupPosition WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="subject" Type="String" />
                <asp:Parameter Name="content" Type="String" />
                <asp:Parameter Name="uptime" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="hitNumber" Type="Int32" />
                <asp:Parameter Name="groupID" Type="Int32" />
                <asp:Parameter Name="groupDepth" Type="Int32" />
                <asp:Parameter Name="groupPosition" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
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
    </p>
    <p>
        <asp:SqlDataSource ID="hitupdateSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:qweConnectionString %>" DeleteCommand="DELETE FROM [Board] WHERE [id] = @id" InsertCommand="INSERT INTO [Board] ([subject], [content], [uptime], [name], [hitNumber], [groupID], [groupDepth], [groupPosition]) VALUES (@subject, @content, @uptime, @name, @hitNumber, @groupID, @groupDepth, @groupPosition)" SelectCommand="SELECT * FROM [Board]" UpdateCommand="UPDATE dbo.Board SET hitNumber=hitNumber+1 WHERE (id=@original_id)">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="subject" Type="String" />
                <asp:Parameter Name="content" Type="String" />
                <asp:Parameter Name="uptime" Type="String" />
                <asp:Parameter Name="name" Type="String" />
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
                <asp:QueryStringParameter Name="original_id" QueryStringField="id" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:FormView ID="FormView2" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="showSqlDataSource" ForeColor="Black" GridLines="Vertical" Width="503px" Font-Bold="False" Font-Italic="True" Font-Names="휴먼편지체">
            <EditItemTemplate>
                id:
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />
                subject:
                <asp:TextBox ID="subjectTextBox" runat="server" Text='<%# Bind("subject") %>' />
                <br />
                content:
                <asp:TextBox ID="contentTextBox" runat="server" Text='<%# Bind("content") %>' />
                <br />
                uptime:
                <asp:TextBox ID="uptimeTextBox" runat="server" Text='<%# Bind("uptime") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                hitNumber:
                <asp:TextBox ID="hitNumberTextBox" runat="server" Text='<%# Bind("hitNumber") %>' />
                <br />
                groupID:
                <asp:TextBox ID="groupIDTextBox" runat="server" Text='<%# Bind("groupID") %>' />
                <br />
                groupDepth:
                <asp:TextBox ID="groupDepthTextBox" runat="server" Text='<%# Bind("groupDepth") %>' />
                <br />
                groupPosition:
                <asp:TextBox ID="groupPositionTextBox" runat="server" Text='<%# Bind("groupPosition") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="업데이트" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                게 시 글~
            </HeaderTemplate>
            <InsertItemTemplate>
                subject:
                <asp:TextBox ID="subjectTextBox" runat="server" Text='<%# Bind("subject") %>' />
                <br />
                content:
                <asp:TextBox ID="contentTextBox" runat="server" Text='<%# Bind("content") %>' />
                <br />
                uptime:
                <asp:TextBox ID="uptimeTextBox" runat="server" Text='<%# Bind("uptime") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                hitNumber:
                <asp:TextBox ID="hitNumberTextBox" runat="server" Text='<%# Bind("hitNumber") %>' />
                <br />
                groupID:
                <asp:TextBox ID="groupIDTextBox" runat="server" Text='<%# Bind("groupID") %>' />
                <br />
                groupDepth:
                <asp:TextBox ID="groupDepthTextBox" runat="server" Text='<%# Bind("groupDepth") %>' />
                <br />
                groupPosition:
                <asp:TextBox ID="groupPositionTextBox" runat="server" Text='<%# Bind("groupPosition") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="삽입" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </InsertItemTemplate>
            <ItemTemplate>
                글번호:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                &nbsp;&nbsp; 조회수:<asp:Label ID="hitNumberLabel" runat="server" Text='<%# Bind("hitNumber") %>' />
                <br />
                글쓴이:<asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                올린 날짜:<asp:Label ID="uptimeLabel" runat="server" Text='<%# Bind("uptime") %>' />
                <br />
                제목:
                <asp:Label ID="subjectLabel" runat="server" Text='<%# Bind("subject") %>' />
                <br />
                <asp:Label ID="contentLabel" runat="server" Text='<%# Bind("content") %>' />
                <br />
                <asp:Label ID="groupIDLabel" runat="server" Text='<%# Bind("groupID") %>' Visible="False" />
                <br />
                <asp:Label ID="groupDepthLabel" runat="server" Text='<%# Bind("groupDepth") %>' Visible="False" />
                <br />
                <asp:Label ID="groupPositionLabel" runat="server" Text='<%# Bind("groupPosition") %>' Visible="False" />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="편집" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" OnClick="DeleteButton_Click" Text="삭제" />
                &nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/게시판/BdList.aspx">목록</asp:HyperLink>
            </ItemTemplate>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:FormView>
    </p>
    <p>
        <asp:SqlDataSource ID="memoSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:qweConnectionString %>" DeleteCommand="DELETE FROM MemoTB where bdid=@id" InsertCommand="INSERT INTO MemoTB(bdid, name, memo, dd) VALUES (@bdid, @name, @memo, GETDATE())" SelectCommand="SELECT * FROM [MemoTB] WHERE ([bdid] = @bdid)" UpdateCommand="UPDATE [MemoTB] SET [bdid] = @bdid, [name] = @name, [memo] = @memo, [dd] = @dd WHERE [id] = @id">
            <DeleteParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" />
            </DeleteParameters>
            <InsertParameters>
                <asp:QueryStringParameter Name="bdid" QueryStringField="id" Type="Int32" />
                <asp:ControlParameter ControlID="nameTextBox" Name="name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="memoTextBox" Name="memo" PropertyName="Text" Type="String" />
                <asp:Parameter Name="dd" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="bdid" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="bdid" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="memo" Type="String" />
                <asp:Parameter Name="dd" Type="DateTime" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="id" DataSourceID="memoSqlDataSource" GridLines="Both">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                댓 글!~
            </HeaderTemplate>
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
&nbsp;<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                :&nbsp;
                <asp:Label ID="memoLabel" runat="server" Text='<%# Eval("memo") %>' />
                &nbsp;(<asp:Label ID="ddLabel" runat="server" Text='<%# Eval("dd") %>' />
                )<br /> <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SeparatorTemplate>
                <hr style="height: -7px" />
            </SeparatorTemplate>
        </asp:DataList>
    </p>
    <br />
    이름:
    <asp:TextBox ID="nameTextBox" runat="server" Width="200px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    메모:
    <asp:TextBox ID="memoTextBox" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox>
&nbsp;<asp:Button ID="saveImageButton" runat="server" OnClick="saveImageButton_Click" Text="저장" />
</asp:Content>

