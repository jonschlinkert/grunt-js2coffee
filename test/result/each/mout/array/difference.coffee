
###
Return a new Array with elements that aren't present in the other Arrays.
###
difference = (arr) ->
  arrs = Array::slice.call(arguments, 1)
  result = filter(unique(arr), (needle) ->
    not some(arrs, (haystack) ->
      contains haystack, needle
    )
  )
  result
unique = require("./unique")
filter = require("./filter")
some = require("./some")
contains = require("./contains")
module.exports = difference