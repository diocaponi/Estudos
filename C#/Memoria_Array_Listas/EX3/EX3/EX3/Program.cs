using System;

namespace EX3
{
    class Program
    {
        static void Main(string[] args) {
            
            Estudante[] vet = new Estudante[10]; // Quartos 0 - 9
            Console.Write("Quantos quartos serão alugados? ");
            int n = int.Parse(Console.ReadLine());
            
            for (int i = 1; i <= n; i++) {
                Console.WriteLine();
                
                Console.WriteLine($"Aluguel #{i}:");
                Console.Write("Nome: ");
                string nome = Console.ReadLine();
                
                Console.Write("Email: ");
                string email = Console.ReadLine();
                
                Console.Write("Quarto: ");
                int quarto = int.Parse(Console.ReadLine());
                vet[quarto] = new Estudante(nome, email); // O índice do vetor torna-se o número do quarto 
            }
            
            Console.WriteLine();
            
            Console.WriteLine("Quartos ocupados:");
            
            for (int i = 0; i < 10; i++) {
                if (vet[i] != null) { // Quando o índice for diferente de nulo, significa que o quarto está ocupado
                    Console.WriteLine(i + ": " + vet[i]);
                }
            }

        }
    }
}
