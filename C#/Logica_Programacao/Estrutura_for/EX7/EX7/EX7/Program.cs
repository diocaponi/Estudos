using System;

namespace EX7
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite um número inteiro positivo: ");
            int n = int.Parse(Console.ReadLine());

            for (int i = 1; i <= n; i++)
            {
                int linha = i;
                int quadrado = i * i;
                int cubo = i * i * i;
                Console.WriteLine("#" + $"{linha}, " + "Linha ao quadrado: " + $"{quadrado}, " + "Linha ao cubo: " + $"{cubo} ");
            }
        }
    }
}
