
###
###
isFunction = (val) ->
  isKind val, "Function"
isKind = require("./isKind")
module.exports = isFunction