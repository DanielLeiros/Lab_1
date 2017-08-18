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
@brief todas as seguintes funcoes servem para calcular o perímetro dos tipos desejados
@param x,y e z como dimensoes
@return O retorno das funções é o perímetro calculado para cada tipo, levando em consideração sua fórmula matemática
*/

int pTriEq(int x){
	int perimetro;

	perimetro = 3*x;
return perimetro;

}

int pRetangulo( int x, int y){
	int perimetro;

	perimetro = (2*x)+ (2*y);
return perimetro;
}

int pQuadrado(int x){
	int perimetro;

	perimetro = 4*x;
return perimetro;
}

float pCirculo(int x){
	float perimetro;

	perimetro = (3.14)*2*x;
return perimetro;
}

