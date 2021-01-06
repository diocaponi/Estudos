using System;
using System.Globalization;

namespace EX2
{
    class Program
    {
        static void Main(string[] args)
        {
            double pi = 3.14159;
            
            Console.Write("Digite o raio do círculo: ");
            double raio = Double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

            double area = pi * (Math.Pow(raio, 2));

            Console.Write("A = " + area.ToString("F4", CultureInfo.InvariantCulture));
        }
    }
}
