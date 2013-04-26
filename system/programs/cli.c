/*
Command-Line Interface for Lithium-OS
Developed by Alexander Kitaev
COPYLEFT Alexander Kitaev
*/

#include "api/ciolib.h"

char[] helpMessage1 = "exit- exits program\nhelp- displays help\n";
char[] helpMessage2 = "version- displays version\ninfo- displays system information\n";
char[] helpMessage3 = "Anything else- loads a program with that name.";

int main()
{
    print("Welcome to Lithium-OS 0.1.0");
    while(true)
    {
        char[] userInput = input();
        if(compareTwoStrings(userInput, "exit")) break;
        else if(compareTwoStrings(userInput, "version")) print("Version 0.1.0");
        else if(compareTwoStrings(userInput, "help"))
        {
            print(helpMessage1);
            print(helpMessage2);
            print(helpMessage3);
        }
    }
    return 0;
}

bool compareTwoStrings(const char* first, const char* second)
{
    if(sizeof first != sizeof second) return false;
    for(int i=0; i<(sizeof first); i++)
    {
        if(first[i] != second[i]) return false;
    }
    return true;
}
