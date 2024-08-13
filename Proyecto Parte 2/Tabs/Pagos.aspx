<%@ Page Title="" Language="C#" MasterPageFile="~/Tabs/View.Master" AutoEventWireup="true" CodeBehind="Pagos.aspx.cs" Inherits="Proyecto_Parte_2.Tabs.Pagos" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="content-container">
 
 
        <div class="accordion col-12 m-auto" id="accordionExample">
<div class="accordion-item">
<h2 class="accordion-header" id="headingOne">
<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Pago con Tarjeta
</button>
</h2>
<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
<div class="accordion-body">
<div class="">
<label for="exampleFormControlInput1" class="form-label">Número de tarjeta</label>
<input type="number" class="form-control" id="exampleFormControlInput1" placeholder="4123 1245 4789 1452" >
</div>
<div class="">
<label for="exampleFormControlInput1" class="form-label">Fecha de vencimiento</label>
<input type="month" id="fecha" class="form-control" id="exampleFormControlInput1" placeholder="" >
</div>
<div class="">
<label for="exampleFormControlInput1" class="form-label">Nombre de titular</label>
<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="JULIO CESAR GUIDO" >
</div>
<div class="">
<label for="exampleFormControlInput1" class="form-label">CVV</label>
<input type="password" maxlength="3" class="form-control" id="exampleFormControlInput1" placeholder="123" >
</div>
<div class="d-grid gap-2">
<button type="button" class="btn btn-primary btn-success m-3" onclick="ConfirmarPago();">Procesar pago</button>
 
                            </div>
</div>
</div>
</div>
 
            <div class="accordion-item">
<h2 class="accordion-header" id="headingTwo">
<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        Pago con Deposito
</button>
</h2>
<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
<div class="accordion-body">
<label for="exampleFormControlInput1" class="form-label">Número  de deposito</label>
<input type="number" maxlength="24" class="form-control" id="exampleFormControlInput1" placeholder="20240812584585285">
<div class="d-grid gap-2">
<button type="button" class="btn btn-primary btn-success m-3" onclick="ConfirmarPago();">Procesar pago</button>
</div>
</div>
</div>
</div>
</div>
 
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    function ConfirmarPago() {
        Swal.fire({
            title: "Proceso de pago",
            text: "Procesado exitosamente!",
            icon: "success"
        });
    }

    // Obtener la fecha actual
    const today = new Date();
    const year = today.getFullYear();
    const month = String(today.getMonth() + 1).padStart(2, '0'); // Mes en formato de dos dígitos
    const minDate = `${year}-${month}`;

    // Asignar la fecha mínima al input
    document.getElementById('fecha').min = minDate;


        </script>
<div style="position: relative; top: -400px; margin: 0 auto; width: 300px; text-align: center;">
</div>
</div>
</asp:Content>