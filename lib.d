module check_word;

import std.stdio;
import std.string;
import std.conv;

//Function for Slicing Space
string[] slice(string text)
{
    string[] sliced;
    int si1 = 0, si2 = 0, word_count = 0;
    for (int i = 0; i < text.length; i++)
    {
        if (text[i] == ' ')
        {
            si2 = i;
            sliced ~= text[si1 .. si2];
            si1 = si2 + 1;
            word_count++;
            si2 = i;
        }
    }
    sliced.length++;
    sliced[word_count] = text[si2 .. $];
    return sliced;
}

//Function for counting Character
int countChar(string[] str)
{
    int count = 0;
    for (int i = 0; i < str.length; i++)
    {
        for (int j = 0; j < str[i].length; j++)
        {
            if ((str[i][j] >= 97 && str[i][j] <= 122) || (str[i][j] >= 65 && str[i][j] <= 90))
            {
                count++;
            }
        }
    }
    return count;
}

//Function for counting Number
int countNum(string[] str)
{
    int count = 0;
    for (int i = 0; i < str.length; i++)
    {
        for (int j = 0; j < str[i].length; j++)
        {
            if (str[i][j] >= 48 && str[i][j] <= 57)
            {
                count++;
            }
        }
    }
    return count;
}

string[] findUniqueChar(string[] text)
{
    int[string] charFrequency;
    string[] uniqueChars;

    // Iterate string in array
    for (int i = 0; i < text.length; i++)
    {
        text[i] = toUpper(text[i]);
        for (int j = 0; j < text[i].length; j++)
        {
            string c = text[i][j].to!string;
            if (c >= "A" && c <= "Z")
            {
                charFrequency[c]++;
            }
        }
    }
    foreach (key, value; charFrequency)
    {
        if (value == 1)
        { // if only appeared once
            uniqueChars ~= key;
        }
    }

    return uniqueChars;
}
