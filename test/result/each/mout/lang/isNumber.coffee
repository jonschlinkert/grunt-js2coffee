
###
###
isNumber = (val) ->
  isKind val, "Number"
isKind = require("./isKind")
module.exports = isNumber