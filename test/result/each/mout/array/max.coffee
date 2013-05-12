
###
Return maximum value inside array
###
max = (arr, iterator, thisObj) ->
  if not arr? or not arr.length
    Infinity
  else if arr.length and not iterator
    Math.max.apply Math, arr
  else
    iterator = makeIterator(iterator, thisObj)
    result = undefined
    compare = -Infinity
    value = undefined
    temp = undefined
    i = -1
    len = arr.length
    while ++i < len
      value = arr[i]
      temp = iterator(value, i, arr)
      if temp > compare
        compare = temp
        result = value
    result
forEach = require("./forEach")
makeIterator = require("../function/makeIterator_")
module.exports = max