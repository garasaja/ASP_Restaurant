<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="event1.aspx.cs" Inherits="event1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 800px; height: 640px">
    <br />
    <div style="font-size: 35px; text-align: center; font-style: italic; font-family: 휴먼옛체; font-weight: normal; color: #FF6666; margin-bottom: 0px;">
            공 대 인 의&nbsp; 집&nbsp; 혜 택 !</div>
    <br />
    <br />
    <div style="height: 520px; position: relative; top: 0px; left: 0px">
        <div style="width: 250px; height: 250px; background-color: #00CC66; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative;">
                유가네<br />
            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/upload/imege/공대인/김해.jpg" Width="250px" />
            <br />서비스구성(주문 전 학생증제시)<br />-3인 음료수 1병
                <br />
            <div style="width: 250px; height: 250px; background-color: #FF9999; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative; top: -202px; left: 261px;">
                    막장대소<br />
                <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl="~/upload/imege/공대인/막장대소.jpg" Width="250px" />
                <br />서비스구성(주문 전 학생증제시)<br />-테이블당 음료수 1병<br />
            </div>
        </div>
        <div style="width: 250px; height: 250px; background-color: #CC9900; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative; top: 12px; left: 0px;">
                천탁<br />
            <asp:Image ID="Image4" runat="server" Height="150px" ImageUrl="~/upload/imege/공대인/천탁.jpg" Width="250px" />
            <br />서비스구성(주문 전 학생증제시)<br />-테이블 당 음료수 1병<br />
            <br />
            <div style="width: 250px; height: 250px; background-color: #9966FF; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative; top: -223px; left: 260px;">
                    이모네<br />
                <asp:Image ID="Image5" runat="server" Height="150px" ImageUrl="~/upload/imege/공대인/이모네.jpg" Width="250px" />
                <br />서비스구성(주문 전 학생증제시)<br />-4명이상 4인분주문시 1인분추가 (현금가)<br />-회식 등 행사시 파격할인!</div>
        </div>
        <br />
        <div style="width: 250px; height: 250px; background-color: #66CCFF; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative; top: -518px; left: 523px;">
                부천성<br />
            <asp:Image ID="Image3" runat="server" Height="150px" ImageUrl="~/upload/imege/공대인/부천성.jpg" Width="250px" />
            <br />서비스구성(주문 전 학생증제시)<br />-2만원 이상 주문 시 10% 할인<br />-식당 방문 시 500원 할인(현금)<br />
            <br />
        </div>
        <div style="width: 250px; height: 250px; background-color: #808080; color: #FFFFFF; font-style: italic; font-family: 휴먼옛체; font-size: 17px; position: relative; top: -507px; left: 524px;">
                오춘자비어<br />
            <asp:Image ID="Image6" runat="server" Height="150px" ImageUrl="~/upload/imege/공대인/춘자_41414.jpg" Width="250px" />
            <br />서비스구성(주문 전 학생증제시)<br />-2만원 이상 주문 시 쥐포 1마리<br />
        </div>
    </div>
    <br />
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/event1.aspx" style="position: relative; top: -14px; left: 0px" Text="1" Width="22px" />
&nbsp;<asp:Button ID="Button2" runat="server" PostBackUrl="~/eventing.aspx" style="position: relative; top: -14px; left: 2px; height: 21px" Text="2" Width="22px" />
</div>
</asp:Content>

