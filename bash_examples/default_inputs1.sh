#!/usr/bin/env bash
#
# This is a series of examples of how to ask for user input
# and if no input is given supply a default value.
#

# In these example the question is asked "What is your
# favorite color [ red ] ?" The default response is "red".
# The website below has a great section on default values.
# http://wiki.bash-hackers.org/syntax/pe#use_a_default_value

# Example 1
echo -en "What is your favorite color [ Red ]? "
read mycolor
# Here -z returns true if the variable myname is an empty
# string.
if [ -z "$mycolor" ]; then
  mycolor="Red"
fi
echo "Your favorite color is : $mycolor"

# Example 2
echo -en "Try this again, what is your favorite color [ Red ]? "
read mycolor
# Using curly brackets provides for parameter expansion.
# ":-" tests to see if the parameter, "myname", is unset or
# or null, if so then the value "Red" is used. If you want
# to test to see if the parameter is only unset then use "-". 
echo "Your favorite color is : ${mycolor:-Red}"

# Example 3
echo -en "Lets try this one more time, what is your favorite color [ Red ]? "
read mycolor2
# If you want to test to see if the parameter is only unset then use "-". 
echo "Your favorite color is : ${mycolor2-Red}"

# Example 4
echo -en "Sorry one more time, what is your favorite color [ Red ]? "
read mycolor3
# If you want to assign the default value to a null or unset variable. 
echo "The value in "mycolor3" is $mycolor3"
echo "Your favorite color is : ${mycolor3:=Red}"
echo "The value in "mycolor3" is now : $mycolor3"
