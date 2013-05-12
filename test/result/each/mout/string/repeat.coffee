
###
Repeat string n times
###
repeat = (str, n) ->
  str = toString(str)
  (new Array(n + 1)).join str
toString = require("../lang/toString")
module.exports = repeat