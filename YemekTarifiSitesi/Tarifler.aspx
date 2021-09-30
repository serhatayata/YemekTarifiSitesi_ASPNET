<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifiSitesi.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
     .tableGenis {
         width:589px;
     }
     .sagaYasla {
         float:right;
         margin-right:50px;
     }
     .solaYasla{
         float:left;
         padding-left:50px;
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
                        <asp:Button ID="btnOnaysizEkle" runat="server" CssClass="btn"  Text="+" OnClick="btnOnaysizEkle_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnOnaysizCikart" runat="server" CssClass="btn"  Text="-" OnClick="btnOnaysizCikart_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ONAYSIZ TARİF LİSTESİ</td>
                </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            </table>
     </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
                        <asp:DataList ID="DataList2" runat="server" Width="582px">
                            <ItemTemplate>
                                <table class="tableGenis">
                                    <tr>
                                        <td class="kategoriWidth">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="kategoriWidth">
                                            <asp:Label ID="Label2" runat="server" CssClass="kategoriLabel solaYasla" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <a href="TarifOnerDetay.aspx?TarifID=<%#Eval("TarifID")%>">
                                            <asp:Image ID="Image3" runat="server" Height="29px" CssClass="sagaYasla" ImageUrl="~/icons/AdviceICON.png" Width="45px" />
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
    <asp:Panel ID="Panel3" runat="server">
            <table class=""> 
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" CssClass="btn"  Text="+" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" CssClass="btn"  Text="-" OnClick="Button2_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ONAYLI TARİF LİSTESİ</td>
                </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            </table>
     </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
                        <asp:DataList ID="DataList1" runat="server" Width="582px">
                            <ItemTemplate>
                                <table class="tableGenis">
                                    <tr>
                                        <td class="kategoriWidth">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="kategoriWidth">
                                            <asp:Label ID="Label2" runat="server" CssClass="kategoriLabel solaYasla" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <a href="TarifOnerDetay.aspx?TarifID=<%#Eval("TarifID")%>">
                                            <asp:Image ID="Image3" runat="server" Height="29px" CssClass="sagaYasla" ImageUrl="~/icons/AdviceICON.png" Width="45px" />
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
