
###
Extract a list of property values.
###
pluck = (list, key) ->
  map list, (value) ->
    value[key]

map = require("./map")
module.exports = pluck