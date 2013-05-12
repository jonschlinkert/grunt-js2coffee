
###
Convert line-breaks from DOS/MAC to a single standard (UNIX by default)
###
normalizeLineBreaks = (str, lineEnd) ->
  str = toString(str)
  lineEnd = lineEnd or "\n"
  # DOS
  # Mac
  str.replace(/\r\n/g, lineEnd).replace(/\r/g, lineEnd).replace /\n/g, lineEnd # Unix
toString = require("../lang/toString")
module.exports = normalizeLineBreaks