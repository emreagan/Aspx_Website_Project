<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifi.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <strong>GÜNÜN YEMEĞİ</strong>
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" Height="202px" ImageUrl="~/Resimler/basemel-soslu-firinda-kiymali-makarna-1.jpg" Width="296px" />
        <br />
        <strong>MALZEMELER:</strong>
        <br />
        <asp:Label ID="Label4" runat="server" Text='<%# Eval ("GununYemegiMalzeme") %>'></asp:Label>
        <br />
        <strong>YAPILIŞI:<br /> </strong>
        <asp:Label ID="Label5" runat="server" Text='<%# Eval ("GununYemegiTarif") %>'></asp:Label>
        <br />
        <strong>Puan:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval ("GununYemegiPuan") %>'></asp:Label>
        <br />
        <strong>Eklendiği Tarih:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval ("GununYemegiTarih") %>'></asp:Label>
        <br />
    </ItemTemplate>
</asp:DataList>
</asp:Content>
