using System;

namespace EX6
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite um número inteiro para saber seus divisores: ");
            int n = int.Parse(Console.ReadLine());

            Console.WriteLine("Os divisores de " + n + " são: ");
            for (int i = 1; i <= n; i++)
            {
                if (n % i == 0)
                {
                    Console.WriteLine(i);
                }
            }
        }
    }
}
