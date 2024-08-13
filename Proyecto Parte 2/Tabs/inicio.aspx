
<%@ Page Title="" Language="C#" MasterPageFile="~/Tabs/View.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Proyecto_Parte_2.Tabs.log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .welcome-text {
    font-family: Arial, sans-serif; 
    font-weight: bold; 
    font-size: 26px; 
    text-align: center; 
    position: absolute; 
    top: 40%; 
    left: 50%;
    transform: translateX(-50%); 
    width: 100%; 
    margin: 100; 
    padding-top: 1px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="welcome-text">
        SEA BIENVENIDO AL SISTEMA DE MATRICULA DE LA CASA DE IDIOMAS DE LA UCR
    </div>
</asp:Content>
