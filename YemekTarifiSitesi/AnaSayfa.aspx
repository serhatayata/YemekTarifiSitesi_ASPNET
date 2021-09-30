<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifiSitesi.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .cizgi {
            height: 3px;
            background-color: #000099;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:DataList ID="DataList2" runat="server" Width="595px">
        <ItemTemplate>
            <table class="anasayfaTable">
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">

                      <a href="YemekDetay.aspx?yemekid=<%#Eval("YemekID")%>">
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
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Tarif0" runat="server"  CssClass="AnaSayfaItem"  Font-Bold="True" Font-Italic="False" Text="Tarih : "></asp:Label>
                        <asp:Label ID="lblTarih" CssClass="AnaSayfaItem" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                    <td class="cizgi" colspan="2"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

