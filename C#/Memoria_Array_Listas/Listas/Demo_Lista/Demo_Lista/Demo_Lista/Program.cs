using System;
using System.Collections.Generic;

namespace Demo_Lista
{
    class Program
    {
        static void Main(string[] args)
        {
            List<string> list = new List<string>();
            
            // ADD - Adicionar item na lista
            list.Add("Maria");
            list.Add("Alex");
            list.Add("Bob");
            list.Add("Anna");
            
            // INSERT - Insere item na posição indicada
            list.Insert(2, "Marco");
            
            // Exibir toda lista
            foreach (string obj in list)
            {
                Console.WriteLine(obj);
            }
            
            // COUNT - Quantidade de itens na lista
            Console.WriteLine("List count: " + list.Count);
            
            // FIND - Localiza via predicado posição desejada
            string s1 = list.Find(x => x[0] == 'A'); // Primeira posição do nome que comece com 'A'
            Console.WriteLine("First 'A': " + s1);
            
            // FIND - Localiza via predicado última posição desejada
            string s2 = list.FindLast(x => x[0] == 'A'); // Última posição do nome que comece com 'A'
            Console.WriteLine("Last 'A': " + s2);
            
            // FINDINDEX - Localiza o índice do item via predicado
            int pos1 = list.FindIndex(x => x[0] == 'A'); // Índice do primeiro nome que começa com 'A'
            Console.WriteLine("First position 'A': " + pos1);
            
            // FINDLASTINDEX - Localiza a última posição do item indicado no predicado
            int pos2 = list.FindLastIndex(x => x[0] == 'A'); // Índice do último nome que começa com 'A'
            Console.WriteLine("Last position 'A': " + pos2);
            
            // FINDALL - Filtra o indicado no predicado, para isso cria uma nova lista
            List<string> list2 = list.FindAll(x => x.Length == 5); // Filtra todos nomes que contenham mais de 5 caracteres
            
            Console.WriteLine("---------------------");
            
            // Exibir a nova lista gerada acima
            foreach (string obj in list2)
            {
                Console.WriteLine(obj);
            }
            
            // REMOVE - Remove da lista o item indicado
            list.Remove("Alex");
            Console.WriteLine("---------------------");
            foreach (string obj in list)
            {
                Console.WriteLine(obj);
            }
            
            // REMOVEALL - Remove todos itens que satisfaçam a condição do predicado
            list.RemoveAll(x => x[0] == 'M'); // Todos nomes que comecem com 'M'
            Console.WriteLine("---------------------");
            foreach (string obj in list)
            {
                Console.WriteLine(obj);
            }
        }
    }
}
