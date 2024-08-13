using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Parte_2.Datos
{
    public class Pagos
    {
        //Atributos
        public float Monto { get; set; }
        public string MetodoPago { get; set; } // "Tarjeta" o "Deposito"
        public string NumeroConfirmacion { get; set; } // Solo para depósito
        public string NumeroTarjeta { get; set; } // Solo para tarjeta
        public string CVV { get; set; } // Solo para tarjeta
        public string FechaCaducidad { get; set; } // Solo para tarjeta (mes/año)
    }
}