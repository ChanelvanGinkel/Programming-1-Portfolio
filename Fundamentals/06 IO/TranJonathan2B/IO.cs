using System;
using System.IO;
using System.Text;

class Test
{
    public static void Main()
    {
        FileStream F = new FileStream("output.txt",
            FileMode.Create);
        F.Close();

        string[] names = new string[] { 
            "Who is your inspiration to be a better person?",
            "What without fail always makes you laugh?",
            "First thing in the morning, what is the first thing that comes to mind?",
            "If you could ask the president one question, what would it be and why?",
            "What is the best thing about your dad/mom?",
            "Have you ever had a now or never moment? If so, when was it?",
            "What was your favorite thing to do during your summers as a kid?",
            "If you could have any animal as a pet what would it be?",
            "What is your very first memory?",
            "What is one life lesson that you learned from a teacher that changed your perspective on life that you will never forget?" };
        using (StreamWriter sw = new StreamWriter("output.txt"))
        {
            foreach (string s in names)
            {
                sw.WriteLine(s);
            }
        }

        
        using (StreamReader sr = new StreamReader("output.txt"))
        {

                var lines = File.ReadAllLines("output.txt");
                var r = new Random();
                var randomLineNumber = r.Next(0, lines.Length - 1);
                var P = lines[randomLineNumber];
                Console.WriteLine(P);
                Console.ReadLine();


            Console.ReadKey();
        }

    }
}
