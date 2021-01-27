using System;

namespace EX1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite o número (1 a 7) para retornar o dia da semana: ");
            int x = int.Parse(Console.ReadLine());

            string dia;

            switch (x)
            {
                case 1:
                    dia = "Domingo";
                    break;
                case 2:
                    dia = "Segunda";
                    break;
                case 3:
                    dia = "Terça";
                    break;
                case 4:
                    dia = "Quarta";
                    break;
                case 5:
                    dia = "Quinta";
                    break;
                case 6:
                    dia = "Sexta";
                    break;
                case 7:
                    dia = "Sábado";
                    break;
                default:
                    dia = "Número inválido";
                    break;
            }

            Console.WriteLine("Dia: " + dia);
        }
    }
}
