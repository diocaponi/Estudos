using System;
using System.Globalization;

namespace DEMO_DATETIME
{
    class Program
    {
        static void Main(string[] args)
        {
            // NOW - Captura data/hora atual do sistema
            DateTime d1 = DateTime.Now;
            // Contrutor - AA, MM, DD, HH, MM, SS (ANO, MES, DIA, HORA, MINUTO, SEGUNDO) 
            // DateTime d1 = new DateTime(2018, 11, 25); // Contrutor para 25/11/2018

            // UTCNOW - Data/Hora atual conforme padrão universal
            DateTime d2 = DateTime.UtcNow;
            
            // TODAY - Data atual, hora zerada
            DateTime d3 = DateTime.Today;

            Console.WriteLine(d1);
            Console.WriteLine(d2);
            Console.WriteLine(d3);

            // Utilização de PARSE, aceita diversos formatos
            /*
            DateTime d1 = DateTime.Parse("2000-08-15");
            DateTime d2 = DateTime.Parse("2000-08-15 13:05:58");
            DateTime d3 = DateTime.Parse("15/08/2000");
            DateTime d4 = DateTime.Parse("15/08/2000 13:05:58");
            
            Console.WriteLine(d1);
            Console.WriteLine(d2);
            Console.WriteLine(d3);
            Console.WriteLine(d4);
            */

            // Utilizando PARSE EXACT - É possível especificar o formato que será utilizado
            /*
            DateTime d1 = DateTime.ParseExact("2000-08-15", "yyyy-MM-dd", CultureInfo.InvariantCulture);
            DateTime d2 = DateTime.ParseExact("15/08/2000 13:05:58", "dd/MM/yyyy HH:mm:ss",
            CultureInfo.InvariantCulture);
            Console.WriteLine(d1);
            Console.WriteLine(d2);
            */

        }
    }
}
