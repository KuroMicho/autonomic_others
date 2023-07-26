using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
 
class Program
{
    public static char firstCharacter = '\0';
    static void Main(string[] args)
    {
        StreamReader reader = new StreamReader(args[0]);
        List<string> lines = new List<string>();
        List<char> results = new List<char>();
 
        using (reader)
        {
            string line = reader.ReadLine();
 
            while (line != null)
            {
                lines.Add(line);
                line = reader.ReadLine();
            }
        }
 
        int length = lines.Count;
 
        for (int i = 0; i < length; i++)
        {
            firstCharacter = FirstCharacter(lines[i]);
            results.Add(firstCharacter);
        }
 
        foreach (var result in results)
        {
            Console.WriteLine(result);
        }
    }
 
    public static char FirstCharacter(string line)
    {
        int length = line.Length;
        int count = 0;
 
        for (int i = 0; i < length; i++)
        {
            count = line.Count(x => x == line[i]);
            if(count == 1)
            {
                firstCharacter = line[i];
                break;
            }
        }
 
        return firstCharacter;
    }
}