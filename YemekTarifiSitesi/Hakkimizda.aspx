<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifiSitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" CssClass="HakkimizdaBaslik" Text="HAKKIMIZDA"></asp:Label>
    <div>

        <asp:DataList ID="DataList2" runat="server" CssClass="HakkimizdaIcerik" Width="554px">
            <ItemTemplate>
                <table class="hakkimizdaTable">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    &nbsp;</div>
    <div>
        <asp:Image ID="Image1" runat="server" Height="164px" ImageUrl="~/img/Hakkimizda_IMG.png" Width="557px" />
    </div>
</asp:Content>
