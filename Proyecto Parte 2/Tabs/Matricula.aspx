<%@ Page Title="" Language="C#" MasterPageFile="~/Tabs/View.Master" AutoEventWireup="true" CodeBehind="Matricula.aspx.cs" Inherits="Proyecto_Parte_2.Tabs.Matricula" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-container">
        <div class="welcome-text" style="position: relative; top: -380px;">
            Favor seleccione el curso que desea matricular
        </div>
        <asp:DropDownList ID="idiomasdrop" runat="server" 
                          Style="display: block; margin: 10px auto; position: relative; top: -350px;" />
        <asp:DropDownList ID="cursodrop" runat="server" 
                          Style="display: block; margin: 10px auto; position: relative; top: -325px;" />
        <br />
      
        <div style="position: relative; top: -300px; text-align: center;">
            <asp:Button ID="AceptarMat" runat="server" Text="Aceptar" 
                        Style="display: inline-block; margin-right: 10px;" OnClick="matricular_click" />
            <br />
            <asp:Label ID="respuesta_log" runat="server" Text="" ForeColor="White"></asp:Label>
        </div>
    </div>
</asp:Content>

