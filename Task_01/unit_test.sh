# Purpose: a Bash script that executes a compiled C program with given arguments and compares
# its output against expected results.

# By: Esmeralda Flores Medrano

# Modified: 09/27/2026
###############################################################


####################ASSIGNMENT###################
# Write a Bash script that:
#	3a. Accepts three inputs:
#          1a. The program name (for example, “. /factorial”)
#          1b. The program arguments (as a single string, for example, “5”)
#          1c. The expected output (as a single string, for example, “5”)
# - This script accepts exactly three command-lf they match, otherwise prints FAIL along with expected and actual outputs
#################################################


###################PSEUDO-CODE###################
# 1. Check that 3 arguments were given
#	1a. use an if then fi
#	1b. display an error message
#	1c. exit with an error

# 2. Check program exists and is exectuable
# 	2a. use an if then fi
#	2b. display an error message
#	2c. exit with an erro

# 3. Run program with given argument and capture output
#	3a. Use command substitution
#	3b. run program with its argument
#	3c. store output in variable

# 4. Compare actual output to expected output
#	4a. use an if then else fi
#	4b. compare actual to expected using =

# 5. Print PASS or FAIL
#	5a. if they match - PASS
#	5b. if theyre different - FAIL, then expected output and the actual value 
#################################################

#!/bin/bash

# Step 1
if [ "$#" -ne 3 ]; then
	# Display the correct way to run the script
	echo "Usage: $0 <program> <argument> <expected_output>"
	
	# End the script with an error status
	exit 1
fi

# Step 2
program="$1"
argument="$2"
expected="$3"

if [ ! -x "$program" ]; then
	# Display an error message if the program cannot be executed.
	echo "Error: $program does not exist or is not executable."

	# End script with an error status
	exit 1
fi

# Step 3
variable=$(command)

# Run the program with the argument and store output into actual
actual=$( "$program" "$argument" )

# Step 4 AND 5
if [ "$actual" = "$expected" ]; then
	# print PASS
	echo "PASS"

else 
	# print FAIL
	echo "FAIL"
	echo "Expected: $expected"
	echo "Got: $actual"
fi

# END
