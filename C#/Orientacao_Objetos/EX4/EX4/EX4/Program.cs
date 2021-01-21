using System;
using System.Globalization;

namespace EX4
{
    class Program
    {
        static void Main(string[] args)
        {
            Funcionario func = new Funcionario();

            Console.Write("Digite o nome do funcionário: ");
            func.Nome = Console.ReadLine();

            Console.Write("Digite o salário bruto do funcionário: ");
            func.SalarioBruto = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

            Console.Write("Digite o valor do imposto: ");
            func.Imposto = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

            Console.WriteLine();

            Console.WriteLine("Funcionário: " + func.Nome + " $" + func.SalarioLiquido().ToString("F2", CultureInfo.InvariantCulture));

            Console.Write("Digite a porcentagem para aumentar o salário: ");
            double porcent = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);
            func.AumentarSalario(porcent);

            Console.WriteLine();

            Console.WriteLine("Dados atualizados: " + func);

        }
    }
}
