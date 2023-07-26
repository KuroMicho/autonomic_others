using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Globalization;
 
class DeltaTime
{
    public static string line = null;
 
    static void Main(string[] args)
    {
        List<string> readFile = ReadFileLines(args[0]);
        List<TimeSpan> deltaTime = FindDeltaTime(readFile);
        PrintDeltaTime(deltaTime);
    }
 
    public static List<string> ReadFileLines(string fileName)
    {
        List<string> readFileLines = new List<string>();
        StreamReader reader = new StreamReader(fileName);
 
        using (reader)
        {
            line = reader.ReadLine();
 
            while (line != null)
            {
                readFileLines.Add(line);
                line = reader.ReadLine();
            }
        }
 
        return readFileLines;
    }
 
    public static List<TimeSpan> FindDeltaTime(List<string> fileLines)
    {
        List<TimeSpan> findDeltaTime = new List<TimeSpan>();
        int length = fileLines.Count;
        string[] times = new string[2];
        char[] separator = new char[] { ' ' };
        DateTime firstTime = new DateTime();
        DateTime secondTime = new DateTime();
        TimeSpan diff = new TimeSpan();
 
        for (int i = 0; i < length; i++)
        {
            line = fileLines[i];
            times = line.Split(separator, StringSplitOptions.RemoveEmptyEntries).ToArray();
 
            firstTime = DateTime.Parse(times[0]);
            secondTime = DateTime.Parse(times[1]);
 
            diff = secondTime.Subtract(firstTime);
 
            if(diff.Hours < 0 || diff.Minutes < 0 || diff.Seconds < 0)
            {
                diff = diff.Negate();
            }
             
            findDeltaTime.Add(diff);
        }
 
        return findDeltaTime;
    }
 
    public static void PrintDeltaTime(List<TimeSpan> times)
    {
        foreach (var time in times)
        {
            Console.WriteLine(time);
        }
    }
}