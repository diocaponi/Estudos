using System;

namespace Instancia_TimeSpan
{
    class Program
    {
        static void Main(string[] args)
        {
            /// MAX, MIN, ZERO
            
            // Armazena valor máximo que pode ser armazenado em um TimeSpan
            // TimeSpan t1 = TimeSpan.MaxValue;

            // Armazena valor mínimo que pode ser armazenado em um TimeSpan
            //TimeSpan t2 = TimeSpan.MinValue;

            // Armazena TimeSpan zerado
            //TimeSpan t3 = TimeSpan.Zero;
            
            // Console.WriteLine(t1);
            // Console.WriteLine(t2);
            // Console.WriteLine(t3);

            /// PROPRIEDADES

            TimeSpan t = new TimeSpan(2, 3, 5, 7, 11);
            Console.WriteLine(t);
            
            // Qtd de dias que contém o TimeSpan definido
            Console.WriteLine("Days: " + t.Days);

            // Qtd de horas que contém o TimeSpan definido
            Console.WriteLine("Hours: " + t.Hours);

            // Qtd de minutos que contém o TimeSpan definido
            Console.WriteLine("Minutes: " + t.Minutes);

            // Qtd de milisegundos que contém o TimeSpan definido
            Console.WriteLine("Milliseconds: " + t.Milliseconds);

            // Qtd de segundos que contém o TimeSpan definido
            Console.WriteLine("Seconds: " + t.Seconds);

            // Qtd de Ticks que contém o TimeSpan definido
            Console.WriteLine("Ticks: " + t.Ticks);

            // Quando definido TOTAL antes, é retornado número "quebrado" 
            Console.WriteLine("TotalDays: " + t.TotalDays);
            Console.WriteLine("TotalHours: " + t.TotalHours);
            Console.WriteLine("TotalMinutes: " + t.TotalMinutes);
            Console.WriteLine("TotalSeconds: " + t.TotalSeconds);
            Console.WriteLine("TotalMilliseconds: " + t.TotalMilliseconds);

            Console.WriteLine();

            /// OPERACOES

            TimeSpan t1 = new TimeSpan(1, 30, 10);
            TimeSpan t2 = new TimeSpan(0, 10, 5);
            
            // Soma t1 + t2
            TimeSpan sum = t1.Add(t2);
            
            // Subtração t1 - t2 
            TimeSpan dif = t1.Subtract(t2);

            // Multiplicação t2 * 2
            TimeSpan mult = t2.Multiply(2.0);

            // Divisão t2 / 2
            TimeSpan div = t2.Divide(2.0);
                        
            Console.WriteLine(t1);
            Console.WriteLine(t2);
            Console.WriteLine(sum);
            Console.WriteLine(dif);
            Console.WriteLine(mult);
            Console.WriteLine(div);

        }
    }
}
