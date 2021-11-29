#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main(void){
  pid_t a,b,c,d,e;
  int s1,s2;

  if((a = fork()) == 0){
    // hijo
    printf("Soy el primer hijo (%d,hijo de %d)\n",getpid(),getppid());
  }
  else{
    if ((b = fork())==0) {
      printf("Soy el segundo hijo (%d,hijo de %d)\n",getpid(),getppid());
    } else {
      //Esperamos al primer hijo
      waitpid(a, &s1, 0);
      //Esperamos al segundo hijo
      waitpid(b, &s2, 0);
      // padre
      printf("Soy el padre (%d, hijo de %d)\n", getpid(),getppid());
    }

  }

  return 0;

}
