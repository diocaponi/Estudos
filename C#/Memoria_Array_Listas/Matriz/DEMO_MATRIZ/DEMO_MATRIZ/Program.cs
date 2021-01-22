using System;

namespace DEMO_MATRIZ
{
    class Program
    {
        static void Main(string[] args)
        {
            // Declaração matriz
            double[,] mat = new double[2, 3];
            
            // LENGTH - Quantos elementos tem no total
            Console.WriteLine(mat.Length);
            
            // RANK - Primeira dimensão matriz, no caso qtde de linhas
            Console.WriteLine(mat.Rank);

            // GETLENGTH - Mais o parametro, exibe a dimensao da matriz 
            Console.WriteLine(mat.GetLength(0));
            
            Console.WriteLine(mat.GetLength(1));
        }
    }
}
