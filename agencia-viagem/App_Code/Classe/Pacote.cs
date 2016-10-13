using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pacote
/// </summary>
public class Pacote
{
    public Pacote() {
        Hotel = new Hotel();
    }
    public int Codigo { get; set; }
    public string Descricao { get; set; }
    public DateTime DataInicio { get; set; }
    public int QtdDias { get; set; }
    public Hotel Hotel { get; set; }
    public double Valor { get; set; }
}