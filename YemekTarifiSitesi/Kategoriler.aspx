<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSitesi.Kategoriler" %>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KATEGORİ LİSTESİ</td>
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
                            <asp:Label ID="Label2" runat="server" CssClass="kategoriLabel" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td>
                            <a href="Kategoriler.aspx?KategoriID=<%#Eval("KategoriID")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="29px" ImageUrl="~/icons/Delete_ICON.png" Width="45px" /></a>
                        </td>
                        <td>
                           <a href="KategoriDuzenle.aspx?KategoriID=<%#Eval("KategoriID")%>"><asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/icons/Update_ICON.png" Width="45px" /></a>
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
                    <td class="auto-style2" colspan="3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnEkle0" runat="server" CssClass="btn" OnClick="btnEkle2_Click" Text="+" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCikar0" runat="server" CssClass="btn" OnClick="btnCikar2_Click" Text="-" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KATEGORİ EKLEME</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
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
                <asp:Label ID="lblKategoriAd" runat="server" CssClass="kategoriLabel" Text="Kategori Ad :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtKategoriAdEkle" runat="server" Width="280px"></asp:TextBox>
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
                <asp:Label ID="lblIcon" runat="server" CssClass="kategoriLabel" Text="Kategori Icon :"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fileStyle" Width="239px" />
            </td>
        </tr>
        <tr>
            <td> &nbsp </td>
            <td> &nbsp </td>
        </tr>
        <tr>
            <td class="kategoriEkleText">
                <asp:Label ID="lblEklendi" runat="server">Ekleme Durumu</asp:Label>
            </td>
            <td>
                <asp:Button ID="btnKategoriEkle" runat="server" CssClass="btn" OnClick="btnKategoriEkle_Click" Text="Ekle" Width="129px" />
            </td>
        </tr>
        <tr>
            <td class="kategoriEkleText">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
</asp:Content>
