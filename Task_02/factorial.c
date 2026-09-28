/***************************************************************
Purpose: a Bash script that executes a compiled C program with given arguments and compares
its output against expected results.

By: Esmeralda Flores Medrano

Modified: 09/27/2026
***************************************************************/

/*******************ASSIGNMENT*******************
   1. Write a C program that accepts input from the command line and produces an output. 
      For example, you may use a factorial program that computes the factorial of a number.
   2. Compile the Program and produce an executable named factorial
      gcc factorial.c -o factorial
************************************************/

/*******************PSEUDO-CODE*****************
1. Create header files
2. Create int main
	2a. accepts argc/argv
3. Can only be exactly 1 argument. If user did provide 1 arguement proceed. 
	3a. If not print and exit with an error
	3b. Use an if statement
4. Convert arguments (string) into an int
	4a. use atoi - takes a string and returns equivalent int
5. Initalize result to 1
	5a. use long - to aoid an overflow
	5b. declare a (long) variable 
	5c. initalize variable to 1 (1 b/c we dont want to change the numbers we input
	    when multiplying)
6. Create a for loop 
	6a. counter variable i starts at 1
	6b. loop continues when i<=n
	6c. multiply current result by i and save it into our result
	6d. increment i by 1 each time it gets passed
7. Print
8. return 0
***********************************************/

// Step 1 
#include <stdio.h>	// This is needed for printf
#include <stdlib.h>	// This is needed for atoi

// Step 2
int main(int argc, char *argv[])
{

	// Step 3
	if (argc != 2){
	printf("Error: you must provide exactly one number.\n");
	return 1;
	}
	
	// Step 4
	int x = atoi(argv[1]);

	// Step 5
	long result = 1;

	// Step 6
	for (int i = 1; i <= x; i++){
	       result *= i;
	}	 

	// Step 7
	printf("%ld\n", result);	

	// Step 8
	return 0;
}
