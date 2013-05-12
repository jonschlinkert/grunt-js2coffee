
###
"Safer" String.toUpperCase()
###
upperCase = (str) ->
  str = toString(str)
  str.toUpperCase()
toString = require("../lang/toString")
module.exports = upperCase