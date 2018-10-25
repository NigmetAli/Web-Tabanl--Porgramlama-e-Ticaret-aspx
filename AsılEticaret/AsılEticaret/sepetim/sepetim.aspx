<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="sepetim.aspx.cs" Inherits="AsılEticaret.sepetim.sepetim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css" >
        .cerceve {
            padding:10px 10px 0 10px;
            width:100%;
            height:120px;
        }
        .resim {
            float:left;
            width:100px;
            height:100px;
        }
        .ozellik {
            font-family:Georgia;
            color:black;            
            float:left;
            margin-left:10px;
            text-align:left;
            width:750px;
            height:20px;
            margin-top:45px;
        }
        .cikar {
            float:left;
            width:50px;
            height:20px;
            margin-top:45px;
            text-align:left;
        }
        .toplamFiyat {
            width:100%;
            height:30px;
            float:right;
            margin-right:100px;
            margin-top:10px;
            text-align:right;
        }
            .toplamFiyat .tamamla {
                width:100px;
                height:20px;
                float:left;
                
                margin-left:170px;
                display: inline-block;
              
            }
        .btntamamla {
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

        .adetinyeri {
            width:10px;
            float:right;
            margin-right:50px;
        }
        .fiyatinyeri {
            width:auto;
            float:right;
            margin-right:30px;

        }

        .sepetyok {
            float:left;
            margin:auto;
            text-align:center;
            font-size:35px;
            font-family:Georgia;
            font-weight:bold;
            height:auto;
        }

        .adetfiyatozellik {
            width:100%;
            height:20px;
            margin-bottom:10px;
            float:left;

        }
        
            .adetfiyatozellik .enusturunoz {
            float:left;
            height:20px;
            width:610px;
            font-family:Georgia;
            font-size:20px;
            margin-left:120px;
            
        }

            .adetfiyatozellik .enustadetadi {
                float:left;
                width:70px;
                height:20px;
                font-family:Georgia;
                font-size:20px;
                


            }

            .adetfiyatozellik .enustfiyatadi {
                float:left;
                width:70px;
                height:20px;
                
                font-family:Georgia;
                font-size:20px;
            }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="anne">
        <div class="adetfiyatozellik">
                        <div class="enusturunoz">
                            <asp:Label ID="lblurunoz" runat="server" Text="Ürün Özellikleri" Visible="False"></asp:Label>
                        </div>
                        <div class="enustadetadi">
                            <asp:Label ID="lblurunadet" runat="server" Text="Adet" Visible="False"></asp:Label>
                        </div>
                        <div class="enustfiyatadi">
                            <asp:Label ID="lblurunfiyat" runat="server" Text="Fiyat"></asp:Label>
                        </div>
                    </div>
        <asp:DataList ID="sepettekiler" runat="server" border-radius="10px" CellPadding="4" ForeColor="#333333" Width="100%"  >
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#E3EAEB" />
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <ItemTemplate>
                <div class="cerceve">

                    
                
                    <div class="resim">
                        
                            <img src="/Resimler/<%# DataBinder.Eval(Container.DataItem,"goruntu") %>" width="100px" height="100px" />
                        
                    </div>


                    
                    <div class="ozellik">
                        <asp:Label ID="markaLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"marka") %>' />
                        <asp:Label ID="modelLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"model") %>' />
                        <asp:Label ID="islemciLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"islemci") %>' />
                        <asp:Label ID="islemci_hiziLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"islemci_hizi") %>' />
                        <asp:Label ID="ramLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ram") %>' />
                        <asp:Label ID="onbellekLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"onbellek") %>' />
                        <asp:Label ID="e_kartiLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"e_karti") %>' />
                        <asp:Label ID="e_k_boyutuLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"e_k_boyutu") %>' />
                        <asp:Label ID="hddLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"hdd") %>' />
                        <asp:Label ID="ekran_boyutuLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ekran_boyutu") %>' />

                        <div class="fiyatinyeri">
                            <asp:Label ID="fiyatiLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"fiyati")+" ₺" %>' />
                        </div>
                        <div class="adetinyeri">
                            <asp:Label ID="adetLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"adet") %>' />
                        </div>
                        
                    </div>

                    <div class="cikar">
                        <a href="/sepetim/sepetim.aspx?sil=<%#Eval("sepet_id")%>&islem=sil">Çıkar</a>
                    </div>
                       
               </div>
                
            </ItemTemplate>
        </asp:DataList>
        <asp:Label ID="Label3" CssClass="sepetyok" runat="server" Text="Label" Visible="False"></asp:Label>
        <div class="toplamFiyat">

            <div class="tamamla">

                <asp:Button ID="Button1" CssClass="btntamamla" runat="server" Text="Alışverişi Tamamla" OnClick="Button1_Click" />

            </div>

            <asp:Label ID="Label1" Font-Bold="true" Font-Size="20px" ForeColor="Black" runat="server" Text="Toplam Fiyat : "></asp:Label>
            <asp:Label ID="lblToplamFiyat"  ForeColor="Black" Font-Bold="true" Font-Size="15px" runat="server"></asp:Label>
            <asp:Label ID="Label2" Font-Bold="true" Font-Size="15px" ForeColor="Black"   runat="server" Text="₺"></asp:Label>

        </div>
        
    </div>

</asp:Content>
