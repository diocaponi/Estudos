using System;

namespace Propriedades_DateTime
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime d = new DateTime(2001, 8, 15, 13, 45, 58, 275);
            
            Console.WriteLine(d);
            
            // .Date - Imprime somente data 
            Console.WriteLine("1) Date: " + d.Date);
            
            // .Day - Imprime somente dia
            Console.WriteLine("2) Day: " + d.Day);

            // .DayOfWeek - Imprime o dia da semana (Mon, Tues, etc)
            Console.WriteLine("3) DayOfWeek: " + d.DayOfWeek);
            
            // .DayOfYear - Imprime o dia no ano (dia 1, 2 3... 67.. 200, etc)
            Console.WriteLine("4) DayOfYear: " + d.DayOfYear);
            
            // .Hour - Imprime somente a hora
            Console.WriteLine("5) Hour: " + d.Hour);
            
            // .Kind - tipo da declaração (local, universal)
            Console.WriteLine("6) Kind: " + d.Kind);

            // .Millisecond - Imprime somente o milisegundo
            Console.WriteLine("7) Millisecond: " + d.Millisecond);

            // .Minute - imprime somente o minuto
            Console.WriteLine("8) Minute: " + d.Minute);
            Console.WriteLine("9) Month: " + d.Month);

            // .Second - Imprime apenas o segundo
            Console.WriteLine("10) Second: " + d.Second);
           
            // .Ticks - Imprime apenas a qtd de Ticks
            Console.WriteLine("11) Ticks: " + d.Ticks);
            
            // .TimeofDay - Timespan
            Console.WriteLine("12) TimeOfDay: " + d.TimeOfDay);
            
            // .Year - Imprime somente o ano
            Console.WriteLine("13) Year: " + d.Year);

            Console.WriteLine();
            
            /// IMPRESSÕES STRING DATE TIME

            DateTime dt  = new DateTime(2001, 8, 15, 13, 45, 58);
            
            // Data no formato string - ex: quarta-feira, 15 de agosto de 2001
            string s1 = dt.ToLongDateString();
            
            // Hora no formato string - ex: 13:45:58
            string s2 = dt.ToLongTimeString();

            // Data no formato string resumido - ex: 15/05/2001 
            string s3 = dt.ToShortDateString();

            // Hora no formato string resumido - ex: 13:45
            string s4 = dt.ToShortTimeString();
            
            string s5 = dt.ToString();
            
            // Mascara de formatação
            string s6 = dt.ToString("yyyy-MM-dd HH:mm:ss");

            // Mascara de formatação
            string s7 = dt.ToString("yyyy-MM-dd HH:mm:ss.fff"); //ff - milisegundos
            
            Console.WriteLine(s1);
            Console.WriteLine(s2);
            Console.WriteLine(s3);
            Console.WriteLine(s4);
            Console.WriteLine(s5);
            Console.WriteLine(s6);
            Console.WriteLine(s7);

            Console.WriteLine();

            /// OPERAÇÕES com DateTime 

            DateTime x = new DateTime(2001, 8, 15, 13, 45, 58);

            DateTime y;

            // Adiciona dias no datetime específicado
            y = x.AddDays(2);
            Console.WriteLine(y);
            
            // Adiciona horas no datetime específicado
            y = x.AddHours(5);
            Console.WriteLine(y);

            // Adiciona milisegundos no datetime específicado
            y = x.AddMilliseconds(655);
            Console.WriteLine(y);

            // Adiciona minutos no datetime específicado
            y = x.AddMinutes(30);
            Console.WriteLine(y);

            // Adiciona meses no datetime específicado
            y = x.AddMonths(2);
            Console.WriteLine(y);

            // Adiciona segundos no datetime específicado
            y = x.AddSeconds(25);
            Console.WriteLine(y);

            // Adiciona ticks no datetime específicado
            y = x.AddTicks(1555);
            Console.WriteLine(y);

            // Adiciona anos no datetime específicado
            y = x.AddYears(50);
            Console.WriteLine(y);

            // Diferença entre datas
            // DateTime y = x.Subtract(timeSpan);
            // t = x.Subtract(dateTime);

            // 

        }
    }
}
