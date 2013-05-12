
###
Pad string with `char` if its' length is smaller than `minLen`
###
lpad = (str, minLen, ch) ->
  str = toString(str)
  ch = ch or " "
  (if (str.length < minLen) then repeat(ch, minLen - str.length) + str else str)
toString = require("../lang/toString")
repeat = require("./repeat")
module.exports = lpad