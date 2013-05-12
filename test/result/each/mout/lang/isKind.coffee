
###
Check if value is from a specific "kind".
###
isKind = (val, kind) ->
  kindOf(val) is kind
kindOf = require("./kindOf")
module.exports = isKind