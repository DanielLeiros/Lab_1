#include <iostream>
#include <cstdlib>
#include "fatorial.h"
#include "primo.h"
/**
@file Questão 2 do Lab_1 de Lp1
@author Daniel Maciel de Leiros Ferreira
@since 10/08/2017
@date 17/08/2017
*/

/**
@brief a função main pega um valor para direcioná-lo para as funções seguintes e os seus respectivos cálculos
*/
int main(int argc, char *argv[]){
	int y,x;
	if(argv[1] == NULL){
		std::cout << "Por favor, passe o argumento junto com a chamada do executável, tente novamente" << std::endl;	
		return 0;
	}
	x = std::atoi(argv[1]);	
	if(x < 3){
		std::cout << "O menor primo que satisfaz este programa é o número 5, por favor, tente novamente" << std::endl;	
		return 0;	
	}	
    if(x > 16){
        std::cout << "O argumento passado é muito grande, por favor tente menor que 17, tente novamente" << std::endl;	
        return 0;    
    }
	y = fatorial(x);
	std::cout << "O maior primo menor que o fatorial de " << x<<"(" << y << ") é: " <<  primo(y-1) << std::endl;
return 0;
}
