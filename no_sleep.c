#include <windows.h>
#include <stdio.h>

int running;

BOOL WINAPI consoleHandler(DWORD signal) {
  if (signal == CTRL_C_EVENT) {
    running = FALSE;
    return TRUE;
  }
  return FALSE;
}

int main(int argc, char const *argv[])
{
  running = TRUE;
  if (!SetConsoleCtrlHandler(consoleHandler, TRUE)) {
    puts("ERROR: Could not set control handler");
    return 1;
  }
  SetThreadExecutionState(0x80000041);
  puts("I will not sleep until you Ctrl-C.");
  while (running && getchar() != EOF) {
    Sleep(0);
  }
  SetThreadExecutionState(0x80000000);
  puts("I'm sleepy now.");
  return 0;
}
