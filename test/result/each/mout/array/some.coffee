
###
Array some
###
some = (arr, callback, thisObj) ->
  callback = makeIterator(callback, thisObj)
  result = false
  return result  unless arr?
  i = -1
  len = arr.length
  while ++i < len
    
    # we iterate over sparse items since there is no way to make it
    # work properly on IE 7-8. see #64
    if callback(arr[i], i, arr)
      result = true
      break
  result
makeIterator = require("../function/makeIterator_")
module.exports = some