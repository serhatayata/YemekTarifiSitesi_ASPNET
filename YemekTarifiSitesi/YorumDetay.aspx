<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifiSitesi.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="navigatorTable">
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblYorumAdSoyad" runat="server" CssClass="kategoriLabel" Text="Ad Soyad :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtYorumAdSoyad" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblYorumMail" runat="server" CssClass="kategoriLabel" Text="Mail :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtYorumMail" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblYorumIcerik" runat="server" CssClass="kategoriLabel" Text="İçerik :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtYorumIcerik" runat="server" Height="170px" TextMode="MultiLine" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblYorumYemek" runat="server" CssClass="kategoriLabel" Text="Yemek :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtYorumYemek" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnOnayla" runat="server" CssClass="btn" OnClick="btnOnayla_Click" Text="Onayla" />
            </td>
        </tr>
    </table>
</asp:Content>
