<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        text-align: right;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Tarifin Adı : </td>
        <td>
            <asp:TextBox ID="TxtAd" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;Malzemeler :</td>
        <td>
            <asp:TextBox ID="TxtMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Yapılışı :</td>
        <td>
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Resim : </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mail Adresiniz:</td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Gönderen :</td>
        <td>
            <asp:TextBox ID="TxtGonderen" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnGonder" runat="server" BackColor="#00CC00" Text="Gönder" Width="150px" OnClick="BtnGonder_Click" />
        </td>
    </tr>
</table>
</asp:Content>
