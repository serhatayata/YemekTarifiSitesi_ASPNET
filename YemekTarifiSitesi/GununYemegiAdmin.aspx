<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifiSitesi.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .tableUzunluk {
            width: 589px;
        }
        .solaYasla {
            float:left;
            padding-left:50px;
        }
        .sagaYasla {
            float:right;
            margin-right:40px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<asp:Panel ID="Panel1" runat="server">
        <table class="">
            <tr>
                <td colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnEkle" runat="server"  Text="+" CssClass="btn" OnClick="btnEkle_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCikar" runat="server" CssClass="btn" Text="-" OnClick="btnCikar_Click" />
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
                <table class="tableUzunluk">
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
                            <asp:Label ID="lblYemekAd" runat="server" CssClass="kategoriLabel solaYasla" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td colspan="2">
                             <a href="YemeklerDuzenle.aspx?YemekID=<%#Eval("YemekID")%>">
                            <asp:Image ID="Image2" runat="server" Height="30px" CssClass="sagaYasla" ImageUrl="~/icons/CheckICON.png" Width="30px" />
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
