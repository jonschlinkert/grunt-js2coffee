
###
###
isString = (val) ->
  isKind val, "String"
isKind = require("./isKind")
module.exports = isString