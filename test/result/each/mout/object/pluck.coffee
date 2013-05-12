
###
Extract a list of property values.
###
pluck = (obj, propName) ->
  map obj, prop(propName)
map = require("./map")
prop = require("../function/prop")
module.exports = pluck