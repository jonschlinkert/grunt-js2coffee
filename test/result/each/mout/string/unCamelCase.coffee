
###
Add space between camelCase text.
###
unCamelCase = (str) ->
  str = toString(str)
  str = str.replace(/([a-z\xE0-\xFF])([A-Z\xC0\xDF])/g, "$1 $2")
  str = str.toLowerCase() #add space between camelCase text
  str
toString = require("../lang/toString")
module.exports = unCamelCase