<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiSitesi.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style type="text/css">
.tableUzunluk {
    width: 559px;
}

.sagaYasla {
    float: right;
    margin-right:50px;
}

.solaYasla {
    float: left;
    padding-left: 50px;
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
                        <asp:Button ID="btnOnaylananEkle" runat="server" CssClass="btn"  Text="+" OnClick="btnOnaylananEkle_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnOnaylananCikart" runat="server" CssClass="btn"  Text="-" OnClick="btnOnaylananCikart_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; MESAJ LİSTESİ</td>
                </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            </table>
     </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
                        <asp:DataList ID="DataList2" runat="server" Width="582px">
                            <ItemTemplate>
                                <table class="tableUzunluk">
                                    <tr>
                                        <td class="kategoriWidth">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="kategoriWidth">
                                            <asp:Label ID="Label2" runat="server" CssClass="kategoriLabel solaYasla" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <a href="MesajDetay.aspx?MesajID=<%#Eval("MesajID")%>">
                                            <asp:Image ID="Image3" runat="server" Height="29px" CssClass="sagaYasla" ImageUrl="~/icons/EditICON.png" Width="45px" /></a>
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
