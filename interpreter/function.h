#ifndef _FUNCTION_H_
#define _FUNCTION_H_

int lsh_launch(char **args);
int lsh_cd(char **args);
int lsh_help(char **args);
int lsh_exit(char **args);
extern char *builtin_str[];
int lsh_num_builtins();

#endif
