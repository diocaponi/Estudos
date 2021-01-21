using System;
using System.Globalization;

namespace EX2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite quantos produtos deseja digitar para obter o preço médio: ");
            int n = int.Parse(Console.ReadLine());

            Produto[] vet = new Produto[n];

            Console.WriteLine();

            for (int i = 0; i < n; i++)
            {
                Console.WriteLine("Digite o nome e preço o produto #" + i + ": ");
                string nome = Console.ReadLine();
                double preco = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);
                vet[i] = new Produto { Nome = nome, Preco = preco };
                Console.WriteLine();
            }

            double soma = 0.0;

            for (int i = 0; i < n; i++)
            {
                soma += vet[i].Preco;
            }

            double media = soma / n;
            Console.WriteLine("Preço médio = " + media.ToString("F2", CultureInfo.InvariantCulture));
        }
    }
}
