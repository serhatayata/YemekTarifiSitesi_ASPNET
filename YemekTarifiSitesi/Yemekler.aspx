 <%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSitesi.YemeklerDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .kategoriWidth {
            width: 355px;
        }
        .kategoriEkleText {
            width: 180px;
        }
        .fileStyle {
            margin-left: 30;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="">
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnEkle" runat="server" CssClass="btn" OnClick="btnEkle_Click" Text="+" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCikar" runat="server" CssClass="btn" OnClick="btnCikar_Click" Text="-" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YEMEK LİSTESİ</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="582px">
            <ItemTemplate>
                <table class="">
                    <tr>
                        <td class="kategoriWidth">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="kategoriWidth">
                            <asp:Label ID="lblYemekAd" runat="server" CssClass="kategoriLabel" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td>
                            <a href="Yemekler.aspx?YemekID=<%#Eval("YemekID")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="29px" ImageUrl="~/icons/Delete_ICON.png" Width="45px" /></a>
                        </td>
                        <td>
                           <a href="YemeklerDuzenle.aspx?YemekID=<%#Eval("YemekID")%>"><asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/icons/Update_ICON.png" Width="45px" /></a>
                        </td>
                    </tr>
                    <tr>
                        <td class="kategoriWidth">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="kategoriWidth">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
            <table class="">
                <tr>
                    <td colspan="3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnEkle0" runat="server" CssClass="btn" OnClick="btnEkle0_Click" Text="+" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCikar0" runat="server" CssClass="btn" OnClick="btnCikar0_Click" Text="-" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YEMEK EKLEME</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
</asp:Panel>
<asp:Panel ID="Panel4" runat="server">
    <table class="">
        <tr>
            <td class="kategoriEkleText">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="kategoriEkleText">
                <asp:Label ID="lblYemekAdEkle" runat="server" CssClass="kategoriLabel" Text="Yemek Ad :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtYemekAdEkle" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="kategoriEkleText">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="kategoriEkleText">
                <asp:Label ID="lblYemekMalzemeler" runat="server" CssClass="kategoriLabel" Text="Malzemeler :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtYemekMalzemeler" runat="server" Height="174px" TextMode="MultiLine" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="kategoriEkleText">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="kategoriEkleText">
                <asp:Label ID="lblTarif" runat="server" CssClass="kategoriLabel" Text="Tarif :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTarif" runat="server" Height="174px" TextMode="MultiLine" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="kategoriEkleText">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="kategoriEkleText">
                <asp:Label ID="lblKategori" runat="server" CssClass="kategoriLabel" Text="Kategori :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropDownKategoriler" runat="server" Height="27px" Width="281px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="kategoriEkleText">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="kategoriEkleText">
                <asp:Label ID="lblEklendi" runat="server" CssClass="kategoriLabel"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnYemekEkle" runat="server" CssClass="btn" OnClick="btnYemekEkle_Click" Text="Ekle" Width="129px" />
            </td>
        </tr>
        <tr>
            <td class="kategoriEkleText">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
</asp:Content>
