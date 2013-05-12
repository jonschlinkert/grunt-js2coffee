
###
Remove non-printable ASCII chars
###
removeNonASCII = (str) ->
  str = toString(str)
  
  # Matches non-printable ASCII chars -
  # http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
  str.replace /[^\x20-\x7E]/g, ""
toString = require("../lang/toString")
module.exports = removeNonASCII