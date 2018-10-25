<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitOl.aspx.cs" Inherits="AsılEticaret.KayıtOl.kayitOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="kayitcss.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="login">
        
        <asp:TextBox ID="TextK_adi" placeholder="Kullanıcı adı" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextK_sifre" placeholder="Şifre" runat="server"></asp:TextBox>  
            <asp:TextBox ID="TextAdi" placeholder="Adı" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextSoyadi" placeholder="Soyadı" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextMail" placeholder="Mail adresi" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextTelno" placeholder="Tel No" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextAdres" placeholder="Adres" runat="server"></asp:TextBox>
            <asp:Button ID="Kaydet" OnClick="Kaydet_Click" runat="server" Text="Kaydet" />
            <asp:Button ID="giriseDon" OnClick="giriseDon_Click" runat="server" Text="Girişe Dön" />
    </div>

    <div class="shadow"></div>
    
    </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
