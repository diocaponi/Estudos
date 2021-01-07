using System;
using System.Globalization;

namespace EX6
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite um número entre 0 e 100 para saber em qual intervalo ele se encontra: ");
            double num = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

            if (num < 0.0 || num > 100.0)
            {
                Console.WriteLine("Número fora de intervalo");
            }
            else if (num <= 25.0)
            {
                Console.WriteLine("Encontra-se no intervalo [0,25]");
            }
            else if (num <= 50.0)
            {
                Console.WriteLine("Encontra-se no intervalo [25,50]");
            }
            else if (num <= 75.0)
            {
                Console.WriteLine("Encontra-se no intervalo [50,75]");
            }
            else
            {
                Console.WriteLine("Encontra-se no intervalo [75,100]");
            }
        }
    }
}
