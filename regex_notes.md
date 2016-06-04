# Regex Notes

Websites
--------
[regexone.com](http://regexone.com/)

Single Character Matching
-------------------------
* The period "`.`" is the the wildcard operator.
* To use the period in a search pattern, the period must be escaped "`\.`".
* The wildcard operator for a single character is "`?`".
* Use square brackets to include a set of characters to match a single character.
  For example `[far]` will match to the characters "`f`", "`a`", "`r`".
* To exclude a character or a set of characters use "`^`". For example "`[^dag]`"
  will include all characters except, "`d`", "`a`", and "`g`".
* To match to a set of characters that fall within a range use the range notations.
  For example `[e-i]` with match to any of the charaters `e`, `f`, `g`, `h`, and `i`.
  The exclusion notation also works with the range notation, `[^e-i]`.
* To match any white space character (tabs, cr, newlines, space) use `\s` and to
  match any non-whitespace use `\S`.
* To match an digit character use `\d` and to match any non-digit character use `\D`.
* To match an alphanumeric character use `\w` and to match any non-alphanumeric
  character use `\W`.
* To make a character optional follow the character with `?`.
  
Multiple Character Matching
---------------------------
* To match multiple of given character use `{}`. For example `a{3}` will match `aaa`,
  and `a{2,4}` will match `aa`, `aaa`, and `aaaa`.
* To match one or more of a character use `+`. For example `a+` will match `a`, `aa`, `aaa`, etc.
* To match zero or more of a character use `*`.

Conditionals
------------
* The symbol `|` is the "or" conditional.
* The symbol `&` is the "and" conditional.