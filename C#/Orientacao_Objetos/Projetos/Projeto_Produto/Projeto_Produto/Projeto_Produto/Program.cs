using System;
using System.Globalization;

namespace Projeto_Produto
{
    class Program
    {
        static void Main(string[] args)
        {
            Produto p = new Produto();

            Console.WriteLine("Digite as informações do produto:");
            
            Console.Write("Nome: ");
            p.Nome = Console.ReadLine();

            Console.Write("Preço: ");
            p.Preco = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

            Console.Write("Quantidade em estoque: ");
            p.Quantidade = int.Parse(Console.ReadLine());

            Console.WriteLine("Dados do Produto: " + p);

            Console.WriteLine();

            Console.Write("Digite quantos produtos deseja adicionar ao estoque: ");
            int qtde = int.Parse(Console.ReadLine());
            p.AdicionarProdutos(qtde);

            Console.WriteLine();

            Console.WriteLine("Dados do Produto: " + p);

            Console.WriteLine();

            Console.Write("Digite quantos produtos deseja remover do estoque: ");
            qtde = int.Parse(Console.ReadLine());
            p.RemoverProdutos(qtde);

            Console.WriteLine();

            Console.WriteLine("Dados do Produto: " + p);

        }
    }
}
