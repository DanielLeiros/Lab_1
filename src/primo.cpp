#include <iostream>

int primo(int x){

	for(int i= 2 ; i <= x/2; i++){
		if(x%i == 0)
			return primo(x-1);
	}
	return x;
}