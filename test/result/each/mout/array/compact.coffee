
###
Remove all null/undefined items from array.
###
compact = (arr) ->
  filter arr, (val) ->
    val?

filter = require("./filter")
module.exports = compact