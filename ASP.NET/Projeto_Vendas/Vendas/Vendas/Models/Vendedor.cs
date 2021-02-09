using System;
using System.Collections.Generic;
using System.Linq;

namespace Vendas.Models
{
    public class Vendedor
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public double SalarioBase { get; set; }
        public DateTime DataNasc { get; set; }
        public Departamento Departamento { get; set; }
        public ICollection<VendasReg> Vendas { get; set; } = new List<VendasReg>();

        public Vendedor() { }

        public Vendedor(int id, string nome, string email, double salarioBase, DateTime dataNasc, Departamento departamento)
        {
            Id = id;
            Nome = nome;
            Email = email;
            SalarioBase = salarioBase;
            DataNasc = dataNasc;
            Departamento = departamento;
        }

        public void AddVendas(VendasReg vr)
        {
            Vendas.Add(vr);

        }

        public void RemoveVendas(VendasReg vr)
        {
            Vendas.Remove(vr);
        }

        public double TotalVendas(DateTime inicio, DateTime fim)
        {
            return Vendas.Where(vr => vr.Data >= inicio && vr.Data <= fim).Sum(vr => vr.Quantidade);
        }
    }
}
