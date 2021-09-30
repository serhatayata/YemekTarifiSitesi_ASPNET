<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSitesi.Yorumlar" %>
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
            .bosluk1 {
                width: 355px;
                height: 20px;
            }
            .bosluk2 {
                height: 20px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
            <table class=""> 
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnOnaylananEkle" runat="server" CssClass="btn" Text="+" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnOnaylananCikart" runat="server" CssClass="btn" Text="-" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ONAYLANAN LİSTESİ</td>
                </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            </table>
     </asp:Panel>
                  <asp:Panel ID="Panel2" runat="server">
                        <asp:DataList ID="DataList1" runat="server" Width="582px">
                            <ItemTemplate>
                                <table class="">
                                    <tr>
                                        <td class="bosluk1"></td>
                                        <td class="bosluk2"></td>
                                        <td class="bosluk2"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label2" runat="server" CssClass="kategoriLabel" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                            &nbsp;</td>
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
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnOnaylanmayanEkle" runat="server"  Text="+"  CssClass="btn" OnClick="btnOnaylanmayanEkle_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnOnaylanmayanCikart" runat="server" CssClass="btn"  Text="-" OnClick="btnOnaylanmayanCikart_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;ONAYLANMAYAN LİSTESİ</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            </table>
     </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
                        <asp:DataList ID="DataList2" runat="server" Width="582px">
                            <ItemTemplate>
                                <table class="">
                                    <tr>
                                        <td class="kategoriWidth">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="kategoriWidth">
                                            <asp:Label ID="Label2" runat="server" CssClass="kategoriLabel" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <a href='YorumDetay.aspx?YorumID=<%#Eval("YorumID")%>'>
                                            <asp:Image ID="Image3" runat="server" Height="29px" ImageUrl="~/icons/Update_ICON.png" Width="45px" />
                                            </a>
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
    </asp:Content>
