<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="adminSil.aspx.cs" Inherits="AsılEticaret.admin.adminSil" %>
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
        <div class="buyuk-tab-icerik">
            
            
       
            <asp:GridView ID="GridView1" RowStyle-Height="30px" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pc_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HeaderStyle-BackColor="#1CF0F0" HeaderStyle-HorizontalAlign="NotSet" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="pc_id" HeaderText="pc_id" InsertVisible="False" ReadOnly="True" SortExpression="pc_id" />
                    
                    <asp:BoundField DataField="marka" HeaderText="marka" SortExpression="marka"  />
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
                     <asp:ImageField DataImageUrlFormatString="~\Resimler\{0}" ControlStyle-Width="50" ControlStyle-Height="50" DataImageUrlField="goruntu" HeaderText="goruntu" SortExpression="goruntu" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pcConnectionString %>" DeleteCommand="DELETE FROM [pc] WHERE [pc_id] = @pc_id" InsertCommand="INSERT INTO [pc] ([marka], [model], [islemci], [islemci_hizi], [ram], [onbellek], [e_karti], [e_k_boyutu], [hdd], [ekran_boyutu], [fiyati], [goruntu]) VALUES (@marka, @model, @islemci, @islemci_hizi, @ram, @onbellek, @e_karti, @e_k_boyutu, @hdd, @ekran_boyutu, @fiyati, @goruntu)" SelectCommand="SELECT * FROM [pc]" UpdateCommand="UPDATE [pc] SET [marka] = @marka, [model] = @model, [islemci] = @islemci, [islemci_hizi] = @islemci_hizi, [ram] = @ram, [onbellek] = @onbellek, [e_karti] = @e_karti, [e_k_boyutu] = @e_k_boyutu, [hdd] = @hdd, [ekran_boyutu] = @ekran_boyutu, [fiyati] = @fiyati, [goruntu] = @goruntu WHERE [pc_id] = @pc_id">
                <DeleteParameters>
                    <asp:Parameter Name="pc_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="marka" Type="String" />
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="islemci" Type="String" />
                    <asp:Parameter Name="islemci_hizi" Type="String" />
                    <asp:Parameter Name="ram" Type="String" />
                    <asp:Parameter Name="onbellek" Type="String" />
                    <asp:Parameter Name="e_karti" Type="String" />
                    <asp:Parameter Name="e_k_boyutu" Type="String" />
                    <asp:Parameter Name="hdd" Type="String" />
                    <asp:Parameter Name="ekran_boyutu" Type="String" />
                    <asp:Parameter Name="fiyati" Type="String" />
                    <asp:Parameter Name="goruntu" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="marka" Type="String" />
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="islemci" Type="String" />
                    <asp:Parameter Name="islemci_hizi" Type="String" />
                    <asp:Parameter Name="ram" Type="String" />
                    <asp:Parameter Name="onbellek" Type="String" />
                    <asp:Parameter Name="e_karti" Type="String" />
                    <asp:Parameter Name="e_k_boyutu" Type="String" />
                    <asp:Parameter Name="hdd" Type="String" />
                    <asp:Parameter Name="ekran_boyutu" Type="String" />
                    <asp:Parameter Name="fiyati" Type="String" />
                    <asp:Parameter Name="goruntu" Type="String" />
                    <asp:Parameter Name="pc_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
          
             </div>
    </div>


</asp:Content>
