using System;

namespace EX4
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite o horário de inicial e final da partida [INICIO FIM]: ");
            string[] valores = Console.ReadLine().Split(' ');
            int horaInicial = int.Parse(valores[0]);
            int horaFinal = int.Parse(valores[1]);

            int duracao;

            if (horaInicial < horaFinal)
            {
                duracao = horaFinal - horaInicial;
            }
            else
            {
                duracao = 24 - horaInicial + horaFinal;
            }

            Console.WriteLine("A duração da partida foi de: " + duracao + " hora(s).");

        }
    }
}
