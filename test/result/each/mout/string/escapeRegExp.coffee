
###
Escape RegExp string chars.
###
escapeRegExp = (str) ->
  str = toString(str)
  str.replace ESCAPE_CHARS, "\\$&"
toString = require("../lang/toString")
ESCAPE_CHARS = /[\\.+*?\^$\[\](){}\/'#]/g
module.exports = escapeRegExp