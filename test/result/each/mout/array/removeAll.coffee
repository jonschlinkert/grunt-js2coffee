
###
Remove all instances of an item from array.
###
removeAll = (arr, item) ->
  idx = indexOf(arr, item)
  while idx isnt -1
    arr.splice idx, 1
    idx = indexOf(arr, item, idx)
indexOf = require("./indexOf")
module.exports = removeAll