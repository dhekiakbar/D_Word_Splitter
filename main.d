import std.stdio;
import std.file;
import std.string;

import check_word;

void main()
{
    write("Input your txt file path = ");
    string filename = readln().strip;
    string content;
    try
    {
        content = readText(filename).replace("\n", " ");
    }
    catch (Exception e)
    {
        writeln("-------------------------");
        writeln("failed to load file");
    }

    string[] split = slice(content); //splitting string into an array
    writeln(split);
    int character = countChar(split); //counting alphabetical char
    int number = countNum(split); //counting number
    writeln("Character Count = ", character);
    writeln("Word Count = ", split.length);
    writeln("Number Count = ", number);
    string[] unique = findUniqueChar(split);
    writeln("Unique char = ", unique);
}
