
###
Insert item into array if not already present.
###
insert = (arr, rest_items) ->
  diff = difference(toArray(arguments).slice(1), arr)
  Array::push.apply arr, diff  if diff.length
  arr.length
difference = require("./difference")
toArray = require("../lang/toArray")
module.exports = insert