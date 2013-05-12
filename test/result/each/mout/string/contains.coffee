
###
Searches for a given substring
###
contains = (str, substring, fromIndex) ->
  str = toString(str)
  substring = toString(substring)
  str.indexOf(substring, fromIndex) isnt -1
toString = require("../lang/toString")
module.exports = contains