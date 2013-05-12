
###
Exclusive OR. Returns items that are present in a single array.
- like ptyhon's `symmetric_difference`
###
xor = (arr1, arr2) ->
  arr1 = unique(arr1)
  arr2 = unique(arr2)
  a1 = filter(arr1, (item) ->
    not contains(arr2, item)
  )
  a2 = filter(arr2, (item) ->
    not contains(arr1, item)
  )
  a1.concat a2
unique = require("./unique")
filter = require("./filter")
contains = require("./contains")
module.exports = xor