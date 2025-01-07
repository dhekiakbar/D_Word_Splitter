import std.stdio;
import std.file;
import std.string;

import check_word;

void main()
{
    writeln("Program Menghitung jumlah huruf dan karakter");
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
        writeln("Gagal memuat file");
    }

    string[] split = slice(content); //Memisah kata per kata
    writeln(split);
    int character = countChar(split);
    int number = countNum(split);
    writeln("Character Count = ", character);
    writeln("Word Count = ", split.length);
    writeln("Number Count = ", number);
    string[] unique = findUniqueChar(split);
    writeln("Unique char = ", unique);
}
