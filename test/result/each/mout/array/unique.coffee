
###
@return {array} Array of unique items
###
unique = (arr) ->
  filter arr, isUnique
isUnique = (item, i, arr) ->
  indexOf(arr, item, i + 1) is -1
indexOf = require("./indexOf")
filter = require("./filter")
module.exports = unique