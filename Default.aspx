<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proyecto1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
        <div class="jumbotron">
        <p class="blog-title" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; transition: all 0.2s ease 0s; margin: 0px; font-size: 30px; font-weight: bold; line-height: 36px; text-transform: uppercase; letter-spacing: 0.1em; word-spacing: 0.2em; text-shadow: rgba(0, 0, 0, 0.1) 0px 3px 20px; color: rgb(51, 51, 51); font-family: Arial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: center; text-indent: 0px; white-space: normal; widows: 2; -webkit-text-stroke-width: 0px; background-color: rgba(125, 116, 185, 0.5); text-decoration-style: initial; text-decoration-color: initial; z-index: 1; width: 474px; height: 36px; position: absolute; top: 350px; left: 441px;">
            <a href="BUSCANDO LA HARMONÍA" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; transition: all 0.2s ease 0s; background-color: transparent; color: rgb(232, 232, 232); text-decoration: none;" title="Ir a la página de inicio">BUSCANDO LA HARMONÍA</a></p>
        <p class="lead blog-subtitle" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; transition: all 0.2s ease 0s; margin: 0px 0px 15px; font-size: 21px; font-weight: 200; line-height: 1.4; font-family: Poppins; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0.14px; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(125, 116, 185, 0.5); text-decoration-style: initial; text-decoration-color: initial; color: rgb(232, 232, 232); z-index: 1; width: 511px; height: 29px; position: absolute; top: 400px; left: 418px;">
            El blog que cuida tu bienestar, imagen y belleza</p>
        <img alt="" src="Imagen/Captura%20de%20pantalla%202022-03-22%20202942.png" style="width: 1014px; height: 575px" /><p class="lead">
            </p>
            <table class="nav-justified" style="width: 98%; margin-bottom: 0px; background-color: #CC99FF; height: 57px;">
                
                <tr>
                    <td class="text-center" style="width: 325px; height: 36px; font-family: 'Century Gothic'; font-size: large; letter-spacing: 1pt;">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="lnkRedireccion_Click" style="color: #000000" >ESTILO DE VIDA</asp:LinkButton>
                        
                       
                    </td>
                    <td class="text-center" style="width: 370px; height: 36px; color: #000000; font-family: 'Century Gothic'; font-size: large; letter-spacing: 1pt;">
                         <asp:LinkButton ID="LinkButton2" runat="server" OnClick="lnkRedireccion1_Click" style="color: #000000" >NUTRICIÓN Y SALUD</asp:LinkButton>
                        

                   <td class="text-center" style="width: 370px; height: 36px; color: #000000; font-family: 'Century Gothic'; font-size: large; letter-spacing: 1pt;">
                       <asp:LinkButton ID="LinkButton3" runat="server" OnClick="lnkRedireccion2_Click" style="color: #000000" >BELLEZ  Y ESTÉTICA</asp:LinkButton>
                    </td>
                </tr>

            </table>
       
        <div class="col-md-4" style="left: 0px; top: 0px; width: 1011px">
            <table class="nav-justified" style="width: 102%">
                <tr>
                    <td style="width: 1077px"><span style="font-family: 'Century Gothic'; font-weight: bold; font-size: x-large; color: #800080">
                        <br />
                        <br />
                        5 cosas que Wikipedia no te contará para recuperar tu piel</span></td>
                    <td class="modal-sm" style="width: 358px; text-align: center;">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 1077px; height: 248px;">
            <h3 style="font-family: 'Century Gothic'; font-size: large"> &nbsp;</h3>
                        <h3 style="font-family: 'Century Gothic'; font-size: large"> <span style="font-weight: normal"><span style="font-size: medium">El sol, la arena, el viento, el cloro… Puede parecer que tienes buena cara por el bronceado, pero la piel necesita a la vuelta de vacaciones más cuidados que nunca.
                </span></span></h3>
            <h3 style="font-family: 'Century Gothic'; text-align:justify; font-size: large"> <span style="font-weight: normal"><span style="font-size: medium">La buena cara de verano dura lo mismo que el bronceado  y hasta menos desafortunamente (toca quedarse con los buenos recuerdos).  Durante la temporada veraniega la piel está más sometida a agresiones ambientales, lo que a veces coincide con una cierta dejadez en los cuidados habituales. Como los exámenes de septiembre, una vez pasado el verano a la piel también le toca recuperación, así que a ponernos en marcha.
                                                                                                           </span></span></h3>
                    </td>
                    <td class="modal-sm" style="width: 358px; height: 248px; text-align: center;">
                        <img alt="" src="Imagen/2317487.jpg" style="width: 409px; height: 281px; margin-left: 51px" /></td>
                    <td style="height: 248px"></td>
                </tr>
            </table>
            <p style="font-family: Arial; font-size: large"> &nbsp;</p>
            <p style="font-family: Arial; font-size: large"> &nbsp;</p>
            <h3>&nbsp;</h3>
        </div>
    </div>

    <div class="row">
    </div>

</asp:Content>
