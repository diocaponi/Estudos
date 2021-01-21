using System;

namespace EX3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite dois números inteiros [A B]: ");
            string[] valores = Console.ReadLine().Split(' ');
            int A = int.Parse(valores[0]);
            int B = int.Parse(valores[1]);

            if (A % B == 0 || B % A == 0)
            {
                Console.WriteLine("São múltiplos.");
            }
            else
            {
                Console.WriteLine("Não são múltiplos.");
            }

        }
    }
}
