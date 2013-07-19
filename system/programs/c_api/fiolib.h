/*
File input-output library for Lithium-OS
Developed by Alexander Kitaev
COPYLEFT Alexander Kitaev
*/

#ifndef LITHIUM_OS_FIOLIB_H_INCLUDED
#define LITHIUM_OS_FIOLIB_H_INCLUDED

int createFile(char* name);

int mkdir(char* name);

char* getFileContents(char* name);

int editFile(char* name, char* contents);

int appendToFile(char* name, char* contents);

int deleteFile(char* name);

int fileExists(char* name);

#endif // #ifndef LITHIUM_OS_FIOLIB_H_INCLUDED
