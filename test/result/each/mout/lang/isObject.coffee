
###
###
isObject = (val) ->
  isKind val, "Object"
isKind = require("./isKind")
module.exports = isObject