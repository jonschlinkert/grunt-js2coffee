
###
If array contains values.
###
contains = (arr, val) ->
  indexOf(arr, val) isnt -1
indexOf = require("./indexOf")
module.exports = contains