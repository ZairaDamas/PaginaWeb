<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Belleza.aspx.cs" Inherits="Proyecto1.Belleza" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .text-style {
            font-family: "Century Gothic";
            color: #800080;
            font-weight: normal;
            letter-spacing: 8pt;
            text-align: center;
            padding: 20px 20px;
        }
        .img-style{
            width: 455px; 
            height: 472px; 
            top: 150px; 
            margin:auto;
            display: flex;
            justify-content: center;
            align-items: center;
            
                        
        }
        .text-stle2{
            font-family: "Century Gothic";
            color: black;
            font-weight: normal;
            text-align: center;
            padding: 20px 20px;
            font-size: 18px;
            text-align:justify;
            width: 800px;
        }

    </style>
    <h1 class="text-style">BELLEZA Y  ESTÉTICA</h1>
    
    <p>

    </p>
    <img alt="" src="Imagen/Belleza.jpg" class="img-style" />
    <p class="">
        &nbsp;</p>
      
    <p class="text-style2">
        Comúnmente, la belleza se define como la característica de una cosa o persona que, a través de una experiencia sensorial, procura una sensación de 
        placer o un sentimiento de satisfacción.
        Por otro lado, la Estética es la rama de la Filosofía que tiene por objeto el estudio de la esencia y la percepción de la belleza.
        La búsqueda de la belleza y de la estética ha sido una constante en la sociedad desde hace siglos. Esta búsqueda de la belleza en la persona individual ha
        derivado hoy en día en tratamientos médicos para resolver problemas estéticos y 
        resaltar la belleza de cada persona, así como para prevenir la aparición de dichos problemas. Es así como surge lo que hoy en día se conoce como medicina estética.
    </p>
</asp:Content>
