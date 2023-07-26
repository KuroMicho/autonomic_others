using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;
 
class JSONMenuIDs
{
    public static string line = null;
 
    static void Main(string[] args)
    {
        List<string> readFileLines = ReadFile(args[0]);
        List<int> sumOfIDs = SumOfIDs(readFileLines);
        PrintSum(sumOfIDs);
    }
 
    public static List<string> ReadFile(string fileName)
    {
        List<string> readFile = new List<string>();
        StreamReader reader = new StreamReader(fileName);
 
        using (reader)
        {
            line = reader.ReadLine();
 
            while (line != null)
            {
                readFile.Add(line);
                line = reader.ReadLine();
            }
        }
 
        return readFile;
    }
 
    public static List<int> SumOfIDs(List<string> jsonFile)
    {
        List<int> sumOfIDs = new List<int>();
        int length = jsonFile.Count;
        int indexStartLabel = 0;
        int indexEndLabel = 0;
        int sum = 0;
        string label = "\"Label ";
        string endLabel = "\"";
        string fullLabel = null;
         
        for (int i = 0; i < length; i++)
        {
            line = jsonFile[i];
            indexStartLabel = line.IndexOf(label);
 
            while (indexStartLabel != -1)
            {
                indexEndLabel = line.IndexOf(endLabel, indexStartLabel + 1);
                fullLabel = line.Substring(indexStartLabel, indexEndLabel - indexStartLabel);
                sum += Convert.ToInt32(Regex.Match(fullLabel, @"-?\d+").Value);
                indexStartLabel = line.IndexOf(label, indexEndLabel + 1);
            }
             
            sumOfIDs.Add(sum);
            sum = 0;
        }
 
 
        return sumOfIDs;
    }
 
    public static void PrintSum(List<int> sumOfIDs)
    {
        foreach (var sum in sumOfIDs)
        {
            Console.WriteLine(sum);
        }
    }
}