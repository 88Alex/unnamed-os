/*
Command-Line Interface for Lithium-OS
Developed by Alexander Kitaev
COPYLEFT Alexander Kitaev
*/

#include "api/ciolib.h"
#include "api/mtlib.h"
#include "api/fiolib.h"

char[] helpMessage1 = "exit- exits program\nhelp- displays help\n";
char[] helpMessage2 = "version- displays version\ninfo- displays system information\n";
char[] helpMessage3 = "programs- displays a list of all the programs on the system.\n";
char[] helpMessage4 = "Anything else- loads a program with that name.";

char[] infoMessage1 = "Lithium-OS v0.1.0\n";
char[] infoMessage2 = "An operating system developed by Alexander Kitaev.\n";
char[] infoMessage3 = "COPYLEFT Alexander Kitaev, 2013.\n";

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
            print(helpMessage4);
        }
        else if(compareTwoStrings(userInput, "info"))
        {
            print(infoMessage1);
            print(infoMessage2);
            print(infoMessage3);
        }
        else
        {
            //Now we know it's not a built-in command
            if(!fileExists(userInput))
            {
                print("Error: no such command or program.\n");
            }
            else
            {
                //load file contents into memory, and execute them
            }
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
