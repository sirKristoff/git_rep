#ifndef POWER_H
#define POWER_H

int pow( int x, int n )
{
	int ret= 1;
	while( n-- )
		ret *= x;
	
	return (ret);
}

#endif // POWER_H
