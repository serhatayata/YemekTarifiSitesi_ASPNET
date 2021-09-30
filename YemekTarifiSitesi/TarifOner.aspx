<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSitesi.TarifOner1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="style/style.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tarifOnerTable">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTarifAd" CssClass="TarifOnerLabel" runat="server" Font-Bold="True" Text="Tarif Ad:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMalzemeler" CssClass="TarifOnerLabel" runat="server" Font-Bold="True" Text="Malzemeler : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server" Height="87px" TextMode="MultiLine" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblYapilis" CssClass="TarifOnerLabel" runat="server" Font-Bold="True" Text="Yapılış :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtYapilis" runat="server" Height="170px" TextMode="MultiLine" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblResim" CssClass="TarifOnerLabel" runat="server" Font-Bold="True" Text="Resim :"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fileUploadResim" runat="server" Width="350px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTarifOneren" CssClass="TarifOnerLabel" runat="server" Font-Bold="True" Text="Tarifi Öneren :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTarifOneren" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMail" CssClass="TarifOnerLabel" runat="server" Font-Bold="True" Text="Mail :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnTarifOner" runat="server" Text="Tarif Öner" Width="109px" BackColor="Blue" BorderColor="Black" ForeColor="White" Height="37px" OnClick="btnTarifOner_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
