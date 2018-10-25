<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="~/kullanici/kullaniciSayfa.aspx.cs" Inherits="AsılEticaret.kullanici.kullaniciSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="anne">
        <asp:DataList margin-left="10px" BorderStyle="None" RepeatColumns="6"  ID="DataList1" runat="server" ClientIDMode="AutoID" GridLines="Horizontal" RepeatDirection="Horizontal" CellPadding="0" AlternatingItemStyle-BorderWidth="0">
            
            <ItemTemplate>                
                 <table border="0" >
                    <tr>                        
                         <td>
                             <a href="../urundetay/urunDetay.aspx?detay=<%#Eval("pc_id") %>"><img src="/Resimler/<%#Eval("goruntu")%>" height="200px" width="150px"/></a>
                            
                         </td>                                                                 
                    </tr>
                     <tr align="center">
                          <td >                             
                           <%#Eval("marka")%>                        
                           <%#Eval("model")%>                                   
                        </td>    
                     </tr>
                     <tr>
                         <td align="center">
                             <%#Eval("fiyati")%>
                         </td>
                     </tr>
                      &nbsp;
            &nbsp;
            &nbsp;
            &nbsp; &nbsp;
            &nbsp;
            &nbsp;
            
                     &nbsp;
                </table>
            </ItemTemplate>        
             
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pcConnectionString %>"
             SelectCommand="SELECT * FROM [pc]" >   
            

      </asp:SqlDataSource>

    </div>

</asp:Content>
