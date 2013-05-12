
###
Check if object has nested property.
###
has = (obj, prop) ->
  get(obj, prop) isnt UNDEF
get = require("./get")
UNDEF = undefined
module.exports = has