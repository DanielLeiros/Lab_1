#include <iostream>
#include "area.h"
#include "perimetro.h"
#include "volume.h"

using std::cout;
using std::cin;
using std::endl;

int main(){

	int x,y,z;
	do{
	cout << "Calculadora de Geometria Plana e Espacial" << endl;
	cout << "(1) Triangulo Equilátero" << endl;
	cout << "(2) Retangulo " << endl;
	cout << "(3) Quadrado" << endl;
	cout << "(4) Circulo" << endl;
	cout << "(5) Piramide com base quadrangular" << endl;
	cout << "(6) Cubo" << endl;
	cout << "(7) Paralelepipedo" << endl;
	cout << "(8) Esfera " << endl;
	cout << "(0) Sair " << endl;
	cout << "Digite a sua opcao: ";
	
		cin >> x;
		switch(x){

			case 1:

				cout << "Digite o tamanho da base do triangulo: "  ;
				cin >> x;
				cout << "Digite o altura do triangulo: ";
				cin >> y;
				cout << "A area do triangulo eh: " << aTriEq(x,y) << endl;
				cout<< "O perimetro do triangulo eh: " << pTriEq(x) << endl;
				break;
			case 2: 
				cout << "Digite o tamanho da base do retangulo: " ;
				cin >> x;
				cout << "Digite o altura do retangulo: ";
				cin >> y;
				cout << "A area do retangulo eh: " << aRetangulo(x,y) << endl;
				cout<< "O perimetro do retangulo eh: " << pRetangulo(x,y) << endl;
				break;
			case 3:
				cout << "Digite o tamanho do lado do quadrado: " ;
				cin >> x;
				cout << "A area do quadrado eh: " << aQuadrado(x) << endl;
				cout<< "O perimetro do quadrado eh: " << pQuadrado(x) << endl;
				break;
			case 4:
				cout << "Digite o tamanho do raio do circulo: " ;
				cin >> x;
				cout << "A area do circulo eh: " << aCirculo(x) << endl;
				cout<< "O perimetro do circulo eh: " << pCirculo(x) <<endl ;
				break;
			case 5:
				cout << "Digite a area da base da piramide: " ;
				cin >> x;
				cout << "Digite a area de um dos triangulos laterais:";
				cin >> z;
				cout << "Digite o altura da piramide: ";
				cin >> y;
				cout << "A area da piramide eh: " << aPiramide(x,z) << endl;
				cout<< "O volume da piramide eh: " << vPiramide(x,y) << endl;
				break;
			case 6:
				cout << "Digite a area da base do cubo " ;
				cin >> x;
				cout << "A area do cubo eh: " << aCubo(x) << endl;
				cout<< "O volume do cubo eh: " << vCubo(x) << endl;
				break;
			case 7:
				cout << "Digite a area da base do paralelepipedo: " ;
				cin >> x;
				cout << "Digite a area de uma das laterais do paralelepipedo: ";
				cin >> y;
				cout << "A area do Paralelepipedo eh: " << aParalelepipedo(x,y) << endl;
				cout<< "O volume do paralelepipedo eh: " << vParalelepipedo(x,y) << endl;
				break;
			case 8:
				cout << "Digite o tamanho do raio da esfera: " ;
				cin >> x;
				cout << "A area da esfera eh: " << aEsfera(x) << endl;
				cout<< "O volume da esfera eh: " << vEsfera(x) << endl;
				break;
			case 0:
				cout << "Muiro obrigado e ate logo!" << endl;
				return 0;
		
		}
	cout << "----------------------------------------------------------" << endl;
	}while(x >= 0 && x < 9);
return 0;

}