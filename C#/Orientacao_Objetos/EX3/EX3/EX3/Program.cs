using System;
using System.Globalization;

namespace EX3
{
    class Program
    {
        static void Main(string[] args)
        {
            Retangulo ret = new Retangulo();

            Console.Write("Digite a largura do retângulo: ");
            ret.Largura = double.Parse(Console.ReadLine());

            Console.Write("Digite a altura do retângulo: ");
            ret.Altura = double.Parse(Console.ReadLine());

            Console.WriteLine("Área: " + ret.Area().ToString("F2", CultureInfo.InvariantCulture));
            Console.WriteLine("Perímetro: " + ret.Perimetro().ToString("F2", CultureInfo.InvariantCulture));
            Console.WriteLine("Diagonal: " + ret.Diagonal().ToString("F2", CultureInfo.InvariantCulture));

        }
    }
}
