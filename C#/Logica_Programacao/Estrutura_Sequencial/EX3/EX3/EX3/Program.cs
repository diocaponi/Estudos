using System;

namespace EX3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite #1: ");
            int a = int.Parse(Console.ReadLine());

            Console.Write("Digite #2: ");
            int b = int.Parse(Console.ReadLine());

            Console.Write("Digite #3: ");
            int c = int.Parse(Console.ReadLine());

            Console.Write("Digite #4: ");
            int d = int.Parse(Console.ReadLine());

            int diferenca = (a * b) - (c * d);

            Console.Write("DIFERENCA: " + diferenca);
        
        }
    }
}
