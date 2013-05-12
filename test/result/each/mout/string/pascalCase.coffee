
###
camelCase + UPPERCASE first char
###
pascalCase = (str) ->
  str = toString(str)
  camelCase(str).replace /^[a-z]/, upperCase
toString = require("../lang/toString")
camelCase = require("./camelCase")
upperCase = require("./upperCase")
module.exports = pascalCase