<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="Proyecto_Parte_2.Tabs.Log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="../CSS/logcss.css" rel="stylesheet" />
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class='bold-line'></div>
<div class='bold-line'></div>
<div class='container'>
  <div class='window'>
    <div class='overlay'></div>
    <div class='content'>
      <div class='welcome'>¡Bienvenido!</div>
      <div class='subtitle'>Por favor identifíquese</div>
      <div class='input-fields'>
<div style="text-align: center;">
    <asp:Label ID="cedulaLabel" Text="Cédula:" AssociatedControlID="cedulalog" runat="server" 
               Style="display: block; margin: 0 auto;" />
    <asp:TextBox ID="cedulalog" placeholder="Cédula" runat="server" 
                 Style="display: block; margin: 0 auto; text-align: center; margin-bottom: 10px;" />

    <asp:Label ID="contraseñaLabel" Text="Contraseña:" AssociatedControlID="contralog" runat="server" 
               Style="display: block; margin: 0 auto;" />
    <asp:TextBox ID="contralog" placeholder="Contraseña" runat="server" 
                 Style="display: block; margin: 0 auto; text-align: center;" TextMode="Password"/>
</div>
    
      </div>
        <asp:Button ID="Button1" runat="server" class='ghost-round full-width' OnClick="ingresar_click" Text="Ingresar" Style="display: block; margin: 20px auto 0;" />
        <img src="../Imagenes/ucrlogolog.png" alt="Logo UCR" class="ucr-logo"/>
        <asp:Label ID="respuesta_log" runat="server" Text="" ForeColor="White"></asp:Label>
    </div>
  </div>
</div>
        </div>
    </form>
</body>
</html>
