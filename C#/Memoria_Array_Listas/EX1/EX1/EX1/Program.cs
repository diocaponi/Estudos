using System;
using System.Globalization;

namespace EX1
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.Write("Digite o número de pessoas que deseja ter uma média: ");
            int n = int.Parse(Console.ReadLine());
            double[] vet = new double[n];

            for (int i = 0; i < n; i++)
            {
                Console.Write("Digite a pessoa #" + i + ": ");
                vet[i] = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);
            }

            double soma = 0.0;

            for (int i = 0; i < n; i++)
            {
                soma += vet[i];
            }

            double media = soma / n;
            Console.WriteLine("Altura média = " + media.ToString("F2", CultureInfo.InvariantCulture));
        }
    }
}
