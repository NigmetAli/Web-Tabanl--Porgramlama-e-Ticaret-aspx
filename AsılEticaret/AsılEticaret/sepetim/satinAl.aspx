<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="satinAl.aspx.cs" Inherits="AsılEticaret.sepetim.satinAl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" margin-bottom="25px" >
    <style type="text/css">
    .dis{
    margin-top:100px;
    margin:auto;  
    width:220px;
    margin-top:100px;
    margin-bottom:100px;
    }
        .textboxlar {           
            float:left;
            margin-top:5px;
            margin-bottom:5px;
           width:200px;
           height:20px;
           display: inline-block;
          -webkit-box-sizing: content-box;
          -moz-box-sizing: content-box;
          box-sizing: content-box;
          padding: 10px 20px;
          border: 1px solid #b7b7b7;
          -webkit-border-radius: 42px;
          border-radius: 42px;
          font: normal 16px/normal Georgia, serif;
          color: #296843;
          -o-text-overflow: clip;
          text-overflow: clip;
          -webkit-box-shadow: 2px 2px 2px 0 rgba(0,0,0,0.2) inset;
          box-shadow: 2px 2px 2px 0 rgba(0,0,0,0.2) inset;
          text-shadow: 1px 1px 0 rgba(255,255,255,0.66);
          -webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
          -moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
          -o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
          transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
        }
        .labeller {
            float:left;
            text-align:left;
            margin-top:5px;
            margin-bottom:5px;            
            font-weight:bold;
            width:100px;
        }
        .auto-style3 {
            width: auto;
            float: left;
            margin-left:28%;
            
            margin-top:30px;
           
        }
        .ddiv {
            width:100%;
            height:auto;
            margin-top:50px;
            
        }
        .musteri {
            margin-left:65px;
            text-align:center;
            font-weight:bolder;
        }
        .distablo {
            width:100%;
            height:auto;
            border:solid;
       }

        .satinAl {
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

        .baslik {
            width:100%;
            height:50px;
            text-align:center;
            margin:auto;            
            font-size:50px;
        }
    </style>
    

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div class="anne">

        <div class="baslik" >MÜŞTERİ BİLGİLERİ</div>

    <div class="ddiv">
       <table class="distablo">
           <tr>
               <td>
                   <table align="center" cellpadding="0" cellspacing="0" class="auto-style3">
                 </tr>
                        <tr>
                          <td class="auto-style5"><Label ID="lblAdi" runat="server"   class="labeller">Adı:</Label></td>
                
                          <td class="auto-style4"><asp:TextBox ID="txtAdi" align="right" runat="server" CssClass="textboxlar"></asp:TextBox></td>
                       </tr>
                    </tr>
                 <tr>
                <td class="auto-style5"><Label ID="lblSoyadi" runat="server"   class="labeller">Soyadı:</Label></td>
                <td class="auto-style4"><asp:TextBox ID="txtSoyadi" runat="server" CssClass="textboxlar"></asp:TextBox></td>
                </tr>
                <tr>
                <td class="auto-style5"><Label ID="lblMail" runat="server" class="labeller">e-Posta:</Label></td>
                <td class="auto-style4"><asp:TextBox ID="txtMail" runat="server" CssClass="textboxlar"></asp:TextBox></td>
                </tr>
                <tr>
                <td class="auto-style5"> <Label ID="lblCep" runat="server" class="labeller">Cep Telefonu:</Label></td>
                <td class="auto-style4"> <asp:TextBox ID="txtCep" runat="server" CssClass="textboxlar"></asp:TextBox></td>
                </tr>
                <tr>
                <td class="auto-style5"><Label ID="lblAdres" runat="server"  class="labeller">Adres:</Label></td>
                <td class="auto-style4"><asp:TextBox ID="txtAdres" runat="server" CssClass="textboxlar" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox></td>
                 </tr>
            
                 <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                 </tr>
            
                 <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" CssClass="satinAl" runat="server" Text="Satın Al" OnClick="Button1_Click" />
                     </td>
                 </tr>
             
                 <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3">
                    &nbsp;</td>
                    </tr>
          
                 </table>
                 </td>
               </tr>
       </table>
    </div>
        </div>
</asp:Content>

