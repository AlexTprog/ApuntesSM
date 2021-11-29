#include <stdio.h>
#include <unistd.h>

int main(int argc ,char* argv[]){

	// nombre e identificador
	printf("%s : %i \n",argv[0],getpid());

	//imprimer arg enviados
	
	for (int i = 0; i < argc; i++) {
		printf("argumento %d, %s \n",i,argv[i]);
	}
	return 0;
}
