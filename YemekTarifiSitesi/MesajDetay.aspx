<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifiSitesi.MesajDetay" %>
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
                <asp:Label ID="lblMesajGonderen" runat="server" CssClass="kategoriLabel" Text="Mesaj Gönderen :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMesajGonderen" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMesajBaslik" runat="server" CssClass="kategoriLabel" Text="Başlık :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMesajBaslik" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMesajMail" runat="server" CssClass="kategoriLabel" Text="Mail :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMesajMail" runat="server" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMesajIcerik" runat="server" CssClass="kategoriLabel" Text="İçerik :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMesajIcerik" runat="server" Height="170px" TextMode="MultiLine" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
