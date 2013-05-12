
###
UPPERCASE first char of each sentence and lowercase other chars.
###
sentenceCase = (str) ->
  str = toString(str)
  
  # Replace first char of each sentence (new line or after '.\s+') to
  # UPPERCASE
  lowerCase(str).replace /(^\w)|\.\s+(\w)/g, upperCase
toString = require("../lang/toString")
lowerCase = require("./lowerCase")
upperCase = require("./upperCase")
module.exports = sentenceCase