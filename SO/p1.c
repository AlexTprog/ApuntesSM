#include <unistd.h>
#include <stdio.h>

int main(int argc,char* argv[]){

  //Argumentos a enviar
  char *const argv2[] = {"p2","abcdef","ghijk",NULL};

  //Muestra el nombre del programa (argv[0]) e identificador
  printf("%s : %i \n",argv[0],getpid());

  //ejecuta a p2
  execv("./p2",argv2);

  printf("ERROR\n");

  return -1;
}
