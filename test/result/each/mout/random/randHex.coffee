
###
Returns a random hexadecimal string
###
randHex = (size) ->
  size = (if size and size > 0 then size else 6)
  str = ""
  str += choice(_chars)  while size--
  str
choice = require("./choice")
_chars = "0123456789abcdef".split("")
module.exports = randHex