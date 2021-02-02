using System;

namespace DateTimeKind
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime d1 = new DateTime(2000, 8, 15, 13, 5, 58, System.DateTimeKind.Local);
            DateTime d2 = new DateTime(2000, 8, 15, 13, 5, 58, System.DateTimeKind.Utc);
            DateTime d3 = new DateTime(2000, 8, 15, 13, 5, 58);
            
            Console.WriteLine("d1: " + d1);
            
            // KIND - Exibe tipo do d1
            Console.WriteLine("d1 Kind: " + d1.Kind);
            
            // Altera o horário para o horário local 
            Console.WriteLine("d1 to Local: " + d1.ToLocalTime()); // Como já é o atual, não sofre mudançda

            // Altera o horário para horário universal
            Console.WriteLine("d1 to Utc: " + d1.ToUniversalTime()); // Adiciona 3hrs, como o BRASIL GMT -3
            
            Console.WriteLine();
            
            Console.WriteLine("d2: " + d2);
            Console.WriteLine("d2 Kind: " + d2.Kind);
            Console.WriteLine("d2 to Local: " + d2.ToLocalTime());
            Console.WriteLine("d2 to Utc: " + d2.ToUniversalTime());
            Console.WriteLine();
            
            Console.WriteLine("d3: " + d3);
            Console.WriteLine("d3 Kind: " + d3.Kind);
            Console.WriteLine("d3 to Local: " + d3.ToLocalTime());
            Console.WriteLine("d3 to Utc: " + d3.ToUniversalTime());
        }
    }
}
