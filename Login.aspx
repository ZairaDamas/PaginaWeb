<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Avance_del_proyecto.Login" %>


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
                text: 'El Usuario no debe de estar vacio.',
            })
         }

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

         function alert_error_noencontrado() {
            Swal.fire({
                showCloseButton: true,
                icon: 'error',
                title: 'Error.',
                text: 'No se encontro esa ID.',
            })
         }

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

        
        .auto-style3 {
        width: 83%;
        height: 293px;
        position: absolute;
        top: 289px;
        left: 131px;
        z-index: 1;
    }
    .auto-style4 {
        font-family: "Century Gothic";
        font-size: x-large;
        color: #FFFFFF;
        font-style: italic;
        width: 848px;
        height: 60px;
        position: absolute;
        top: 131px;
        z-index: 1;
        left: 225px;
        text-align: center;
        vertical-align: auto;
        background-color: #CC99FF;
    }
    .auto-style5 {
        height: 171px;
    }
    .auto-style6 {
        background-color: #CC66FF;
    }
    .auto-style7 {
        text-align: center;
        width: 550px;
        height: 391px;
    }
    .auto-style8 {
        position: absolute;
        top: 358px;
        left: 720px;
        z-index: 1;
        font-family: "Century Gothic";
        font-weight: bold;
        font-size: small;
        width: 103px;
        height: 39px;
    }
    .auto-style9 {
        position: relative;
        left: -23px;
        top: 0px;
        width: 104px;
        height: 42px;
        font-family: "Century Gothic";
        font-weight: bold;
        font-size: small;
    }
    .auto-style10 {
        font-family: "Century Gothic";
        font-weight: bold;
        font-size: small;
    }
    .auto-style11 {
        width: 170px;
        height: 32px;
    }
    .auto-style12 {
        width: 170px;
        height: 48px;
        font-family: "Century Gothic";
        font-style: italic;
        font-size: small;
    }
    .auto-style13 {
        font-family: "Century Gothic";
        font-style: italic;
        font-size: medium;
        color: #000000;
    }
    .auto-style14 {
        text-align: center;
        font-family: "Century Gothic";
        font-style: italic;
        font-size: medium;
    }
    .auto-style15 {
        font-family: "Century Gothic";
        font-size: small;
        font-style: italic;
    }
    .auto-style16 {
        width: 170px;
        font-family: "Century Gothic";
        font-style: italic;
        font-size: small;
    }
    .auto-style17 {
        text-align: center;
        height: 32px;
    }

        
        </style>

    <p class="auto-style5" style="background-position: 0px 0px; background-color: #CC66FF; background-image: none; background-repeat: repeat-y;">
        <br class="auto-style6" />
    </p>
    <p class="auto-style4">
        ACCEDE A LA MEJOR INFORMACIÓN PARA EL CUIDADO DE TU PIEL</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table class="auto-style3" style="border-style: solid; border-width: 3px; padding: 1px 4px">
        <tr>
            <td style="border-style: solid; border-width: 3px; padding: 1px 4px" class="auto-style7">
                <div class="text-center">
                    <br />
                    <br />
                </div>
                <table class="nav-justified" style="height: 167px">
                    <tr>
                        <td style="width: 106px">&nbsp;</td>
                        <td class="auto-style14">
                            Ingresar</td>
                    </tr>
                    <tr>
                        <td style="width: 106px" class="auto-style15">Usuario</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 106px" class="auto-style15">Contraseña</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <em>
                <asp:Button ID="Button2" runat="server" style="font-style: italic; " Text="Acceder" CssClass="auto-style10" />
                </em>
                <br />
                <br />
                <br />
            </td>
            <td style="padding: 1px 4px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px;" class="auto-style7">
                <table class="nav-justified" style="height: 240px">
                    <tr>
                        <td class="auto-style11"></td>
                        <td class="auto-style17"><strong>&nbsp;</strong><span class="auto-style13">Registrate&nbsp;</span></td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Nombre</td>
                        <td>
                            <asp:TextBox ID="txt_nombre" runat="server" Height="20px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Apellido</td>
                        <td>
                            <asp:TextBox ID="txt_apellido" runat="server" Height="20px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Fecha de Nacimiento</td>
                        <td>
                            <asp:TextBox ID="txt_fecha" runat="server" Height="20px" Width="300px" OnTextChanged="txt_fecha_TextChanged"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="txt_fecha_CalendarExtender" runat="server" BehaviorID="txt_fecha_CalendarExtender" TargetControlID="txt_fecha">
                            </ajaxToolkit:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Correo </td>
                        <td>
                            <asp:TextBox ID="txt_correo" runat="server" Height="20px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">Usuario</td>
                        <td style="height: 48px">
                            <asp:TextBox ID="txt_usuario" runat="server" Height="20px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">Contraseña</td>
                        <td style="height: 48px">
                            <asp:TextBox ID="txt_password" runat="server" Height="20px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="btn_registrar" runat="server" style="font-style: italic; " Text="Registrar" OnClick="Button1_Click"  />
                <em>
                <asp:Button ID="btn_cancelar" runat="server" style="font-style: italic; " OnClick="Button3_Click" Text="Cancelar" />
                </em>
            </td>
        </tr>
    </table>
</asp:Content>
