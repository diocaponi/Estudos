using System;
using System.Globalization;
using System.Collections.Generic;

namespace EX_LISTA
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.Write("Quantos funcionários serão cadastrados? ");
            int n = int.Parse(Console.ReadLine());

            List<Funcionario> list = new List<Funcionario>();

            for (int i = 1; i <= n; i++)
            {
                Console.WriteLine("Funcionário #" + i + ":");

                Console.Write("ID: ");
                int id = int.Parse(Console.ReadLine());

                Console.Write("Nome: ");
                string nome = Console.ReadLine();

                Console.Write("Salário: ");
                double salario = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

                list.Add(new Funcionario(id, nome, salario));
                Console.WriteLine();

            }

            Console.WriteLine("Digite o ID do funcionário que deseja aumentar o salário: ");
            int buscaId = int.Parse(Console.ReadLine());

            Funcionario funcionario = list.Find(x => x.Id == buscaId);

            if (funcionario != null)
            {
                Console.WriteLine("Digite a porcentagem para aumentar o salário: ");
                double porcentagem = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);
                funcionario.AumentarSalario(porcentagem);
            }
            else
            {
                Console.WriteLine("O ID " + buscaId + " não existe!");
            }

            Console.WriteLine();

            Console.WriteLine("Lista atualizada de funcionários: ");
            foreach (Funcionario obj in list)
            {
                Console.WriteLine(obj);
            }

        }
    }
}
