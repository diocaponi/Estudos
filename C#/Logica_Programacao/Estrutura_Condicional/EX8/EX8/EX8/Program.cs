using System;
using System.Globalization;

namespace EX8
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Renda               Imposto de Renda");
            Console.WriteLine("de 0.00 a 2000         Isento");
            Console.WriteLine("de 2000.01 a 3000      8 % ");
            Console.WriteLine("de 3000.01 a 4500      18 %");
            Console.WriteLine("acima de 4500          28 %");
            Console.WriteLine(" ");

            Console.Write("Digite o salário para saber o imposto de renda: ");
            double salario = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);
                   
            
            double imposto;
            if (salario <= 2000.0)
            {
                imposto = 0.0;
            }
            else if (salario <= 3000.0)
            {
                imposto = (salario - 2000.0) * 0.08;
                Console.WriteLine("Alíquota de 8%");
            }
            else if (salario <= 4500.0)
            {
                imposto = (salario - 3000.0) * 0.18 + 1000.0 * 0.08;
                Console.WriteLine("Alíquota de 18%");
            }
            else
            {
                imposto = (salario - 4500.0) * 0.28 + 1500.0 * 0.18 + 1000.0 * 0.08;
                Console.WriteLine("Alíquota de 28%");
            }

            if (imposto == 0.0)
            {
                Console.WriteLine("Isento");
            }
            else
            {
                Console.WriteLine("Imposto R$ " + imposto.ToString("F2", CultureInfo.InvariantCulture));
            }
        }
    }
}
