<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="Proyecto1.Reporte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <table class="auto-style15"  style="width: 732px; margin:auto; " align="center">
        <tr>
            <td style="font-family: Arial; font-size: 24px; color: #0000FF; height: 100px; width: 34px;" class="auto-style7"></td>
            <td style="font-family: 'Century Gothic'; font-size: xx-large; color: #800080; height: 100px; font-style: italic;" class="text-center">Contactos Registrados</td>
            <td style="font-family: Arial; font-size: 24px; color: #0000FF; height: 100px;" class="auto-style7"></td>
        </tr>

         <tr>
            <td class="text-center" style="background-color: #99CCFF; width: 34px; height: 20px;"></td>
            <td class="text-center" style="background-color: #99CCFF; height: 20px;">
                
                </td>
            <td class="text-center" style="background-color: #99CCFF; height: 20px;">
                
                </td>
        </tr>

         <tr>
            <td class="text-center" style="background-color: #99CCFF; width: 34px;">
                
                &nbsp;</td>
            <td class="text-center" style="background-color: #99CCFF; ">
                
                
                <asp:GridView ID="gv_all" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="font-family: 'Century Gothic'; font-size: medium; color: #000000" Width="675px">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                
                
            </td>
            <td class="text-center" style="background-color: #99CCFF; ">
                
                &nbsp;</td>
        </tr>

         <tr>
            <td class="text-center" style="background-color: #99CCFF; width: 34px;">
                
                &nbsp;</td>
            <td class="text-center" style="background-color: #99CCFF; ">
                
                &nbsp;</td>
            <td class="text-center" style="background-color: #99CCFF; ">
                
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
