using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Vendas.Models;
using Vendas.Models.Enums;

namespace Vendas.Data
{
    public class SeedingService
    {
        private VendasContext _context;

        public SeedingService(VendasContext context)
        {
            _context = context;
        }

        public void Seed()
        {
            // Verifica se existe algum registro no banco de dados
            if (_context.Departamento.Any() || 
                _context.Vendedor.Any() ||
                _context.VendasReg.Any())
            {
                return; // Banco de dados já populado
            }

            // Passando parâmetros para popular o banco de dados

            Departamento d1 = new Departamento(1, "Computadores");
            Departamento d2 = new Departamento(2, "Eletrônicos");
            Departamento d3 = new Departamento(3, "Bebidas");
            Departamento d4 = new Departamento(4, "Livros");

            Vendedor s1 = new Vendedor(1, "Bobby", "bobby@gmail.com", 3000.0, new DateTime(1950, 4, 21), d4);
            Vendedor s2 = new Vendedor(2, "John", "john@gmail.com", 2500.0, new DateTime(1954, 10, 15), d2);
            Vendedor s3 = new Vendedor(3, "Sam", "sam@gmail.com", 2000.0, new DateTime(1983, 6, 6), d1);
            Vendedor s4 = new Vendedor(4, "Dean", "dean@gmail.com", 2000.0, new DateTime(1979, 10, 26), d3);

            VendasReg r1 = new VendasReg(1, new DateTime(2018, 9, 25), 1100.00, VendaStatus.Faturado, s1);
            VendasReg r2 = new VendasReg(2, new DateTime(2018, 09, 4), 7000.0, VendaStatus.Faturado, s2);
            VendasReg r3 = new VendasReg(3, new DateTime(2018, 09, 13), 4000.0, VendaStatus.Cancelado, s4);
            VendasReg r4 = new VendasReg(4, new DateTime(2018, 09, 1), 8000.0, VendaStatus.Faturado, s1);
            VendasReg r5 = new VendasReg(5, new DateTime(2018, 09, 21), 3000.0, VendaStatus.Faturado, s3);
            VendasReg r6 = new VendasReg(6, new DateTime(2018, 09, 15), 2000.0, VendaStatus.Faturado, s1);
            VendasReg r7 = new VendasReg(7, new DateTime(2018, 09, 28), 13000.0, VendaStatus.Faturado, s2);
            VendasReg r8 = new VendasReg(8, new DateTime(2018, 09, 11), 4000.0, VendaStatus.Faturado, s4);
            VendasReg r9 = new VendasReg(9, new DateTime(2018, 09, 14), 11000.0, VendaStatus.Pendente, s4);
            VendasReg r10 = new VendasReg(10, new DateTime(2018, 09, 7), 9000.0, VendaStatus.Faturado, s4);
            VendasReg r11 = new VendasReg(11, new DateTime(2018, 09, 13), 6000.0, VendaStatus.Faturado, s2);
            VendasReg r12 = new VendasReg(12, new DateTime(2018, 09, 25), 7000.0, VendaStatus.Pendente, s3);
            VendasReg r13 = new VendasReg(13, new DateTime(2018, 09, 29), 10000.0, VendaStatus.Faturado, s4);
            VendasReg r14 = new VendasReg(14, new DateTime(2018, 09, 4), 3000.0, VendaStatus.Faturado, s2);
            VendasReg r15 = new VendasReg(15, new DateTime(2018, 09, 12), 4000.0, VendaStatus.Faturado, s1);
            VendasReg r16 = new VendasReg(16, new DateTime(2018, 10, 5), 2000.0, VendaStatus.Faturado, s4);
            VendasReg r17 = new VendasReg(17, new DateTime(2018, 10, 1), 12000.0, VendaStatus.Faturado, s1);
            VendasReg r18 = new VendasReg(18, new DateTime(2018, 10, 24), 6000.0, VendaStatus.Faturado, s3);
            VendasReg r19 = new VendasReg(19, new DateTime(2018, 10, 22), 8000.0, VendaStatus.Faturado, s2);
            VendasReg r20 = new VendasReg(20, new DateTime(2018, 10, 15), 8000.0, VendaStatus.Faturado, s4);
            VendasReg r21 = new VendasReg(21, new DateTime(2018, 10, 17), 9000.0, VendaStatus.Faturado, s2);
            VendasReg r22 = new VendasReg(22, new DateTime(2018, 10, 24), 4000.0, VendaStatus.Faturado, s4);
            VendasReg r23 = new VendasReg(23, new DateTime(2018, 10, 19), 11000.0, VendaStatus.Cancelado, s2);
            VendasReg r24 = new VendasReg(24, new DateTime(2018, 10, 12), 8000.0, VendaStatus.Faturado, s2);
            VendasReg r25 = new VendasReg(25, new DateTime(2018, 10, 31), 7000.0, VendaStatus.Faturado, s3);
            VendasReg r26 = new VendasReg(26, new DateTime(2018, 10, 6), 5000.0, VendaStatus.Faturado, s4);
            VendasReg r27 = new VendasReg(27, new DateTime(2018, 10, 13), 9000.0, VendaStatus.Pendente, s1);
            VendasReg r28 = new VendasReg(28, new DateTime(2018, 10, 7), 4000.0, VendaStatus.Faturado, s3);
            VendasReg r29 = new VendasReg(29, new DateTime(2018, 10, 23), 12000.0, VendaStatus.Faturado, s2);
            VendasReg r30 = new VendasReg(30, new DateTime(2018, 10, 12), 5000.0, VendaStatus.Faturado, s2);

            _context.Departamento.AddRange(d1, d2, d3, d4);

            _context.Vendedor.AddRange(s1, s2, s3, s4);

            _context.VendasReg.AddRange(
                r1, r2, r3, r4, r5, r6, r7, r8, r9, r10,
                r11, r12, r13, r14, r15, r16, r17, r18, r19, r20,
                r21, r22, r23, r24, r25, r26, r27, r28, r29, r30
            );

            _context.SaveChanges();
        }
    }
}
