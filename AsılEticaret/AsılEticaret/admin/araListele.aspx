<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="araListele.aspx.cs" Inherits="AsılEticaret.admin.araListele" %>
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

        <div class="aramabolumu">

                        <div class="kutu">
                            <asp:TextBox ID="aratext" CssClass="aratextbox" runat="server" Height="13px" Width="200px"  ></asp:TextBox>
                        </div>
                        
                        <div class="dugme">
                            <asp:Button ID="ara" CssClass="adminkaydetguncellebuton" OnClick="ara_Click" runat="server" Text="ARA" />
                        </div>
        </div>

                    <div class="listele">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Size="10px"></asp:Label>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pc_id"  ForeColor="#333333" GridLines="None" Width="100%">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>                               
                                <asp:BoundField DataField="pc_id" HeaderText="pc_id" ReadOnly="True" SortExpression="pc_id" />
                                <asp:BoundField DataField="marka" HeaderText="marka" SortExpression="marka" />
                                <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                                <asp:BoundField DataField="islemci" HeaderText="islemci" SortExpression="islemci" />
                                <asp:BoundField DataField="islemci_hizi" HeaderText="islemci_hizi" SortExpression="islemci_hizi" />
                                <asp:BoundField DataField="ram" HeaderText="ram" SortExpression="ram" />
                                <asp:BoundField DataField="onbellek" HeaderText="onbellek" SortExpression="onbellek" />
                                <asp:BoundField DataField="e_karti" HeaderText="e_karti" SortExpression="e_karti" />
                                <asp:BoundField DataField="e_k_boyutu" HeaderText="e_k_boyutu" SortExpression="e_k_boyutu" />
                                <asp:BoundField DataField="hdd" HeaderText="hdd" SortExpression="hdd" />
                                <asp:BoundField DataField="ekran_boyutu" HeaderText="ekran_boyutu" SortExpression="ekran_boyutu" />
                                <asp:BoundField DataField="fiyati" HeaderText="fiyati" SortExpression="fiyati" />
                                <asp:ImageField DataImageUrlFormatString="~\Resimler\{0}" ControlStyle-Width="50" ControlStyle-Height="50" DataImageUrlField="goruntu" HeaderText="goruntu" SortExpression="goruntu" >
<ControlStyle Height="50px" Width="50px"></ControlStyle>
                                </asp:ImageField>
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>                        
                    </div>

    </ul>

    </div>


</asp:Content>
