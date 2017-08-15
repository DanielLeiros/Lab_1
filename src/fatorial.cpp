#include <iostream>

int fatorial(int x){

	if(x == 0)
		return 1;
	return x*fatorial(x-1);
}