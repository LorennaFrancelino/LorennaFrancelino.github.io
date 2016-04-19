#include "stdio.h"

module testeC{
	
	uses interface Boot;
}

implementation{
	uint8_t count=0;

	// prototypes
	task void tarefa1();
	task void tarefa2();

	// Tarefa 1 - imprime e posta a tarefa2
	task void tarefa1(){
		count++;
		printf("%4d\n",count);
		post tarefa2();
	}


	//Tarefa 2 - espera e posta a tarefa1
	task void tarefa2(){
		sleep(1);
		post tarefa1();
	}

	// Inicio de tudo, posta a tarefa1
	event void Boot.booted(){
		printf("Start:\n");
		post tarefa1();
	}
}
