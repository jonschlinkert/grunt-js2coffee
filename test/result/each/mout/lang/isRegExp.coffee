
###
###
isRegExp = (val) ->
  isKind val, "RegExp"
isKind = require("./isKind")
module.exports = isRegExp