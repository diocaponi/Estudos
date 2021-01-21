using System;

namespace EX2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite um número inteiro: ");
            int n = int.Parse(Console.ReadLine());

            if (n % 2 == 0)
            {
                Console.WriteLine("Número PAR");
            }
            else
            {
                Console.WriteLine("Número IMPAR");
            }

        }
    }
}
