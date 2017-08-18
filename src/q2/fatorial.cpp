#include <iostream>
/**
@file arquivo com operações da função fatorial, operando para a questao 2
@author Daniel Maciel de Leiros Ferreira
@since 10/08/2017
@date 17/08/2017
*/

/**
@brief A função fatorial serve para calcular o fatorial(de forma recursiva) do número passado pelo usuário
@param x que é o valor passado pelo usuário
@return retorna o cálculo do fatorial do número passado como parâmetro e que será aplicado na função primo
*/
int fatorial(int x){

	if(x == 0)
		return 1;
	return x*fatorial(x-1);
}