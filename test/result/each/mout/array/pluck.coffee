
###
Extract a list of property values.
###
pluck = (arr, propName) ->
  map arr, propName
map = require("./map")
module.exports = pluck