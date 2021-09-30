<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifiSitesi.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style/style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    .auto-style2 {
        height: 20px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="yemekDetayTable">
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTarifAd" runat="server" Text="Tarif Ad :" CssClass="kategoriLabel"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTarifAd" runat="server" Width="318px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTarifMalzemeler" runat="server" Text="Malzemeler :" CssClass="kategoriLabel"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTarifMalzemeler" runat="server" Width="318px" Height="150px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTarifYapilis" runat="server" Text="Yapılış :" CssClass="kategoriLabel"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtYapilis" runat="server" Width="318px" Height="160px" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:Label ID="lblTarifResim" runat="server" CssClass="kategoriLabel" Text="Resim :"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="318px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblTarifOneren" runat="server" CssClass="kategoriLabel" Text="Tarif Öneren :"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtOneren" runat="server" Width="318px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTarifOnerenMail" runat="server" CssClass="kategoriLabel" Text="Öneren Mail :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtOnerenMail" runat="server" Width="318px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblKategori" runat="server" CssClass="kategoriLabel" Text="Kategori :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="318px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblYorumEklendi" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnOnayla" runat="server" style="height: 35px" Text="Onayla" Width="129px" OnClick="btnOnayla_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
