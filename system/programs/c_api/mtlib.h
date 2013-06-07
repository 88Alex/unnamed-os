/*
Multi-threading functions for Lithium-OS.
Developed by Alexander Kitaev
COPYLEFT Alexander Kitaev
*/

#ifndef LITHIUM_OS_MTLIB_H_INCLUDED
#define LITHIUM_OS_MTLIB_H_INCLUDED

int getFreeMemory();

void addProc(int location);

void endProc();

void wait();

#endif // #ifndef LITHIUM_OS_MTLIB_H_INCLUDED
