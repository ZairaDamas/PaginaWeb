<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="Proyecto1.Modificar" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <script src="Scripts/swalert.js"></script>
    <script src="Scripts/Valida_Solo_Numeros.js"></script>
    <script src="Scripts/ValidaSoloLetras.js"></script>

    <script type="text/javascript">
        
        function alert_error_idusuario() {
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
                showClass: {
                    popup: 'animate__animated animate__fadeInDown'
                },
                hideClass: {
                    popup: 'animate__animated animate__fadeOutUp'
                }
            })
        }
         function alert_registro_eliminado() {
            Swal.fire({
                icon: 'success',
                title: 'Eliminado.',
                text: 'El Contacto se ha eliminado.',
                showClass: {
                    popup: 'animate__animated animate__fadeInDown'
                },
                hideClass: {
                    popup: 'animate__animated animate__fadeOutUp'
                }
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
            width: 202px;
        }

        .auto-style7 {
            text-align: center;
            height: 124px;
            font-family: "Century Gothic";
            font-style: italic;
            font-size: xx-large;
            color: purple;
        }
       
        .auto-style10 {
            width: 202px;
            text-align: right;
        }

        .auto-style12 {
            text-align: center;
            height: 49px;
            width: 158px;
        }

        .auto-style13 {
            text-align: center;
            height: 50px;
            width: 158px;
        }
   
        .auto-style14 {
            width: 228px;
            text-align: center;
        }
        .auto-style15 {
            width: 646px;
            font-family: "Century Gothic";
            height: 401px;
            font-size: small;
        }
   
        .auto-style16 {
            width: 202px;
            text-align: right;
            height: 50px;
        }
        .auto-style17 {
            width: 228px;
            text-align: center;
            height: 50px;
        }
   
        .auto-style18 {
            width: 505px;
            font-family: "Century Gothic";
            height: 401px;
            font-size: small;
            margin-right: 44px;
        }
   
        .auto-style19 {
            width: 689px;
            height: 392px;
            position: absolute;
            left: 543px;
            top: 85px;
            z-index: -2;
        }
   
        .auto-style20 {
            width: 191px;
        }
        .auto-style21 {
            width: 202px;
            text-align: right;
            font-size: large;
        }
   
        .auto-style22 {
            width: 505px;
        }
   
    </style>

        <table class="auto-style15" style= "text-align:center; margin: initial;">
            <tr>
                <td class="auto-style22">
    
        <table  class="auto-style18" style= " margin-left: 20px; margin-top: auto; margin-bottom: auto; text-align:left; z-index: 1031;">
        <tr>
            <td class="auto-style7" colspan="3">
                <br />
                Editar información del contacto</td>
        </tr>
       
        <tr>
            <td style="background-color: rgba(151, 83, 228, 0.55); font-size: large; " class="auto-style10">Usuario:</td>
            <td class="auto-style14" style="background-color: rgba(151, 83, 228, 0.55);  ">

                <asp:TextBox ID="txt_usuario1" runat="server" Font-Size="Large"  MaxLength="15" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style12" style="background-color: rgba(151, 83, 228, 0.55); ">
                
                <asp:Button ID="Button1" runat="server" Text="Buscar"  OnClick="btn_consultar_Click" Width="125px" />

                
            </td>
        </tr>
        <tr>
            <td style="background-color: rgba(151, 83, 228, 0.55); font-size: large; " class="auto-style10">Nombre:</td>
            <td class="auto-style14" style="background-color: rgba(151, 83, 228, 0.55); ">
                <asp:TextBox ID="txt_nombre" runat="server" Font-Size="Large" TabIndex="1" MaxLength="50" Enabled="False" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style13" style="background-color: rgba(151, 83, 228, 0.55); ">
                
                <asp:Button ID="btn_editar" runat="server" Text="Modiicar" OnClick="btn_editar_Click" Width="130px" />
                
            </td>
         </tr>
         <tr>
             <td style="background-color: rgba(151, 83, 228, 0.55); " class="auto-style21">Apellido</td>
             <td class="auto-style14" style="background-color: rgba(151, 83, 228, 0.55); ">
                <asp:TextBox ID="txt_apellido" runat="server" Font-Size="Large" TabIndex="2" MaxLength="80" Enabled="False" Width="200px"></asp:TextBox>
            </td>
             <td class="auto-style13" style="background-color: rgba(151, 83, 228, 0.55); ">
                 <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" OnClick="btn_cancelar_Click" Width="130px" />
             </td>
         </tr>
         <tr>
             <td style="background-color: rgba(151, 83, 228, 0.55); font-size: large; " class="auto-style16">Fecha de Nacimiento:</td>
             <td class="auto-style17" style="background-color: rgba(151, 83, 228, 0.55); ">
                <asp:TextBox ID="txt_fecha" runat="server" Font-Size="Large" TabIndex="3" MaxLength="10" Enabled="False" Width="200px" OnTextChanged="txt_fecha_TextChanged"></asp:TextBox>
                 <ajaxToolkit:CalendarExtender ID="txt_fecha_CalendarExtender" runat="server" BehaviorID="txt_fecha_CalendarExtender" TargetControlID="txt_fecha" />
             </td>
             <td class="auto-style13" style="background-color: rgba(151, 83, 228, 0.55); ">
                 <asp:Button ID="btn_actualizar" runat="server" Text="Actualizar" Width="130px" OnClick="btn_actualizar_Click" />
             </td>
             </tr>
        <tr>
             <td style="background-color: rgba(151, 83, 228, 0.55); font-size: large; " class="auto-style21">Contraseña</td>
             <td class="auto-style14" style="background-color: rgba(151, 83, 228, 0.55); ">
                <asp:TextBox ID="txt_contraseña" runat="server" Font-Size="Large" TabIndex="2" MaxLength="80" Enabled="False" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style13" style="background-color: rgba(151, 83, 228, 0.55); ">
                 <asp:Button ID="btn_eliminar" runat="server" Text="Eliminar" Width="130px" OnClick="btn_eliminar_Click" />
             </td>
                 </tr>
           
             </table>
                </td>
                <td class="auto-style20">
                    <img alt="" class="auto-style19" src="Imagen/banner2.png" />
                </td>
            </tr>
            </table>
    
        </asp:Content>
