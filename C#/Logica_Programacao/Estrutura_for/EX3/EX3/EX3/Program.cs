using System;
using System.Globalization;

namespace EX3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite a quantidade de casos que deseja: ");
            int n = int.Parse(Console.ReadLine());
            
            for (int i = 0; i < n; i++)
            {
                string[] linha = Console.ReadLine().Split(' ');
                
                double a = double.Parse(linha[0], CultureInfo.InvariantCulture);
                double b = double.Parse(linha[1], CultureInfo.InvariantCulture);
                double c = double.Parse(linha[2], CultureInfo.InvariantCulture);

                double media = (a * 2.0 + b * 3.0 + c * 5.0) / 10.0;

                Console.WriteLine(media.ToString("F1", CultureInfo.InvariantCulture));
            }
        }
    }
}
