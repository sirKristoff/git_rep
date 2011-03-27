#include <iostream>

#include "power.h"

using namespace std;

	/**
	 *	@brief	Silnia
	 */
int silnia( int i );

	/**
	 *	@brief	Main function
	 */
int main()
{
	cout << "Autor: Kristoff" << endl;
	cout << "Hello World!" << "\tv1.1" << endl;
	cout << "Silnia: 6! = " << silnia(6) << endl;
	cout << "Potęga: 3^4 = " << pow(3,4) << endl;
	
	return 0;
}

int silnia( int i )
{
	if( i==0 )
		return 1;
	else
		return i*silnia(i-1);
}
