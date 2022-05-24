<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="Avance_del_proyecto.Consultas" %>
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
                text: 'No existe dicho usuario.',
            })
         }
        /*
           function alert_error_idnombre() {
            Swal.fire({
                showCloseButton: true,
                icon: 'error',
                title: 'Error.',
                text: 'El nombre no debe de estar vacio.',
            })
         }

           function alert_error_idapellido() {
            Swal.fire({
                showCloseButton: true,
                icon: 'error',
                title: 'Error.',
                text: 'El apellido no debe de estar vacio.',
            })
        }

         function alert_error_idfecha() {
            Swal.fire({
                showCloseButton: true,
                icon: 'error',
                title: 'Error.',
                text: 'Ingrese una fecha',
            })
         }
        */
         function alert_error_noencontrado() {
            Swal.fire({
                showCloseButton: true,
                icon: 'error',
                title: 'Error.',
                text: 'No se encontro esa ID.',
            })
         }
        /*
           function alert_error_idcorreo() {
            Swal.fire({
                showCloseButton: true,
                icon: 'error',
                title: 'Error.',
                text: 'Ingrese un correo electronico.',
            })
        }
         function alert_error_idpassword() {
            Swal.fire({
                showCloseButton: true,
                icon: 'error',
                title: 'Error.',
                text: 'Ingrese una contraseña ',
            })
         }


        function alert_registrar() {
            Swal.fire({
                icon: 'success',
                title: 'Correcto.',
                text: 'Usted se registro correctamente.',
            })
        }

*/
        function alert_bien() {
            Swal.fire(
                'Good job!',
                'You clicked the button!',
                'success'
            )
        }


        function alert_saved() {
            Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: 'Your work has been saved',
                showConfirmButton: false,
                timer: 1500
            })
        }


        function alert_openURL() {
            Swal.fire({
                title: '<strong>HTML <u>example</u></strong>',
                icon: 'info',
                html:
                'You can use <b>bold text</b>, ' +
                '<a href="//sweetalert2.github.io/#icons">links</a> ' +
                'and other HTML tags',
                showCloseButton: true,
                showCancelButton: true,
                focusConfirm: false,
                confirmButtonText:
                '<i class="fa fa-thumbs-up"></i> Great!',
                confirmButtonAriaLabel: 'Thumbs up, great!',
                cancelButtonText:
                '<i class="fa fa-thumbs-down"></i>',
                cancelButtonAriaLabel: 'Thumbs down'
            })
        }


        function alert_animado() {
            Swal.fire({
                title: 'Custom animation with Animate.css',
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
            border-radius: 20px;
            box-sizing: padding-box;
        }

        input[type=text]:focus {
            background-color: #C0F0D6;
        }

        input[type=submit] {
            background-color:  mediumpurple ;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            float: none;
        }

        input[type=submit]:hover {
            background-color: limegreen;
        }

        
        .auto-style1 {
            font-style: italic;
        }
        input[type=table]{
            background-color:mediumpurple;
        }

        
        .auto-style3 {
        width: 74%;
            z-index: 1;
        }

        
        .auto-style4 {
            text-align: center;
            font-family: "Century Gothic";
            font-size: medium;
            width: 156px;
        }
        .auto-style5 {
            font-family: "Century Gothic";
            font-size: medium;
        }
        .titulo {
            font-family: "Century Gothic";
            font-size: xx-large;
            color: #800080;
            font-style: italic;
            font-weight: bold;
            text-align: center;
        }

        
        .auto-style7 {
            font-family: "Century Gothic";
            font-size: xx-large;
            color: #800080;
            font-style: italic;
            font-weight: bold;
            text-align: center;
            height: 25px;
        }
        .auto-style8 {
            width: 750px;
        }
        .auto-style9 {
            width: 619px;
            height: 375px;
            z-index: -1;
            margin-left: 64px;
            position: absolute;
            left: 471px;
            top: 204px;
        }

        
        .auto-style10 {
            font-family: "Century Gothic";
            font-size: medium;
            color: #337AB7;
            text-align: center;
        }

        
        .auto-style11 {
            color: #000000;
            font-family: 'Century Gothic';

        }

        
        .auto-style12 {
            text-align: center;
            font-family: "Century Gothic";
            font-size: medium;
        }

        
        </style>

    <p class="titulo">
        &nbsp;</p>
    <p class="titulo">
        CONSULTA LA INFORMACIÓN DE TU PERFIL</p>
    <p class="auto-style7">
        &nbsp;</p>

    
        <table class="nav-justified">
            <tr>
                <td class="auto-style8">
    <table class="auto-style3">
        <tr>
            <td class="auto-style4">Usuario</td>
            <td style="width: 250px">
                <asp:TextBox ID="txt_usuario" runat="server" Width="99%"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btn_consultar" runat="server" OnClick="Button2_Click" Text="Consultar" Width="100%" CssClass="auto-style5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12" colspan="3">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="lnkRedireccion1_Click">Registros</asp:LinkButton>
        </tr>
        <tr>
            <td class="auto-style4">Contraseña</td>
            <td style="width: 250px">
                <asp:TextBox ID="txt_password" runat="server" ReadOnly="True" Width="100%"></asp:TextBox>
            </td>
            

        </tr>
        <tr>
            <td class="auto-style4">Nombre</td>
            <td style="width: 250px">
                <asp:TextBox ID="txt_nombre" runat="server" ReadOnly="True" Width="100%"></asp:TextBox>
            </td>
            
        <tr>
            <td class="auto-style4">Apellido</td>
            <td style="width: 250px">
                <asp:TextBox ID="txt_apellido" runat="server" ReadOnly="True" Width="100%"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Fecha</td>
            <td style="width: 250px">
                <asp:TextBox ID="txt_fecha" runat="server" ReadOnly="True" Width="100%"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Correo</td>
            <td style="width: 250px">
                <asp:TextBox ID="txt_correo" runat="server" ReadOnly="True" Width="100%"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style10">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="lnkRedireccion2_Click">Actualizar informacion del peril</asp:LinkButton>
            </td>
            
        </tr>
        </table>
                </td>
                <td>
                    <img alt="" class="auto-style9" src="Imagen/banner1.png" /></td>
            </tr>
        </table>
        <br />
    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
