using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
 
class SumОfDigits
{
    public static string line = null;
    public static int length = 0;
 
    static void Main(string[] args)
    {
        List<string> numbers = NumbersFromFile(args[0]);
         
        List<int> sumOfDigits = SumOfDigits(numbers);
 
        Print(sumOfDigits);
    }
 
    public static List<string> NumbersFromFile(string fileName)
    {
        List<string> numbersFromFile = new List<string>();
        StreamReader reader = new StreamReader(fileName);
 
        using (reader)
        {
            line = reader.ReadLine();
 
            while (line != null)
            {
                numbersFromFile.Add(line);
                line = reader.ReadLine();
            }
        }
 
        return numbersFromFile;
    }
 
    public static List<int> SumOfDigits(List<string> numbersFromFile)
    {
        List<int> digits = new List<int>();
        List<int> sumOfDigits = new List<int>();
        length = numbersFromFile.Count;
         
 
        for (int i = 0; i < length; i++)
        {
            line = numbersFromFile[i];
            digits = line.Where(x => Char.IsDigit(x) == true).Select(x => Convert.ToInt32(x.ToString())).ToList();
            sumOfDigits.Add(digits.Sum());
        }
 
 
        return sumOfDigits;
    }
 
    public static void Print(List<int> sumOfDigits)
    {
        foreach (var sum in sumOfDigits)
        {
            Console.WriteLine(sum);
        }
    }
}