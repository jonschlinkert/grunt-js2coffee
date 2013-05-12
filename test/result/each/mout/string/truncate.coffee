
###
Limit number of chars.
###
truncate = (str, maxChars, append, onlyFullWords) ->
  str = toString(str)
  append = append or "..."
  maxChars = (if onlyFullWords then maxChars + 1 else maxChars)
  str = trim(str)
  return str  if str.length <= maxChars
  str = str.substr(0, maxChars - append.length)
  
  #crop at last space or remove trailing whitespace
  str = (if onlyFullWords then str.substr(0, str.lastIndexOf(" ")) else trim(str))
  str + append
toString = require("../lang/toString")
trim = require("./trim")
module.exports = truncate