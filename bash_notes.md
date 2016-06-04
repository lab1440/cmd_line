#Bash Notes

Useful Websites
---------------
* [http://ryanstutorials.net/bash-scripting-tutorial/](ryanstutorials.net/bash-scripting-tutorial) 
* [http://www.bash.academy/](www.bash.academy) 
* [http://http://wiki.bash-hackers.org](http://wiki.bash-hackers.org)

File Descriptors
----------------
* Standard input, stdin = 0
* Standard output, stdout = 1
* Standard error, stderr = 2

Tilde `~`
--------
* Tilde is used as an abbreviation to the home directory.
* Tilde followed by a user name will go to the home directory of that user. For example the
  following path, `~rob/docs`, is to the docs directory in the user `rob` home directory.
* Tilde followed by a backslash is short for the current users home directory. For example
  `~/rob/docs`, is the path to the directory docs which in turn is located in the directory
  "rob" which in turn is a directory located in the current users home directory.

Wildcards
---------
* The symbol `?` can replace any single character.
* The symbol `*` can replace any string of characters.
* Specific sets of characters can be designated to replace a single character by the use of
  `[list of characters]`.
* To specify a set that includes every character accept the list of characters use `!`,
  `[!list of characters]`.

Useful Variables
----------------
* $0 - name of script
* $# - number of passed arguments
* $@ - all the arguments passed to script
* $* - 
* $? - exit status of the latest process
* $$ - process ID of current script
* $! - PID of last run background process

Useful Variables for Profiling/Debugging
----------------------------------------
* $LINENO - current line number in script execution
* $SECONDS - number of seconds since script was started

Variables and Variable assignment
---------------------------------
* Variables are assigned as `var_name=value`
* There can be no spaces around the equals sign
* Curly braces can be added around variable expansions to define exactly what the variable is, `${var_name}`.

Quotes
------
* When in doubt use quotes around arguments.
* Single Quote(' ') - everything is quotes is treated literally
* Double Quote(" ") - allows for variable insertion
* Command Subsitution - use $(*command*) to take the output as a command and treat it as a variable

Aliases
-------
* Only work in an interactive session
* Usually superceded by functions

Redirection
-----------
* The operator ">" redirects a programs standard output.
* Prefixing ">" with a number redirects the output associated with that number. For example "2>" will redirect a programs std error.
* The symbol "&" is for file descriptor copying. Postfixing ">" with "&" followed by the file descriptor will redirect the stream to
  the file descriptor. For example "2>&1" will redirect standard error to standard output.
* The short hand for redirecting both standard output and standard error to the same file stream is "&>".
* The redirection operator ">" empties a files contents before writing, ">>" appends to a files exisiting contents.

The program test
----------------
* The open brack `[` is another name for 'test'.
* Because `[` is a program it needs to have a space before and following it to distiguish where arguments start arguments. 

While Loops
-----------
* The colon (:) always evaluates to true.

Executing External Programs
---------------------------
* To execute a command an have its standard output directed to a variable use backticks.
  For example ``VAR=`hostname` ``, will take the output of the command `hostname` and place it in the variable
  `VAR`. 
