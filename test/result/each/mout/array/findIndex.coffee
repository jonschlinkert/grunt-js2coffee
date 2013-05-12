
###
Returns the index of the first item that matches criteria
###
findIndex = (arr, iterator, thisObj) ->
  iterator = makeIterator(iterator, thisObj)
  return -1  unless arr?
  i = -1
  len = arr.length
  return i  if iterator(arr[i], i, arr)  while ++i < len
  -1
makeIterator = require("../function/makeIterator_")
module.exports = findIndex