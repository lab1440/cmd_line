#!/usr/bin/env bash
#
# Example One of how to parse parameters given to a script.
# This script is highly commented for notational and
# learning purposes.
#

# Prints the name of the script. $0 is the variable that
# contains the name of the program. Note that if the script
# is executed using "./parse_inputs_parameters1" then that
# is what will be printed. If a longer path name is used,
# "./bin/myscripts/parse_inputs_parameters1", then that is
# what the value of the variable $0 will be. 
echo "The name of this called program is $0"

# The number of arguments passed to the script is
# stored in the variable $#.
echo "The number of parameters passed is: $#"

# All passed parameter are stored in the variable $@.
echo "All the parameters passed are: $@"

# Here is an example of parsing through input parameters
# using the "shift" command.
counter=1
while [ "$#" -gt "0" ]
do
  echo "Input parameter $counter is $1."
  counter=$((counter+1))
  # The "shift" command is used shift the positional
  # parameter by the given input value and then the
  # variable "$#" is updated to reflect the change in the
  # total number of positional parameters. In this case
  # the number of shift positions is one. Caution needs
  # to be taken with the "shift" command. Different
  # versions of *sh may not through an error if the shift
  # is greater than the total number of positional
  # parameters.
  shift 1
  echo "Number of parameters remaining: $#"
done
