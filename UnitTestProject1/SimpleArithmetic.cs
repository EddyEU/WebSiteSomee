using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestProject1
{
    public class SimpleArithmetic
    {
        public decimal Addition(int x, int y)
        {
            return x + y;
        }

        public decimal Subtraction(int x, int y)
        {
            return x - y;
        }

        public decimal Multiplication(int x, int y)
        {
            return x * y;
        }

        public decimal Division(int x, int y)
        {
            return x / y;
        }
    }
}
