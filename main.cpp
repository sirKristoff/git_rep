#include <iostream>

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
	cout << "Hello World!" << endl;
	cout << "Silnia: 6! = " << silnia(6) << endl;
	return 0;
}

int silnia( int i )
{
	if( i==0 )
		return 1;
	else
		return i*silnia(i-1);
}
