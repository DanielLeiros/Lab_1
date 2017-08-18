#include <iostream>
#include <cmath>
using std::cout;
using std::cin;
using std::endl;
/**
@file arquivo com operações de funcionalidades da questão 1 
@author Daniel Maciel de Leiros Ferreira
@since 10/08/2017
@date 17/08/2017
*/

/**
@brief todas as seguintes funcoes servem para calcular a área dos tipos desejados
@param x,y e z como dimensoes
@return O retorno das funções é a área calculada para cada tipo, levando em consideração a fórmula matemática
*/
float aTriEq(int x, int y){
	float area;

	area = (x*y)/2;
return area;

}
int aRetangulo( int x, int y){
	int area;

	area = x*y;
return area;
}

int aQuadrado(int x){
	int area;

	area = x*x;
return area;
}

float aCirculo(int x){
	float area;

	area = (3.14)*pow(x,2);
return area;
}

int aPiramide(int x, int z){
	int area;

	area = x+(4*z);
return area;
}

int aCubo(int x){
	int area;

	area = 6*x;
return area;
}

int aParalelepipedo(int x, int y){
	int area;

	area = (4*x) + (2*y);
return area;
}

float aEsfera(int x){
	float area;

	area = 4*(3.14)*pow(x,2);
return area;
}