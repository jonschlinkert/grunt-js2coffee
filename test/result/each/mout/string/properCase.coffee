
###
UPPERCASE first char of each word.
###
properCase = (str) ->
  str = toString(str)
  lowerCase(str).replace /^\w|\s\w/g, upperCase
toString = require("../lang/toString")
lowerCase = require("./lowerCase")
upperCase = require("./upperCase")
module.exports = properCase