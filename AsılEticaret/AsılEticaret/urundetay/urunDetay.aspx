<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="urunDetay.aspx.cs" Inherits="AsılEticaret.urundetay.urunDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            float: left;
            border: 1px solid #000000;
        }
        .auto-style4 {
            width: 254px;
        }
        .auto-style5 {
            width: 100%;
            float: left;
            border: 1px solid #000000;
            margin-top:50px;
            margin-bottom:20px;
        }
        .auto-style6 {
            width: 402px;
        }
        .auto-style7 {
            width: 402px;
            height: 15px;
        }
        .auto-style8 {
            height: 15px;
        }
        .auto-style9 {
            width: 78px;
        }
        .sepeteeklebuton {
  display: inline-block;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  cursor: pointer;
  padding: 10px 20px;
  border: 1px solid #018dc4;
  -webkit-border-radius: 33px 3px;
  border-radius: 33px 3px;
  font: normal 16px/normal "Times New Roman", Times, serif;
  color: rgba(255,255,255,0.9);
  -o-text-overflow: clip;
  text-overflow: clip;
  background: #296843;
  -webkit-box-shadow: 2px 2px 2px 0 rgba(0,0,0,0.2) ;
  box-shadow: 2px 2px 2px 0 rgba(0,0,0,0.2) ;
  text-shadow: -1px -1px 0 rgba(15,73,168,0.66) ;
  -webkit-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
}

.sepeteeklebuton:hover {
  -webkit-border-radius: 33px 0;
  border-radius: 33px 0;
  font: normal 16px/normal Georgia, serif;
  background: #037231;
}

        .auto-style10 {
            width: 137px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="anne">


        
        <table align="center" cellpadding="0" cellspacing="0" class="auto-style3">
            <tr>
                <td class="auto-style4" rowspan="7">
                    
                    <asp:Image ID="Image1" runat="server" Height="400px" Width="400px" />
                    
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    Fiyatı</td>
                <td>
                    <asp:Label ID="labelfiyat" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    Ürün Adet</td>
                <td>
                    <asp:TextBox ID="textAdet" runat="server" Height="31px" Width="45px" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="sepeteEkle" CssClass="sepeteeklebuton" runat="server" Text="Sepete Ekle" Height="27px" Width="100px" OnClick="sepeteEkle_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server">
                        <a href="../kullanici/kullaniciSayfa.aspx">Alışverişe Devam et--></a></asp:LinkButton>
                </td>
            </tr>
        </table>


        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />


        <div >
        <table align="left" cellpadding="0" cellspacing="0"  class="auto-style5" style="font-family: Georgia, 'Times New Roman', Times, serif; color: #296843; font-size: 18px;">
            <tr>
                <td class="auto-style6">Marka</td>
                <td>
                    <asp:Label ID="lblmarka" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Model</td>
                <td>
                    <asp:Label ID="lblmodel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">İşlemci</td>
                <td>
                    <asp:Label ID="lblislemci" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">İşlemci Hızı</td>
                <td class="auto-style8">
                    <asp:Label ID="lblislemcihizi" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Ram</td>
                <td>
                    <asp:Label ID="lblram" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Ön Bellek</td>
                <td>
                    <asp:Label ID="lblonbellek" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Ekran Kartı</td>
                <td>
                    <asp:Label ID="lblekrankarti" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Ekran Kartı Hafızası</td>
                <td>
                    <asp:Label ID="lblekrankartiboyut" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Hardisk Kapasitesi</td>
                <td>
                    <asp:Label ID="lblhdd" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Ekran Boyutu (inç)</td>
                <td>
                    <asp:Label ID="lblekranboyutu" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
            </div>

        
    </div>



</asp:Content>
