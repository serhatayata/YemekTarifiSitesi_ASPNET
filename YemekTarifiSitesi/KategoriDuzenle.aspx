<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifiSitesi.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="navigatorTable">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblKategoriAdDuzenle" runat="server" CssClass="kategoriLabel" Text="Kategori Ad :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtKategoriAd" runat="server" Width="239px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblKategoriAdetDuzenle" runat="server" CssClass="kategoriLabel" Text="Kategori Adet :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtKategoriAdetDuzenle" runat="server" Width="239px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblKategoriAdetDuzenle0" runat="server" CssClass="kategoriLabel" Text="Kategori Resim :"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="239px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnGuncelle" runat="server" CssClass="btn" Text="Güncelle" Width="104px" OnClick="btnGuncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
