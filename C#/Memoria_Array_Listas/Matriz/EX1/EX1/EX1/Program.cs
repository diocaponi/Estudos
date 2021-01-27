using System;

namespace EX1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite a ordem da matriz: ");
            int n = int.Parse(Console.ReadLine());

            int[,] mat = new int[n, n];

            Console.WriteLine("Digite a matriz separando os elementos por espaço e as linhas por ENTER: ");
            for (int i = 0; i < n; i++)
            {
                string[] values = Console.ReadLine().Split(' ');
                for (int j = 0; j < n; j++)
                {
                    mat[i, j] = int.Parse(values[j]);
                }
            }

            Console.WriteLine("Diagonal principal:");
            for (int i = 0; i < n; i++)
            {
                Console.Write(mat[i, i] + " ");
            }
            Console.WriteLine();
            Console.WriteLine();

            int count = 0;
            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < n; j++)
                {
                    if (mat[i, j] < 0)
                    {
                        count++;
                    }
                }
            }
            Console.WriteLine("Número negativos: " + count);
        }
    }
}
