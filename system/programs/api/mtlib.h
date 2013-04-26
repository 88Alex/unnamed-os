/*
Multi-threading functions for Lithium-OS.
Developed by Alexander Kitaev
COPYLEFT Alexander Kitaev
*/

//NOTE: The system takes care of creating processes.

int getFreeMemory();

void addProc(int location);

void endProc();

void wait();
