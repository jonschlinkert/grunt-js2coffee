
###
"Safer" String.toLowerCase()
###
lowerCase = (str) ->
  str = toString(str)
  str.toLowerCase()
toString = require("../lang/toString")
module.exports = lowerCase