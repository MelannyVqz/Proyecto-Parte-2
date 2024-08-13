<%@ Page Title="" Language="C#" MasterPageFile="~/Tabs/View.Master" AutoEventWireup="true" CodeBehind="Resumen Matricula.aspx.cs" Inherits="Proyecto_Parte_2.Tabs.Resumen_Matricula" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
        .gridview-container {
            position: absolute;
            top: 300px;
            left: 50%;
            transform: translateX(-50%);
            width: 50%;
        }
 
        .gridview-style {
            width: 100%;
            border-collapse: collapse;
            margin: 0;
        }
 
            .gridview-style th, .gridview-style td {
                border: 1px solid #ddd;
                padding: 15px;
                text-align: center;
            }
 
            .gridview-style th {
                background-color: #4CAF50;
                color: white;
                font-weight: bold;
            }
 
            .gridview-style tr:nth-child(even) {
                background-color: #f2f2f2;
            }
 
            .gridview-style tr:hover {
                background-color: #ddd;
            }
 
            .borrar{
                margin: 250px 0px 25px 0px;
                display: block;
            }
</style>
</asp:Content>
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="gridview-container">
<asp:GridView ID="GridViewresumen" runat="server" CssClass="gridview-style"></asp:GridView>
</div>
<div class="borrar">
<span class="input-group-text" id="basic-addon1">CODIGO:</span>
<asp:TextBox ID="TCEDULA" runat="server" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>

 
                   
<asp:Button ID="BBORRAR" runat="server" type="button" class="btn btn-danger" Text="BORRAR" OnClick="BBORRAR_Click" />
</div>
<asp:Button ID="Final" runat="server" Text="Guardar y Salir"
        Style="position: absolute; top: 450px;"
        OnClick="Finale" />
</asp:Content>
