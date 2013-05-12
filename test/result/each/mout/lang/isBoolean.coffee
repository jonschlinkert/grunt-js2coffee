
###
###
isBoolean = (val) ->
  isKind val, "Boolean"
isKind = require("./isKind")
module.exports = isBoolean