﻿using System;
using System.Collections.Generic;
using System.Text;

namespace EX_Params
{
    class Calculadora
    {
        public static int Soma(params int[] numeros)
        {
            int soma = 0;
            for (int i = 0; i < numeros.Length; i++)
            {
                soma += numeros[i];
            }
            return soma;

        }

    }
}