#include "function.h" 
#include <stdio.h>
#include <string.h>

char *builtin_str[];
int lsh_num_builtins();

int lsh_help(char **args)
{
  int i;
  printf("Shell-Interpreter\n");
  printf("The following functions are available:\n");

  for (i = 0; i < lsh_num_builtins(); i++) {
    printf("  %s\n", builtin_str[i]);
  }

  printf("Use the man command for information on other programs.\n");
  return 1;
}
