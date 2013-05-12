
###
Truncate string at full words.
###
crop = (str, maxChars, append) ->
  str = toString(str)
  truncate str, maxChars, append, true
toString = require("../lang/toString")
truncate = require("./truncate")
module.exports = crop