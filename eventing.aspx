<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="eventing.aspx.cs" Inherits="eventing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 800px; height: 640px">
    <br />
    <div style="font-size: 35px; text-align: center; font-style: italic; font-family: 휴먼옛체; font-weight: normal; color: #FF6666; margin-bottom: 0px;">
            자 연 대 인 의&nbsp; 집&nbsp; 혜 택 !</div>
    <br />
    <br />
    <div style="height: 520px; position: relative; top: 0px; left: 0px">
        <div style="width: 250px; height: 250px; background-color: #00CC66; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative;">
                땅땅치킨<br />
            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/upload/imege/자연대특권/땅땅.jpg" Width="250px" />
            <br />서비스구성(주문 전 학생증제시)<br />-테이블당 음료수한병 무료!<br />
            <div style="width: 250px; height: 250px; background-color: #FF9999; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative; top: -203px; left: 258px;">
                    명문관<br />
                <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl="~/upload/imege/자연대특권/명문관.jpg" Width="250px" />
                <br />서비스구성(주문 전 학생증제시)<br />-주문시 콜라,만두 서비스!<br />
            </div>
        </div>
        <div style="width: 250px; height: 250px; background-color: #CC9900; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative; top: 12px; left: 0px;">
                우리두마리치킨<br />
            <asp:Image ID="Image4" runat="server" Height="150px" ImageUrl="~/upload/imege/자연대특권/우리두마리.PNG" Width="250px" />
            <br />서비스구성(주문 전 학생증제시)<br />-주문시 음료수 한병 무료!<br />-학생전용가격따로!<br />
            <div style="width: 250px; height: 250px; background-color: #9966FF; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative; top: -224px; left: 258px;">
                    이모네<br />
                <asp:Image ID="Image5" runat="server" Height="150px" ImageUrl="~/upload/imege/자연대특권/이모네.jpg" Width="250px" />
                <br />서비스구성(주문 전 학생증제시)<br />-4명이상 4인분주문시 1인분추가 (현금가)<br />-회식 등 행사시 파격할인!</div>
        </div>
        <br />
        <div style="width: 250px; height: 250px; background-color: #66CCFF; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative; top: -517px; left: 521px;">
                사각갈비삼겹<br />
            <asp:Image ID="Image3" runat="server" Height="150px" ImageUrl="~/upload/imege/자연대특권/사각갈비.jpg" Width="250px" />
            <br />서비스구성(주문 전 학생증제시)<br />-계란찜,소고기국 서비스!<br />
            <br />
        </div>
        <div style="width: 250px; height: 247px; background-color: #808080; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative; top: -507px; left: 519px;">
                짬뽕늬우스<br />
            <asp:Image ID="Image6" runat="server" Height="150px" ImageUrl="~/upload/imege/자연대특권/짬뽕늬우스-10.jpg" Width="250px" />
            <br />서비스구성(주문 전 학생증제시)<br />-매운짬뽕 주문시 음료수 한병<br />무료!!<br />
        </div>
    </div>
    <br />
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/event1.aspx" style="position: relative; top: -14px; left: 2px" Text="1" Width="22px" />
&nbsp;<asp:Button ID="Button2" runat="server" PostBackUrl="~/eventing.aspx" style="position: relative; top: -13px; left: 1px" Text="2" Width="22px" />
    <br />
</div>
</asp:Content>

