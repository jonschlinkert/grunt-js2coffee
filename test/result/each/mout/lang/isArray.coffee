isKind = require("./isKind")

###
###
isArray = Array.isArray or (val) ->
  isKind val, "Array"

module.exports = isArray