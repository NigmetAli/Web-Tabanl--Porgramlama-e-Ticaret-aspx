<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="AsılEticaret.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="giriscss.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="login">
        
        <asp:TextBox ID="textkul"   placeholder="Kullanıcı adı" runat="server"></asp:TextBox>
        <asp:TextBox ID="textsif" TextMode="Password" placeholder="Şifre" runat="server"></asp:TextBox>  
        
        <a href="/KayıtOl/kayitOl.aspx" class="kaydol">Kayıt Ol</a>
        <a href="#" class="forgot">Şifremi Unuttum</a>

        <asp:Button ID="Button1" runat="server" OnClick="uyeGiris_Click" Text="KULLANICI GİRİŞİ" />
        <asp:Button ID="Button2" runat="server" OnClick="yoneticigiris_Click" Text="YÖNETİCİ GİRİŞİ" />

</div>

<div class="shadow"></div>
    </div>
    </form>
</body>
</html>
