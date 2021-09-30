<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSitesi.YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblYemekAd" runat="server" Font-Size="30px" Text="Yemek Adı"></asp:Label>
    <asp:DataList ID="DataList2" runat="server" Width="585px">
        <ItemTemplate>
            <table class="yemekdetayTable">
                <tr>
                    <td class="yemekClass">
                        <asp:Label ID="lblYemekAd" runat="server" CssClass="yemekDetayBaslik" Text='<%#Eval("YorumAdSoyad") %>' style="font-size: x-large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="yemekClass">
                        <asp:Label ID="lblIcerik" runat="server" CssClass="yemekClassLabel" Text='<%#Eval("YorumIcerik") %>'></asp:Label>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="bosluk" style="border-bottom-style: none"></td>
                </tr>
                <tr>
                    <td class="yemekClass" style="border-bottom-style: none">
                        <asp:Label ID="lblYorumTarih" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="yemekClass" style="border-bottom-style: groove">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="YorumPanelBaslik">YORUM YAPMA PANELI</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="yemekDetayTable">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblYorumAdSoyad" runat="server" Text="Ad Soyad :" CssClass="YorumYapLabel"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAdSoyad" runat="server" Width="318px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMail" runat="server" Text="Mail :" CssClass="YorumYapLabel"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server" Width="318px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblYorum" runat="server" Text="Yorum :" CssClass="YorumYapLabel"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtYorum" runat="server" Width="318px" Height="160px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblYorumEklendi" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnYorumYap" runat="server" Text="Yorum Yap" Width="129px" OnClick="btnYorumYap_Click" style="height: 35px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

