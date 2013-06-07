/*
File input-output library for Lithium-OS
Developed by Alexander Kitaev
COPYLEFT Alexander Kitaev
*/

void createFile(const char* name);

void mkdir(const char* name);

char* getFileContents(const char* name);

void editFile(const char* name, const char* contents);

void appendToFile(const char* name, const char* contents);

void deleteFile(const char* name);

bool fileExists(const char* name);
