
###
Convert string to camelCase text.
###
camelCase = (str) ->
  str = toString(str)
  str = replaceAccents(str)
  #convert all hyphens to spaces
  #convert first char of each word to UPPERCASE
  #remove spaces
  str = removeNonWord(str).replace(/\-/g, " ").replace(/\s[a-z]/g, upperCase).replace(/\s+/g, "").replace(/^[A-Z]/g, lowerCase) #convert first char to lowercase
  str
toString = require("../lang/toString")
replaceAccents = require("./replaceAccents")
removeNonWord = require("./removeNonWord")
upperCase = require("./upperCase")
lowerCase = require("./lowerCase")
module.exports = camelCase