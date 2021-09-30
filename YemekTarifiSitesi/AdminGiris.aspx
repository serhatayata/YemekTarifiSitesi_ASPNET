<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminGiris.aspx.cs" Inherits="YemekTarifiSitesi.AdminGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Giriş</title>
        <link href="style/style.css" rel="stylesheet" />
    <style type="text/css">
        .panelUzunluk{
            width:70%;
            margin-left:15%;
            margin-top:50px;
            height:auto;
        }
        .header {
            width:80%;
            margin-left:6%;
        }
        .adminItem {
             margin-bottom:20px;
             display:flex;
             justify-content:center;
             
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="149px" CssClass="header" ImageUrl="~/icons/Login.jpg"/>
    </asp:Panel>
    
        <asp:Panel ID="Panel2" runat="server" CssClass="panelUzunluk">
                    <div colspan="2">&nbsp;</div>
                <div class="adminItem">
                    <div>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblAdminAd" runat="server" CssClass="kategoriLabel solaYasla" Text="Admin Name :"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtAdminName" runat="server" Width="240px" CssClass="sagaYasla"></asp:TextBox>
                    </div>
                </div>
                <div  class="adminItem">
                    <div>
                        &nbsp;
                        <asp:Label ID="lblAdminSifre" runat="server" CssClass="kategoriLabel solaYasla" Text=" Admin Şifre :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <div>
                        <asp:TextBox ID="txtAdminSifre" runat="server" ValidationGroup="*" CssClass="sagaYasla" Width="240px"></asp:TextBox>
                    </div>
                </div>
              
                <div  class="adminItem">
                    <div>&nbsp;</div>
                    <div>
                        <asp:Button ID="btnGiris" runat="server" CssClass="btn" OnClick="btnGiris_Click" Text="Giriş Yap" />
                    </div>
                </div>
                <div  class="adminItem">
                    <div>&nbsp;</div>
                    <div>
                        <asp:Label ID="lblYanlisGiris" runat="server" CssClass="kategoriLabel" Text="Yanlış Giriş !"></asp:Label>
                    </div>
                </div>
        </asp:Panel>
    
    </form>
    
</body>
</html>
