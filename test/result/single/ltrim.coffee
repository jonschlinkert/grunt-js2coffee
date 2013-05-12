
###
Remove chars from beginning of string.
###
ltrim = (str, chars) ->
  str = toString(str)
  chars = chars or WHITE_SPACES
  start = 0
  len = str.length
  charLen = chars.length
  found = true
  i = undefined
  c = undefined
  while found and start < len
    found = false
    i = -1
    c = str.charAt(start)
    while ++i < charLen
      if c is chars[i]
        found = true
        start++
        break
  (if (start >= len) then "" else str.substr(start, len))
toString = require("../lang/toString")
WHITE_SPACES = require("./WHITE_SPACES")
module.exports = ltrim