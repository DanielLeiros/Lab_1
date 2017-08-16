#include <iostream>
#include "fatorial.h"
#include "primo.h"
int main(){
	int y,x;
	do{
	std::cout << "Digite o número desejado(maior que 3): ";
	std::cin >>x;
	if(x == 0 || x == 1 || x == 2){
		std::cout << "O menor número primo é 2, tente novamente" << std::endl;
	}
	}while(x < 3);
	y = fatorial(x);
	std::cout << "O maior primo menor que o fatorial de " << x<<"(" << y << ") é: " <<  primo(y-1) << std::endl;
return 0;
}