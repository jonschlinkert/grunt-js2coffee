
###
Remove white-spaces from beginning and end of string.
###
trim = (str, chars) ->
  str = toString(str)
  chars = chars or WHITE_SPACES
  ltrim rtrim(str, chars), chars
toString = require("../lang/toString")
WHITE_SPACES = require("./WHITE_SPACES")
ltrim = require("./ltrim")
rtrim = require("./rtrim")
module.exports = trim