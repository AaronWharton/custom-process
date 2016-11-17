//LinkCpp.cpp
//This is a demo for function calls between C++ program and external assembly block.
//Its function is making logarithmic shift operation to realize the effect of * 2.

#include <iostream>
#include <iomanip>

using namespace std;

extern "C" {
	//external assembly process
	void	SendMessage();

	//C++ program
	int		displayMessage();
	void	displayResult(int value);
}

int main()
{
	SendMessage();			//call it when the program begins
	system("pause");
	return 0;
}

int displayMessage()
{
	int n;
	cout << "Please enter an integer:";
	cin >> n;
	return n;
}

void displayResult(int value)
{
	cout << value << endl;
}