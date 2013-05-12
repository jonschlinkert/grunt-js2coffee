
###
Unescape unicode char sequences
###
unescapeUnicode = (str) ->
  str = toString(str)
  str.replace /\\u[0-9a-f]{4}/g, (ch) ->
    code = parseInt(ch.slice(2), 16)
    String.fromCharCode code

toString = require("../lang/toString")
module.exports = unescapeUnicode