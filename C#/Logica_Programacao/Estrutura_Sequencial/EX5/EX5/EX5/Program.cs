using System;
using System.Globalization;

namespace EX5
{
    class Program
    {
        static void Main(string[] args)
        {
            // Formato de entrada: cod qtde preco 
            // Exemplo:
            // Entrada: 12 1 5.30  Saída: VALOR A PAGAR: R$ 15.50

            int peca1, peca2, qte1, qte2;
            double preco1, preco2, total;

            Console.Write("Digite as informações da peça 1 [cod qtde preco]: ");
            string[] valores = Console.ReadLine().Split(' ');
            peca1 = int.Parse(valores[0]);
            qte1 = int.Parse(valores[1]);
            preco1 = double.Parse(valores[2], CultureInfo.InvariantCulture);

            Console.Write("Digite as informações da peça 2 [cod qtde preco]: ");
            valores = Console.ReadLine().Split(' ');
            peca2 = int.Parse(valores[0]);
            qte2 = int.Parse(valores[1]);
            preco2 = double.Parse(valores[2], CultureInfo.InvariantCulture);

            total = ( preco1 * qte1 ) + ( preco2 * qte2 );

            Console.WriteLine("Valor devido: R$ " + total.ToString("F2", CultureInfo.InvariantCulture));

        }
    }
}
