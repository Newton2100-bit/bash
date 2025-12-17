#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

char red[] = "\033[1;91m";
char cyan[] = "\033[1;96m";
char white[] = "\033[1;97]";
char end[] = "\033[0m";

int main(int argc , char *argv[]){
  int error;
  // printf("%sProgram name%s <%s %s %s>\n", white, end , cyan, argv[0], end);

  if(argc > 1){
    error = atoi(argv[1]);

  }else{
    printf("what is the error you wanna check ? ");
    scanf("%d", &error);
  }

  errno = error;
  printf("[Explanation %s%d%s] %s%s%s\n", red, error, end, cyan, strerror(error), end);

  return EXIT_SUCCESS;
} 
