/*
File input-output library for Lithium-OS
Developed by Alexander Kitaev
COPYLEFT Alexander Kitaev
*/

#ifndef LITHIUM_OS_FIOLIB_H_INCLUDED
#define LITHIUM_OS_FIOLIB_H_INCLUDED

void createFile(char* name);

void mkdir(char* name);

char* getFileContents(char* name);

void editFile(char* name, char* contents);

void appendToFile(char* name, char* contents);

void deleteFile(char* name);

bool fileExists(char* name);

#endif // #ifndef LITHIUM_OS_FIOLIB_H_INCLUDED
