<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ekleGuncelle.aspx.cs" Inherits="AsılEticaret.admin.ekleGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        
            .adminkaydetguncellebuton {
              display: inline-block;
              -webkit-box-sizing: content-box;
              -moz-box-sizing: content-box;
              box-sizing: content-box;
              cursor: pointer;
              padding: 10px 20px;
              border: 1px solid #018dc4;
              -webkit-border-radius: 20px;
              border-radius: 20px;
              font: normal 16px/normal Georgia, serif;
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
       </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="buyuk-tab-kapsul">
         <ul class="buyuk-tab-icerik">

            <div class="listele">
                        <div class="labeltextbox">
                            <!--marka kısmı -->
                            <div class="label">
                                <asp:Label ID="Label2" runat="server" Text="Marka"></asp:Label>
                            </div>

                            <div class="textbox">
                                <asp:TextBox ID="textMarka" CssClass="sildekitextboxlar" runat="server"></asp:TextBox>
                            </div>

                            <!--model kısmı -->
                            <div class="label">
                                <asp:Label ID="Label3" runat="server" Text="Model"></asp:Label>
                            </div>

                            <div class="textbox">
                                <asp:TextBox ID="textModel"  CssClass="sildekitextboxlar" runat="server"></asp:TextBox>
                            </div>

                            <!--işlemci kısmı -->
                            <div class="label">
                                <asp:Label ID="Label4" runat="server" Text="İşlemci"></asp:Label>                             
                            </div>

                            <div class="textbox">
                                <asp:TextBox ID="textİslemci"  CssClass="sildekitextboxlar" runat="server"></asp:TextBox>
                            </div>

                            <!--işlemci hızı kısmı -->
                            <div class="label">
                                <asp:Label ID="Label5" runat="server" Text="İşlemci hızı"></asp:Label>                             
                            </div>

                            <div class="textbox">
                                <asp:TextBox ID="textİslemcihizi"  CssClass="sildekitextboxlar" runat="server"></asp:TextBox>
                            </div>

                            <!--ram kısmı -->
                            <div class="label">
                                <asp:Label ID="Label6" runat="server" Text="Ram"></asp:Label>                             
                            </div>

                            <div class="textbox">
                                <asp:TextBox ID="textRam"  CssClass="sildekitextboxlar" runat="server"></asp:TextBox>
                            </div>

                            <!--önbellek kısmı -->
                            <div class="label">
                                <asp:Label ID="Label7" runat="server" Text="Ön Bellek"></asp:Label>                             
                            </div>

                            <div class="textbox">
                                <asp:TextBox ID="textcache"  CssClass="sildekitextboxlar" runat="server"></asp:TextBox>
                            </div>

                            <!--ekran kartı kısmı -->
                            <div class="label">
                                <asp:Label ID="Label8" runat="server" Text="Ekran Kartı"></asp:Label>                             
                            </div>

                            <div class="textbox">
                                <asp:TextBox ID="textE_karti"  CssClass="sildekitextboxlar" runat="server"></asp:TextBox>
                            </div>

                            <!--ekran kartı boyutu kısmı -->
                            <div class="label">
                                <asp:Label ID="Label9" runat="server" Text="Ekran Kartı Boyutu"></asp:Label>                             
                            </div>

                            <div class="textbox">
                                <asp:TextBox ID="textE_karti_kapasitesi"  CssClass="sildekitextboxlar" runat="server"></asp:TextBox>
                            </div>

                            <!--Hdd kısmı -->
                            <div class="label">
                                <asp:Label ID="Label10" runat="server" Text="Harddisk Boyutu"></asp:Label>                             
                            </div>

                            <div class="textbox">
                                <asp:TextBox ID="textHdd"  CssClass="sildekitextboxlar" runat="server"></asp:TextBox>
                            </div>

                            <!--ekran boyutu kısmı -->
                            <div class="label">
                                <asp:Label ID="Label11" runat="server" Text="Ekran Boyutu"></asp:Label>                             
                            </div>

                            <div class="textbox">
                                <asp:TextBox ID="textEkran_boyutu"  CssClass="sildekitextboxlar" runat="server"></asp:TextBox>
                            </div>

                            <!--fiyatı kısmı -->
                           <div class="label">
                                <asp:Label ID="Label12" runat="server" Text="Fiyatı"></asp:Label>                             
                            </div>

                            <div class="textbox">
                                <asp:TextBox ID="textFiyati"  CssClass="sildekitextboxlar" runat="server"></asp:TextBox>
                            </div>

                            <!--görüntü kısmı -->
                           <div class="label">
                                <asp:Label ID="resimadi" runat="server" Text="Görüntü"></asp:Label>                             
                            </div>

                            <div class="textbox">
                                <asp:FileUpload ID="fuResim" runat="server" />   
                            </div>


                            <!--resim görüntüleme -->
                            <div class="label">
                                <asp:Label ID="Label1" runat="server" Text="Görüntü"></asp:Label>                             
                            </div>
                            <asp:Image ID="Image1" runat="server" Width="100px" Height="100px"/>
                            <div class="textbox">
                                  
                                <asp:Button ID="Button2" CssClass="adminkaydetguncellebuton" runat="server" Text="Güncelle" OnClick="Button2_Click" />  
                                  
                            </div>

                            <!--Ekle ve güncelle -->
                            <div class="label" >
                                <asp:Button ID="Ekle" CssClass="adminkaydetguncellebuton" OnClick="Ekle_Click" runat="server"  Text="Kaydet" />     
                            </div>

                            <div class="textbox" >
                            </div>

                        </div>

                        <div class="label">
                           <asp:Label ID="Label13" runat="server" Text="Güncellenecek Ürün ID" CssClass="label"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server" Width="100px" AutoPostBack="True" ></asp:DropDownList>
                           
                        </div>

                    </div>

        </ul>
    </div>

</asp:Content>
