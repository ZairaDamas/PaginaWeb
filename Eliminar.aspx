<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="Proyecto1.Eliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="Scripts/swalert.js"></script>
    <script src="Scripts/Valida_Solo_Numeros.js"></script>
    <script src="Scripts/ValidaSoloLetras.js"></script>

    <script type="text/javascript">
  
        function alert_error_idcontacto() {
            Swal.fire({
                showCloseButton: true,
                icon: 'error',
                title: 'Error.',
                html: $('<div>')
                    .addClass('some-class')
                    .text('El Id del Contacto no debe de estar vacio.'),             
                animation: false,
                customClass: 'animated tada'
            })
        }

        function alert_registro_no_encontrado() {
            Swal.fire({
                icon: 'info',
                title: 'Información.',
                text: 'Contacto no Registrado.',
            })
        }
 
        function alert_registro_actualizado() {
            Swal.fire({
                icon: 'success',
                title: 'Correcto.',
                text: 'El Contacto ha sido actualizado correctamente.',
            })
        }

    </script>

    <style>

        input[type=text], select {
            width: 70%;
            padding: 8px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-sizing: border-box;
        }

        input[type=text]:focus {
            background-color: #C0F0D6;
        }

        input[type=submit] {
            background-color: #73BAEC ;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            float: none;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        .auto-style1 {
            text-align: right;
            height: 50px;
            width: 207px;
        }

        .auto-style4 {
            width: 58%;
        }

        .auto-style7 {
            text-align: center;
            height: 100px;
        }
        
        .auto-style8 {
            text-align: right;
            width: 207px;
        }
        .auto-style9 {
            width: 237px;
            text-align: center;
        }
        .auto-style10 {
            text-align: center;
            width: 161px;
        }
        
    </style>

    <table class="auto-style4" align="center">
        <tr>
            <td style="font-family: Arial; font-size: 24px; color: #0000FF; " class="auto-style7" colspan="3"><strong>Eliminación de Contactos</strong></td>
        </tr>
       
        <tr>
            <td style="background-color: #99CCFF; font-size: large; " class="auto-style1">ID del Contacto:</td>
            <td class="auto-style9" style="background-color: #99CCFF; ">
                <asp:TextBox ID="txt_id" runat="server" Font-Size="Large" onkeypress="javascript:return SoloNumeros(event)" MaxLength="4"></asp:TextBox>
            </td>
            <td class="auto-style10" style="background-color: #99CCFF; ">                
                <asp:Button ID="btn_consultar" runat="server" Text="Consultar" Width="130px" OnClick="btn_consultar_Click" />              
            </td>
        </tr>

        <tr>
            <td style="background-color: #99CCFF; font-size: large; " class="auto-style8">Nombre del Contacto:</td>
            <td class="auto-style9" style="background-color: #99CCFF; ">
                <asp:TextBox ID="txt_nombre" runat="server" Font-Size="Large" TabIndex="1" MaxLength="50" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style10" style="background-color: #99CCFF; ">
                
                <asp:Button ID="btn_eliminar" runat="server" OnClick="btn_eliminar_Click" Text="Eliminar" Width="130px" />
            </td>
         </tr>
         
        <tr>
             <td style="background-color: #99CCFF; font-size: large; " class="auto-style8">Dirección del Contacto:</td>
             <td class="auto-style9" style="background-color: #99CCFF; ">
                <asp:TextBox ID="txt_direccion" runat="server" Font-Size="Large" TabIndex="2" MaxLength="80" Enabled="False"></asp:TextBox>
            </td>
             <td class="auto-style10" style="background-color: #99CCFF; ">
                 <asp:Button ID="btn_cancelar" runat="server" OnClick="btn_cancelar_Click" Text="Cancelar" Width="130px" />
             </td>
         </tr>

         <tr>
             <td style="background-color: #99CCFF; font-size: large; " class="auto-style1">Teléfono del Contacto:</td>
             <td class="auto-style9" style="background-color: #99CCFF; ">
                <asp:TextBox ID="txt_telefono" runat="server" Font-Size="Large" TabIndex="3" MaxLength="10" Enabled="False"></asp:TextBox>
             </td>
             <td class="auto-style10" style="background-color: #99CCFF; ">
                 &nbsp;</td>
         </tr>
     </table>

</asp:Content>
