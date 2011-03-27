#include <iostream>

#include "power.h"
#include "sum.h"

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
	cout << "Hello World!" << "\tv1.0" << endl;
	cout << "Silnia: 6! = " << silnia(6) << endl;
	cout << "Potęga: 3^4 = " << pow(3,4) << endl;
	cout << "Suma: 3+4+...+6 = " << sum(3,6) << endl;
	
	return 0;
}

int silnia( int i )
{
	if( i==0 )
		return 1;
	else
		return i*silnia(i-1);
}
