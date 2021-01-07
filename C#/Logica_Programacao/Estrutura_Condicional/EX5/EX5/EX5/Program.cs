using System;
using System.Globalization;

namespace EX5
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(" COD    ESPECIFICACAO       PREÇO ");
            Console.WriteLine(" 1      CACHORRO QUENTE     4.00  ");
            Console.WriteLine(" 2      X - SALADA          4.50  ");
            Console.WriteLine(" 3      X - BACON           5.00  ");
            Console.WriteLine(" 4      TORRADA             2.00  ");
            Console.WriteLine(" 5      REFRIGERANTE        1.50  ");
            Console.WriteLine(" ");

            Console.Write("Digite o código do produto e a quantidade que deseja [A B]: ");
            string[] valores = Console.ReadLine().Split(' ');
            int cod = int.Parse(valores[0]);
            int qtd = int.Parse(valores[1]);

            double total;
            if (cod == 1)
            {
                total = qtd * 4.0;
            }
            else if (cod == 2)
            {
                total = qtd * 4.5;
            }
            else if (cod == 3)
            {
                total = qtd * 5.0;
            }
            else if (cod == 4)
            {
                total = qtd * 2.0;
            }
            else
            {
                total = qtd * 1.5;
            }
            Console.WriteLine(" ");
            Console.WriteLine("Total: R$ " + total.ToString("F2", CultureInfo.InvariantCulture));

        }
    }
}
