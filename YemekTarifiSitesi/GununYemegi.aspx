<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="style/style.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="tblGununYemegi">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="BASLIK" CssClass="gununYemegiBaslik" runat="server" Font-Bold="True" Font-Size="15pt" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMlzmlr" CssClass="lblMlzmlr"  runat="server" Font-Bold="True" Text="Malzemeler :" Font-Size="Large"></asp:Label>
&nbsp;<asp:Label ID="lblMalzeme" runat="server" Text='<%# Eval("YemekMalzeme") %>' Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style1">
                        <asp:Label ID="lblTrf"  CssClass="lblTrf"  runat="server" Font-Bold="True" Text="Tarif :" Font-Size="Large"></asp:Label>
&nbsp;<asp:Label ID="lblTarif" runat="server" Text='<%# Eval("YemekTarif") %>' Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Image ID="imgYemek" runat="server" Height="139px" Width="556px" ImageUrl='<%# Eval("YemekResim") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="lblPn" runat="server" Font-Bold="True" Font-Size="Large" Text="Puan :"></asp:Label>
                        &nbsp;<asp:Label ID="lblPuan" runat="server" Font-Size="Large" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        &nbsp;&nbsp;</td>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblEklnmTrh" runat="server" Font-Bold="True" Font-Size="Large" Text="Eklenme Tarihi :"></asp:Label>
                        &nbsp;<asp:Label ID="lblEklenmeTarih" runat="server" Font-Italic="True" Font-Size="Large" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
   
</asp:Content>
