
###
filter collection values, returns array.
###
filter = (list, iterator, thisObj) ->
  iterator = makeIterator(iterator, thisObj)
  results = []
  return results  unless list
  forEach list, (value, index, list) ->
    results[results.length] = value  if iterator(value, index, list)

  results
forEach = require("./forEach")
makeIterator = require("../function/makeIterator_")
module.exports = filter