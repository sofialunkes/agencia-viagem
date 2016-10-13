using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Vendas
/// </summary>
public class Venda
{
    public Venda() {
        Pacote = new Pacote();
        Cliente = new Cliente();
    }
    public int Codigo { get; set; }
    public Pacote Pacote { get; set; }
    public Cliente Cliente { get; set; }
    public double Subtotal { get; set; }
}