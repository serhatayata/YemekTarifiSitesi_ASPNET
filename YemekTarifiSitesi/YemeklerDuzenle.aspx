<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemeklerDuzenle.aspx.cs" Inherits="YemekTarifiSitesi.YemeklerDuzenle1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .tableGenis{
            width:589px;
        }
        .auto-style1 {
            height: 25px;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tableGenis">
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Label ID="lblYemeklerDuzenleBaslik" runat="server" CssClass="kategoriBaslik" Text="Günün Yemeği"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblYemekAdDuzenle" runat="server" CssClass="kategoriLabel" Text="Yemek Ad :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtYemekAdDuzenle" runat="server" Width="280px"></asp:TextBox>
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
                <asp:Label ID="Label2" runat="server" CssClass="kategoriLabel" Text="Malzemeler :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMalzemelerDuzenle" runat="server" Height="180px" TextMode="MultiLine" Width="280px"></asp:TextBox>
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
                <asp:Label ID="lblTarifDuzenle" runat="server" CssClass="kategoriLabel" Text="Tarif :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTarifDuzenle" runat="server" Height="180px" TextMode="MultiLine" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblKategoriDuzenle" runat="server" CssClass="kategoriLabel" Text="Kategori :"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="dropDownKategoriler" runat="server" Height="20px" Width="280px">
                </asp:DropDownList>
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
                <asp:Label ID="lblYemekResim" runat="server" CssClass="kategoriLabel" Text="Yemek Resim :"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="280px" />
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
                <asp:Button ID="Button1" runat="server" OnClick="btnGununYemegiSec" Text="Günün Yemeği Yap" CssClass="btn" Width="200px" />
            </td>
            <td>
                <asp:Button ID="btnYemekDuzenle" runat="server" CssClass="btn" OnClick="btnYemekDuzenle_Click" Text="Güncelle" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
