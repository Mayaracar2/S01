
#include<iostream>
using namespace std;

double F(double c)
{
	return ((c * 1.8) + 32);
}

double K(double c)
{
	return (c + 273);
}

int main()
{
	
	double celsius;
	int op;
	
	cout << " Digite:"<< endl;
    cout << " 1 para converter para Fahrenheit" << endl;
	cout << " 2 para converter para Kelvin" << endl;
    cout << " 3 para sair" << endl;
    
	do{		
		cin >> op;
		
		switch(op){
			
			case 1:
				cout << "Digite o valor em celsius: ";
				cin >> celsius;
				cout << "Temperatura em Fahrenheit: "<< F(celsius)<< endl;
				break;
  		    case 2:
  		    	cout << "Digite o valor em celsius: ";
  		    	cin >> celsius;
  		    	cout << "Temperatura em Kelvin: " << K(celsius)<< endl;
  		    	break;
	    	default:
	    		break;
		}
		
	}while(op != 3);
	
	return 0 ;
}
