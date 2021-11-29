#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main(void){
  pid_t child = fork();
  if(child == 0){
    // hijo
    printf("Soy el hijo (%d,hijo de %d)\n",getpid(),getpid());
  }
  else{
    // padre
    printf("Soy el padre (%d, hijo de %d)\n", getpid(),getpid());
  }

  return 0;

}
