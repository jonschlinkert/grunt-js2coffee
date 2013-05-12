
###
###
isDate = (val) ->
  isKind val, "Date"
isKind = require("./isKind")
module.exports = isDate