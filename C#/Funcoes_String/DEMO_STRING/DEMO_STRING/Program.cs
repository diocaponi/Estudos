using System;

namespace DEMO_STRING
{
    class Program
    {
        static void Main(string[] args)
        {
            string original = "abcde FGHIJ ABC abc DEFG ";
           
            // TOUPPER - Converte todo o texto para caixa alta
            string s1 = original.ToUpper();

            // TOLOWER - Converte todo o texto para caixa baixa
            string s2 = original.ToLower();
            
            // TRIM - Apagar espaços em branco antes e depois da String 
            string s3 = original.Trim();
            
            // INDEXOF - Função de pesquisa, no caso procura o primerio "bc"
            int n1 = original.IndexOf("bc");
            
            // LASTINDEXOF - Função de pesquisa para última posição, no caso o último "bc"
            int n2 = original.LastIndexOf("bc");

            // SUBSTRING - Função para "recortar" uma string 
            // A partir do índice 3
            string s4 = original.Substring(3); 
            // 5 caracteres partindo do índice 3 
            string s5 = original.Substring(3, 5);
            
            // REPLACE - Substitui uma string por outra, no caso 'a' por 'x'
            string s6 = original.Replace('a', 'x');
            // também pode ser usado com strings compostas
            string s7 = original.Replace("abc", "xy");
            
            //ISNULLOREMPTY - Testa se conteúdo é nulo ou vazio
            bool b1 = String.IsNullOrEmpty(original);
            
            //ISNULLORWHITESPACE - Testar se é nulo ou espaço em branco
            bool b2 = String.IsNullOrWhiteSpace(original);
            
            Console.WriteLine("String Original: -" + original + "-");
            Console.WriteLine();
            Console.WriteLine("ToUpper: -" + s1 + "-");
            Console.WriteLine("ToLower: -" + s2 + "-");
            Console.WriteLine("Trim: -" + s3 + "-");
            Console.WriteLine("IndexOf('bc'): " + n1);
            Console.WriteLine("LastIndexOf('bc'): " + n2);
            Console.WriteLine("Substring(3): -" + s4 + "-");
            Console.WriteLine("Substring(3, 5): -" + s5 + "-");
            Console.WriteLine("Replace('a', 'x'): -" + s6 + "-");
            Console.WriteLine("Replace('abc', 'xy'): -" + s7 + "-");
            Console.WriteLine("IsNullOrEmpty: " + b1);
            Console.WriteLine("IsNullOrWhiteSpace: " + b2);
        }
    }
}
