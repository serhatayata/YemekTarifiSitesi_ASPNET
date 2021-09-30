<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifiSitesi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        padding-right: 40px;
        padding-left: 10px;
        width: 569px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="595px">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style3"><a href="YemekDetay.aspx?yemekid=<%#Eval("YemekID")%>">
                    <asp:Label ID="lblBaslik" runat="server" Font-Bold="True" Font-Size="18pt" Text='<%# Eval("YemekAd") %>' CssClass="anaSayfaBaslik"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Malzemeler" runat="server"  CssClass="AnaSayfaItem"  Font-Bold="True" Font-Italic="False" Text="Malzemeler : "></asp:Label>
                    <asp:Label ID="lblMalzemeler" CssClass="AnaSayfaItem" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Tarif" runat="server"  CssClass="AnaSayfaItem"  Font-Bold="True" Font-Italic="False" Text="Tarif : "></asp:Label>
                    <asp:Label ID="lblTarif"  CssClass="AnaSayfaItem" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="anasayfalblTarih" colspan="2">
                    <asp:Label ID="Tarif0" runat="server"  CssClass="AnaSayfaItem"  Font-Bold="True" Font-Italic="False" Text="Tarih : "></asp:Label>
                    <asp:Label ID="lblTarih" CssClass="AnaSayfaItem" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    <asp:Label ID="Tarif1" runat="server" CssClass="AnaSayfaItem" Font-Bold="True" Font-Italic="False" Text="Puan : "></asp:Label>
                    <asp:Label ID="lblPuan" runat="server" CssClass="AnaSayfaItem" Font-Italic="True" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="anaSayfaBaslik"></td>
                <td class="anaSayfaBaslik"></td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
