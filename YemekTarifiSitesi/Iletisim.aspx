<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifiSitesi.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="IletisimTable">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMesajBaslik" runat="server" CssClass="mesajBaslik" Text="MESAJ PANELİ"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMesajAdSoyad" runat="server" CssClass="iletisimLabel" Text="Ad Soyad :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMesajAdSoyad" runat="server" Width="304px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMesajMailAdresi" runat="server" CssClass="iletisimLabel" Text="Mail Adresiniz :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMailAdresi" runat="server" Width="304px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMesajKonu" runat="server" CssClass="iletisimLabel" Text="Konu :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMesajKonu" runat="server" Width="304px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMesajIcerik" runat="server" CssClass="iletisimLabel" Text="Mesaj :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMesajIcerik" runat="server" Width="303px" Height="97px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblGonderildiMesaj" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnMesajGonder" runat="server" Text="Gönder" CssClass="btn" OnClick="btnMesajGonder_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
