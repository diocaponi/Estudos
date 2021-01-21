using System;

namespace EX1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite um número inteiro: ");

            int x = int.Parse(Console.ReadLine());

            Console.WriteLine("Os número ímpares até " + x + " são: ");

            for (int i = 1; i <= x; i++)
            {
                if (i % 2 != 0)
                {
                    Console.WriteLine(i);
                }
            }
        }
    }
}
