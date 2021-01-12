using System;
using System.Globalization;

namespace EX2
{
    class Program
    {
        static void Main(string[] args)
        {
            Pessoa p1 = new Pessoa();
            Pessoa p2 = new Pessoa();

            Console.WriteLine("Digite os dados da primeira pessoa: ");
            Console.Write("Nome: ");
            p1.nome = Console.ReadLine();

            Console.Write("Salário: ");
            p1.salario = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

            Console.WriteLine("Digite os dados da segunda pessoa: ");
            Console.Write("Nome: ");
            p2.nome = Console.ReadLine();

            Console.Write("Salário: ");
            p2.salario = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

            Console.WriteLine(" ");

            double media = (p1.salario + p2.salario) / 2;

            Console.WriteLine("Média dos salários é " + media.ToString("F2",CultureInfo.InvariantCulture));
        }
    }
}
