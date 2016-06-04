#grep notes

Websites
--------
* [danielmiessler.com/study/grep/](https://danielmiessler.com/study/grep/)

Key Options
-----------
* -V version info of grep
* -v gets every line that does not contain the search pattern
* -n prints the line number of the match
* -r does a recursive search from the given directory
* -i ignores case

Wildcard Characters
-------------------
* `.` is the wild card for a single character. It will not return true if there is not character.
  For example `b.g` will be true for `bag` but not `bg`.
