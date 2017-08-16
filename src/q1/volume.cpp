#include <cmath>

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