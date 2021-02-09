using Vendas.Models.Enums;
using System;

namespace Vendas.Models
{
    public class VendasReg
    {
        public int Id { get; set; }
        public DateTime Data { get; set; }
        public double Quantidade { get; set; }
        public VendaStatus Status { get; set; }
        public Vendedor Vendedor { get; set; }

        public VendasReg() { }

        public VendasReg(int id, DateTime data, double quantidade, VendaStatus status, Vendedor vendedor)
        {
            Id = id;
            Data = data;
            Quantidade = quantidade;
            Status = status;
            Vendedor = vendedor;
        }
    }
}
