#include <iostream>
#include <cmath>
using std::cout;
using std::cin;
using std::endl;

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