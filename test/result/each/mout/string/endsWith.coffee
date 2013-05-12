
###
Checks if string ends with specified suffix.
###
endsWith = (str, suffix) ->
  str = toString(str)
  suffix = toString(suffix)
  str.indexOf(suffix, str.length - suffix.length) isnt -1
toString = require("../lang/toString")
module.exports = endsWith