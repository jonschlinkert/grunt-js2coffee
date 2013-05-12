
###
Pad string with `char` if its' length is smaller than `minLen`
###
rpad = (str, minLen, ch) ->
  str = toString(str)
  ch = ch or " "
  (if (str.length < minLen) then str + repeat(ch, minLen - str.length) else str)
toString = require("../lang/toString")
repeat = require("./repeat")
module.exports = rpad