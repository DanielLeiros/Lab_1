#include <iostream>
/**
@file arquivo com operações da função recursiva primo
@author Daniel Maciel de Leiros Ferreira
@since 10/08/2017
@date 17/08/2017
*/

/**
@brief A função tem como objetivo encontrar o maior número primo anterior ao parametro passado
@param x como limite para o começo da função e y como contador
@return Um inteiro primo imediatamente menor que o parâmetro
*/
int primo(int x){

	for(int i= 2 ; i <= x/2; i++){
		if(x%i == 0)
			return primo(x-1);
	}
	return x;
}