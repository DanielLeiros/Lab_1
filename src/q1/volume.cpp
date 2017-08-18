#include <cmath>

/**
@file arquivo com operações de funcionalidades da questão 1 
@author Daniel Maciel de Leiros Ferreira
@since 10/08/2017
@date 17/08/2017
*/

/**
@brief todas as seguintes funcoes servem para calcular o volume dos tipos desejados
@param x,y e z como dimensoes
@return O retorno das funções é o volume calculado para cada tipo, levando em consideração a fórmula matemática
*/

int vPiramide(int x, int y){
	int volume;

	volume = (x*y)/3;
return volume;
}

int vCubo(int x){
	int volume;

	volume = x*x;
return volume;
}

int vParalelepipedo(int x, int y){
	int volume;

	volume = x*y;
return volume;
}

float vEsfera(int x){
	float volume;

	volume = (4*(3.14)*pow(x,3))/3;
return volume;
}