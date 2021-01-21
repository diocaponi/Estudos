using System;

namespace EX1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite um número inteiro: ");
            int n = int.Parse(Console.ReadLine());

            if (n > 0)
            {
                Console.WriteLine("Positivo");
            }
            else
            {
                Console.WriteLine("Negativo");
            }

        }
    }
}
